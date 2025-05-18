Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4598136D
	for <ddprobe@lists.linux.dev>; Sun, 18 May 2025 16:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747586394; cv=none; b=PHcH6uj9CzXwdh7kLc6lrNx5vMOVyUJl5P2YRJVlOFpP9smGwXTS0pXVG4ysa+vGxe4pN8BAWumptfVE5kaP6nasxPVkczMApi5gi6ACCa0u7O36qptHc0ihZVrWDUKqEreg13b4Nk+VpsTObHfGjF55Mz3LnzLqDyz0Uo7LMbo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747586394; c=relaxed/simple;
	bh=rDaXvKTktreZDNXEMgLkDRH0uNllxx9gwRUy0JvNKks=;
	h=To:Subject:From:Message-Id:Date; b=g3HQh6oxRC5ZGTBqNIGzSujzXm8U5rEGMz1WyC3Gby6X0xBBMmYZdN2yiPuJFo7Qjz3Qa6S5jWRgooLLCj0ZPy03luAQvyDtUHys4/anHtjPoTohdVh8io9lNB/EEwoVfB2SEoECgNgK/lzkA7BSCH8N/HJgX55vj+gfU061WD8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iASdyQGC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iASdyQGC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD141C4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 18 May 2025 16:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747586393;
	bh=rDaXvKTktreZDNXEMgLkDRH0uNllxx9gwRUy0JvNKks=;
	h=To:Subject:From:Date:From;
	b=iASdyQGCuQiQdChMo/DGIgVpzfLjyfho9FiTKgEzLvy8L29U5ksJeN4k1pO7jfMVf
	 9RgZfJfERUZxLO0UR9zID/F83KFt7Jixctg/oBOpRQa0hM37X6OwmP1Jsyo9JzXCv3
	 Azn6895AbnfhKkYRWM8dmTsOwO5e4sMHm7pVA0trbKTEbMpX054GuwUllmSPI3cpNk
	 YMpX6X6Vjk24EKH77t0xdb0igI/BlNRSqD9zTOqeUGxSy4iYtM+iIgqA4uAeSDeBgs
	 PeXUI7RKYrdAuFk0VWJARGv3XZIqkof3v0RaRdEcopww2UCukxHEjy6yXiLLpkCX/w
	 yxriDazp61bKA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96A3DC3ABC9
	for <ddprobe@lists.linux.dev>; Sun, 18 May 2025 16:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174758639359.3037.15484426386955291144.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bf634bf76d3e521b689e40c677067bf0b3621da7b963a011b4dede55ce5bb7cc
Date: Sun, 18 May 2025 16:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747586393
