Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1266529ACF0
	for <ddprobe@lists.linux.dev>; Wed, 31 Dec 2025 17:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767200634; cv=none; b=XYlESGlEDrJ7eMMjfq5APdSG9CR4t449xRIcoZTpPrp+Tz7gKokvK63UGWbQiNWtMeCnTD44jo1N0VgiXli94p+h6V2j7WhYfMK/2aivSENEg/VDeWSpboBlBaJ3xuLIs6d9dRoIopzQMuGFDPIGQSmBUqAZGGsIj24PwttB8Mo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767200634; c=relaxed/simple;
	bh=31Zkz+Y530AmCBNiIIM5QXStxcTkGkMy2Yl4SBNJr60=;
	h=To:Subject:From:Message-Id:Date; b=pDDGDCfM9MeQfCd0Rey+l9AK3R/a+Fz7JorihQFycqd6WGnIY0icmWasp5bS3ZHCd3reo+nwRdEgxvDgrU16D4uaR99V0R50/t3uBNctjV2Vp2sI07v1YMucSIFtsDxwOA8UKLjzedhFft1k9m4gk25gBrf7IPRVWY5pfhKOdyM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PuTpE+I8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PuTpE+I8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E617C116B1
	for <ddprobe@lists.linux.dev>; Wed, 31 Dec 2025 17:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767200633;
	bh=31Zkz+Y530AmCBNiIIM5QXStxcTkGkMy2Yl4SBNJr60=;
	h=To:Subject:From:Date:From;
	b=PuTpE+I8cffVnVORi33h2iGDH+/E6fmKCtX4MBEK9l5blSg2BbFJ+5HHNNDSUM/Mg
	 GapF5ot2CShCByKafJMmsL96xh0nzkBAnVKfy0N8Jl5UKJW9D+ZG37mFqvUUfni544
	 T013KK1tmzRNf5cA5dTf7dGnvvEfA+3L/58jezPw5ZL92HWCuAJmPWrrnKqgJh1hYT
	 OLG0BGI92dLMbFFCOMs3bD8gN7NoHwXjnnJH4tIjM2ZJksCoJAkq4hc/qAJ/nwMeSc
	 jtWs2wfeJdphg/y2NhA/OLEHYG72LmsC5Uc/9Uprn+1hzRRlESoU9OeYqs4NGSEKrS
	 17AUSLFoQ/fyA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9068CEEB565
	for <ddprobe@lists.linux.dev>; Wed, 31 Dec 2025 17:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176720063358.21507.8734221968789785531.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1c219d06789edcc9608f67d8ef9dfa38c661d1c886957a8d786a408e40e0a7bb
Date: Wed, 31 Dec 2025 17:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767200633
