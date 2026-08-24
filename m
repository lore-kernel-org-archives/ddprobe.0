Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A11E413782
	for <ddprobe@lists.linux.dev>; Mon, 24 Aug 2026 12:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787573434; cv=none; b=lIbClHF/8bTI9587z9uCl1aQFX3ZYWhBYm8W9K33ffgBm+A8aNdZInQrk7s+IvFkw1e7CAHfLZjWHrbH9mRVvH1xA3wMdiBGLDxfU1XYSF+HUGzbrJvVOMtPQ+nc0lyOBaYJc8qgYlzlGW7tevK17XYPYQT+AFVGs1L2tfcVj34=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787573434; c=relaxed/simple;
	bh=BkfUdaZeZS6CwOlsi23gtdN3avJ7FTRG5lLB6T6F46I=;
	h=To:Subject:From:Message-Id:Date; b=tB9oNAKylo0Km0sMk92COjDijP5QGo43wem1wFP3nHfA2J9A3jzAs4Ikcp7bC/Tz9TMROiW+KrURrSXQLCeh0lhTyjHt7hAZ7dZFwe86o6qMhas274S4EPZyzg+E2IaHCYqYlZa32v69EaQX/SSkFqT+TCqKE87bTryVFolG8O4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KpMwm7XJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KpMwm7XJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD3EEC2BCF4
	for <ddprobe@lists.linux.dev>; Mon, 24 Aug 2026 12:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787573433;
	bh=BkfUdaZeZS6CwOlsi23gtdN3avJ7FTRG5lLB6T6F46I=;
	h=To:Subject:From:Date:From;
	b=KpMwm7XJ+feu8By7w2W+JX4bfDMV6apHZFkIpW/IaFhgvaK11oYyeKeJduXYrnIcT
	 neFPp5/Y1Rey42ykIF5rtFpZLwZAzxLE89OhofMY/JGfpMeztDKhgxILWDkLr9M2qT
	 W5QhTgobMoJBOogVvGQsPe6eZeoqdGsiwfv5P5W4sVvLhvKvDHiYStOHIZgRaCcne+
	 CAr9d5mubBSnAd/6XZgF9C/Da2pm9jyToSZi1EgwTbbIJqWyW6O3hFSp4Xc+6o43UX
	 CGzHv2lDl8wKcKD7fiyltkpMR+hYPNTany5x9hlSqh204kc+beJxZgA6FOCXCJUfq/
	 WU1b+anoOc/cg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACE26C5DF9B
	for <ddprobe@lists.linux.dev>; Mon, 24 Aug 2026 12:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178757343369.5439.79300271736218446.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 09b8d83170bbf77fbf58d0cb29396e8dd4ef440808d629a50ac36ddd12e5396d
Date: Mon, 24 Aug 2026 12:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787573433
