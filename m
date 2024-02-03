Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DC925625
	for <ddprobe@lists.linux.dev>; Sat,  3 Feb 2024 00:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706920096; cv=none; b=VFBS6pPHl+6gYns18/XVakkmDCEUAyYvlxiSqB3dU3iMCT58hzQsgfGOGP0L0p2tKwd2E7KlKKC5JwE26cLRF1l/gf+EfyVdvt16K/hwoe3qt9rFt44qNttDEcKtE2r+0UzGBJiiZ6F0kiyEW9Nw+66+dvZyxPdRfv3fG2OPM/A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706920096; c=relaxed/simple;
	bh=Y1muGzWJjSzGzDmqMeeGF++T4eqrlCYoUU+M8EhLAOY=;
	h=To:Subject:From:Message-Id:Date; b=HKxwaFTNiZe0y1KlBf8cwcbKyAGg8HT03PZUivN6EPGUCNXypOwxF8DvkVBDBK7MCp2TMCHwDr6dykitfe1Pb+MwGxJi1QkoVm6/Bp1bOgYwmJV7Nk5swxjhh7F5oiM1ND9m5lZMFgaCi3rytFsLGc/G4ufOHT5QlUka37eSues=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tHChD3nS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tHChD3nS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7170CC433F1
	for <ddprobe@lists.linux.dev>; Sat,  3 Feb 2024 00:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1706920096;
	bh=Y1muGzWJjSzGzDmqMeeGF++T4eqrlCYoUU+M8EhLAOY=;
	h=To:Subject:From:Date:From;
	b=tHChD3nSFklqF6Sitajj9m6We6HBO/E4NvHuvV3p8rJdEdisNjejH7Ry4zRZ0727n
	 WJlZjrTU5uiKXEnQ1fAEpZYnyDiDW/VWe+UKb+Lfs544AXgfru9fWY1uSsY0BBDyzx
	 wozWejasZngB+lJRyg2Wjq0ypqJZqHe+0qmt3O1UrqKSXK1kymhVTvIAHti2tlDz3y
	 aMGiIVlIVYaaRAS0G9qLgy20z5pBeX/2cmGQgd8H9+iI8mCOD4zYkE2LoyP/+A2T47
	 u3MMOW2M1K65ea5ygKsA3iFNmngQErYgxlWWXfPYNk1/dr20cbOGg5jCmhrb3BcbIM
	 Wy8LaWraDgrYg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5F1CCC4828F
	for <ddprobe@lists.linux.dev>; Sat,  3 Feb 2024 00:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170692009637.18906.11546040214328572131.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1833c5cbacd26c03ad45d721bfe439a834f989a481877ec5284ebf19c0958669
Date: Sat, 03 Feb 2024 00:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1706920096
