Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35140306B21
	for <ddprobe@lists.linux.dev>; Tue, 14 Oct 2025 02:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760409594; cv=none; b=cauC6SuWYjFc52x0ZWrCswrFcXjRHbvSAJKoDiA4+v1tUA+NOre3Ha21gjoKoG/MBWtBr43t2WgykkJLe3EFcM5NZLMnxBs+5fA86JlX/eDb42sxGzD04dT9heGYozMvr/wWko1DEN8/pjrbeZdYSp0QQcLG7guLYeNnJgYVUgk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760409594; c=relaxed/simple;
	bh=7ZgCT44O8G8eVXLEvKYaBKzy0OcHQsFpddbHYLXpiRA=;
	h=To:Subject:From:Message-Id:Date; b=PU/wc2wbuKCu3CHozQMCiz5TjWcPgPtYYptpASrjAMt3RElLWYnLw3HJ02WRwgsSp1UIfBbLRxs//IwR6unqJfOf8E9VLDYfAyxMp+Z7TMIIsoMfQ+q5JHq0TscXcn/HR/Eg+HTPDEtOVu6FBpsvAxbIkg1qC2Z0bJtAyymc1WE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ia/PJITy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ia/PJITy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A17DAC4CEE7
	for <ddprobe@lists.linux.dev>; Tue, 14 Oct 2025 02:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760409593;
	bh=7ZgCT44O8G8eVXLEvKYaBKzy0OcHQsFpddbHYLXpiRA=;
	h=To:Subject:From:Date:From;
	b=Ia/PJITy0O7QX0yZJLpHSxx81BzCSn0Z4dvJy8pEuVP0q/WH1U4p1Ku+opR3EnN6V
	 ho8Rdp3tFB/VJNg6uV4VJQgHcOUts6GH2SHXAOsRCmCUoVsgaB8nh6KobLhWTW3SGv
	 XDW74gPHLcn1hEARY+6SdVk6Cxat/gLIJS/OtimBeYhevhW86UtCEKuyHzO+7x13LZ
	 PN4OV2a0coQglp9atBDepX6F4efCShkm+/2TplvvdQJih2W69VGAiWUVSWShRuUySl
	 03jLF6LpV3xqdD3WApcmarHvPndEddoOgLKktuESXKGwEvp7NWuKtn6Al95RrEGZRQ
	 c791L08hgx7+w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F467CCD183
	for <ddprobe@lists.linux.dev>; Tue, 14 Oct 2025 02:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176040959357.10252.13611000410711891011.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b84bbdb29fa1d7c1b1821e02ad13ba10804c5c1a8ce1195cb2cbc9455a359051
Date: Tue, 14 Oct 2025 02:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760409593
