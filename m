Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30852EAF9
	for <ddprobe@lists.linux.dev>; Sun,  1 Jun 2025 04:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748752194; cv=none; b=XVPAjNncq4cfoLkf8AjyTl5V5kDEoA4I4EBT+6DcOpF+lPxVOG/69+OIkQSiV0swPpRN4pV6EYhQMHn62wKNGo792+A7q++F1GmYpWwuvE8vHOqg8Douc7U5zHCjy2sOGbka/Iwh1ox9dHm32wa6OTLUomsmgTv0DiwMWHnulhw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748752194; c=relaxed/simple;
	bh=Kmyoy+mH1p2CvE40pG24sAceH1CVx98Tzt3+NeyoEOQ=;
	h=To:Subject:From:Message-Id:Date; b=INXtk9WGMwIYKa5lIv5EGfIsFgFV+b4L4d4hgKRX0StW3FyHi5naNT4/f0OMV6uRHzEInLFvnoG9wmGA4OzOkgrPiFLbWF8HVPOqLHPt5BGU4zk8OVa3RBD/e/R3ZoN6NqoG2iJUcgi+Zj5ecx3BFJOOsF+9/hK891gjiQCxWT0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=p8hLafiR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="p8hLafiR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5339C4CEED
	for <ddprobe@lists.linux.dev>; Sun,  1 Jun 2025 04:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748752193;
	bh=Kmyoy+mH1p2CvE40pG24sAceH1CVx98Tzt3+NeyoEOQ=;
	h=To:Subject:From:Date:From;
	b=p8hLafiR/gO0McMJO4w8Fmx5GBxJ/7i4yLBAk303HHrX8x8UtEoNMgo0LdrryXjoq
	 hRZgqkvpzajtvHhDtOfLOioGOL4xQYf6XDVysSIUlYzN1ymIp6cAW14aoNt9CmrYlG
	 AYxVzuqqv4+6dXQ4GbGw4b49V+wlYYQNKYnehvXsTXUS6GHUbYVMyzbK8VAsf7rMlt
	 Nzpm90qf1V4GTecNykgMoLtZJ44I71OI2hYYZCI0qOzNmxEej1E/4pYbfW1D7VFWeI
	 s2FJ4U49ANGhuH9/nAfGqFfQw1X7lHaPHFCCVNwsUOz9DZStd45GqbFvgpIFQkEpha
	 D82Yb9/hmUv2A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91455C54FB3
	for <ddprobe@lists.linux.dev>; Sun,  1 Jun 2025 04:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174875219358.31679.12879023270303190208.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f068371a0b6473038f80e8ae7a93b381d719f89b08e8cb4bf088b405ee12f686
Date: Sun, 01 Jun 2025 04:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748752193
