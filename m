Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23A4921FF4C
	for <ddprobe@lists.linux.dev>; Wed, 24 Sep 2025 05:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758692995; cv=none; b=BfqEnTeSJWUcElvklx8N19EK2CtRpZt5tGTDthYyr3U+gztys0XTLpa1hzKL5WcZv61f9YJCxmO/oHE8ald6j4JcRjurvTiYBbFlakBrCUR1YqA1/PmAa06L9q5mV5vdBFFoSf/touBtTAyw87ZndKgcDQAxmo+vpz4RadDUi8M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758692995; c=relaxed/simple;
	bh=KQsgOVRo8EpPb42dtN7s+BMnvMyljLARy09Z7tzLWRs=;
	h=To:Subject:From:Message-Id:Date; b=cV/ozhR0VgLv5vIatAHvIfa+5BgLaOoWKEH7SPtgmwLaObd8ZXieJm2rW8tVO9URETz8kiUf5/PsZKMYmC2VTRE4jOE7XMTmbY8296uvB24eImIvIVEFrDugZjajGkKDjDvh8XaQIxEibJzCHGWJdEvKlSQUv36G+T4u2xptdFI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jjDMLqsA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jjDMLqsA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA237C4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 24 Sep 2025 05:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758692993;
	bh=KQsgOVRo8EpPb42dtN7s+BMnvMyljLARy09Z7tzLWRs=;
	h=To:Subject:From:Date:From;
	b=jjDMLqsA3FoGu7XwlgnULsywKGBXWCJbeR+R4rhpTuZDcH+pw9/jf9PbrGe+mephI
	 cldod2Pxvij4OPi6z5/drBVHtoLok94DXjBRBi5fAPJOOSIHRrb3CwMt6aMNk0Xv5a
	 yRXS8vSmkvh4FsV77vVF+QWluH7GVPbEOF9nTPAvzbp8bWGh8K+1zOaWn2kBPIDm87
	 em2DQJmD6LvQB3Hpuif/TMhGCzxQBtUYKXsu4P5zUbx0CmAxO6b1rnXTM2+4ZfUZi/
	 JDUV63/2IFm5n7IC6yvaQELs15XE8H5g9RVjhS9Fg5oP34lRHvUN934zQJnwN9DAPt
	 q2aUhNrHuGqAw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9433CCAC5A5
	for <ddprobe@lists.linux.dev>; Wed, 24 Sep 2025 05:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175869299358.2096.17103143079584043852.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 98cd9ac02564d5d774e97a9f1697c15c27200af2b5dd496336830a965b8908e0
Date: Wed, 24 Sep 2025 05:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758692993
