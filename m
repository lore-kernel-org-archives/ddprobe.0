Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E37F2D5957
	for <ddprobe@lists.linux.dev>; Thu,  8 Jan 2026 05:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767849834; cv=none; b=ekeYzIaENuYeQW2H27Ez+35DbNxSIZNrgon1BtzfwEx0MLQYapdGvaOGWCVGF0z+p/ZbDZcXWMqX02OzCEiz+JZBvDwfbeBEVEk3KERIWjBIfTSQyHOa9si/wqTGA8wnCtgsSXfK977m4zOX06F/s0ZyhTFtx5uG0nyhzruOfGY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767849834; c=relaxed/simple;
	bh=Q7sy/OPGsLMlYvO4TjP/B2XFi2x237rW2LIOtZLP1JA=;
	h=To:Subject:From:Message-Id:Date; b=nHX1vDyI/KFRa5aiEMDqLaTimPA+lhkyOK7qfVJEHxdH1XX876vvhcA3W4stEClSBG2jvL0r+sMqQ/eJxQWQgDDBVSVI+i5JQvDPbCp+LE6RGkI37Joo36cXPkggSibYoG+npcByHnK1jQ8B0I2q4YQpzrA5Eev91NXUgCqYPG4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nxDqlcEi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nxDqlcEi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FB7CC116C6
	for <ddprobe@lists.linux.dev>; Thu,  8 Jan 2026 05:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767849833;
	bh=Q7sy/OPGsLMlYvO4TjP/B2XFi2x237rW2LIOtZLP1JA=;
	h=To:Subject:From:Date:From;
	b=nxDqlcEizxY5s6oQLI7B6acDr8PCpvWK9N/oj/Lxxej+ZZYRgzArRoT8uOncTJrKq
	 leSQVP0vhHytSx0YiZzqaTCRXWubfAe8/M0TiPZST/SUwyE53pcI0uybstMc3tMgL1
	 QAS3OKkOvS9gHJLYu6yNCc0wRMciS6pxeWpTwis8qjvYOTg6AzAXYm789dPReCQtNZ
	 II8wsqVrDgeOHMwhv3LYpx+bT3TwyAjjdOfNb4Pt6vrKoLfniXX/muuS8SfLHaOwrE
	 aMpcX6HxeJY04sXCoEfVUs76PbICn86lfAgo+4/FYFXlJC89cAs1KH/2wWzCwhSJ9A
	 R5PZB0iKSeDgA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F176D1489D
	for <ddprobe@lists.linux.dev>; Thu,  8 Jan 2026 05:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176784983357.4551.11138813418030327169.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d0cdf0721ecdda1c9df9bfc4a6d927af49ad03410eaaa5f961c3042ebad68a17
Date: Thu, 08 Jan 2026 05:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767849833
