Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E2E2D2773DD
	for <ddprobe@lists.linux.dev>; Fri,  5 Sep 2025 19:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757100594; cv=none; b=dAbicEuHKgLwjYuzno7H0Jlb1iw+L4/t707dwXp+OcbaiGlYxfWhMP3NwvlgTJ4z/QCFg99fwTJFyJ2qw+RJgZq6STcO3MXkQp1EX5fy6tsj6lUkfch/Xg85AoRexJx0qmBgmaVGMWKfnIJ9zM8sQZn7ewyYjEopzCphuyGJoHE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757100594; c=relaxed/simple;
	bh=ZasCYaXfeVXgi3iXxsEuInRCFUft1IyhXbas1LXfdZc=;
	h=To:Subject:From:Message-Id:Date; b=YWrcPtrNTGqM93XyQNLiDawKmDjL36Va6xAFBZV28FZprGAHxdKR3WkBfLHwKRoKUd6PFCSSRXXHAqPYfLaxGLRQiISTiH2iw5KXIKOroj3wfxvGiexxZkK2fsoPx0RCvB58IAOmO6DY6ivADHHbNHqv0G24mJS+1r+goCoZhQk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nOK+8A78; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nOK+8A78"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B353BC4CEF7
	for <ddprobe@lists.linux.dev>; Fri,  5 Sep 2025 19:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757100593;
	bh=ZasCYaXfeVXgi3iXxsEuInRCFUft1IyhXbas1LXfdZc=;
	h=To:Subject:From:Date:From;
	b=nOK+8A78nwIf7prSPy844t/h6utJ19+g6M7cAHAEktW4BUhbTI1GuUTZk0rl8fUIW
	 JFQyQtRkWwpzvPlpaN9moLlCpvUKKM5Ojp0vK0UfW7WwoFS+BZGB1HpLf+SbkurIWW
	 tCR+QXAQw2mviNfvCPu1395vtk41y4eQgJdZ14u4swXFSul4DAW91G7ZqLxZewNiTu
	 mv5KlCwpYxfhtgJJ9ebd8A87P69V37NbyVLE0xyT61CIZSK31lQo+2Vbc1z5NaTqew
	 7XuvavZLLVjU/RUoDS5CHBlkUH0QVU8XXrIjO5A4AwQK3wuMeJQkhBz1MGFzBBowMX
	 Rhbn0vCTpC3gg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E550CA1017
	for <ddprobe@lists.linux.dev>; Fri,  5 Sep 2025 19:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175710059363.22595.749912915024864151.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4a7149a942b6a6732913180c269975f7f9e0610fe712f5ab85a2670eb63aee51
Date: Fri, 05 Sep 2025 19:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757100593
