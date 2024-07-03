Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6A838623
	for <ddprobe@lists.linux.dev>; Wed,  3 Jul 2024 00:05:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719965123; cv=none; b=jXRbjaOOQdE6JzgaRmQrZ8jB/b/eRcyufNf6HmRKFtKO91lrsmYRSoN2cow6DZ46m7ztqvFJyuWowzuXB1xAYxjiLLPG0QSfxNDBLINDTuJQWtPHKPsvAcyYHlxKYX7dNqKYevqMGbU4YJdF6ALcPFDJqTks76CeNf6itBUp4HM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719965123; c=relaxed/simple;
	bh=/wqxy+VJD2J5VHwE/9+GrhRrtWrJor8iwjDUMaDpokQ=;
	h=To:Subject:From:Message-Id:Date; b=W6f/r3iiXRkPBdTztL3DxcAWcLP+E0qZ+uBkjWm4xA9tbx1cWlIKQQpaBAUu8vadvS0p1FfRZFDZRClqeoEEF815Ct7R/wPcc+yhyclLpKloApMwH2Ra1laJnHCCYHBXL7JWJFEYW42EK5hzLDt7iHbtKI9oDj3xZ90WRpmwRb4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LqxJVSKi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LqxJVSKi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA838C116B1
	for <ddprobe@lists.linux.dev>; Wed,  3 Jul 2024 00:05:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719965122;
	bh=/wqxy+VJD2J5VHwE/9+GrhRrtWrJor8iwjDUMaDpokQ=;
	h=To:Subject:From:Date:From;
	b=LqxJVSKim4Qdkmi3/rPANwhQhKmyLAOiMqr4PMijVhhXjNi9S7x4luK7dLPVGm0xy
	 p54IbFKQEltB8Lflrk7zN32TWgCc1O8zt12yTUFs8rjVLxdn0Ospsc9L0JhhdMd/Ur
	 3+DrqW34dIUY70iejgM6m7zKZV/JXbdY54Mj3WYVKTYt3nIcv6bAA7LAWe1kOo7wXz
	 jof0/DIhLDeolhEJN0VLzgoo1rNcBJg9XOtdyE7//7tRywWfbXZ+SF/3XFnm5hDFZJ
	 YsrCmbQto7nfnRFSwxrRQMhXlNCHpbz/btv4wrB822llekD/1UxwIiq02xuP6CLpnT
	 pzo3yJ6AkL04w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C4D8FC30658
	for <ddprobe@lists.linux.dev>; Wed,  3 Jul 2024 00:05:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171996512279.445.10980514787375977290.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 31699027cab8aeb00cc984dae54279e6621eb6709b3b3b77103c1dbfee2694d4
Date: Wed, 03 Jul 2024 00:05:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719965122
