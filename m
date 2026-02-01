Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 226142E5D17
	for <ddprobe@lists.linux.dev>; Sun,  1 Feb 2026 10:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769940834; cv=none; b=ULjcOCncAmft38RkksO5mDvI2HeaOATufwWlJgnRB7GTbRxJVBYQyotleTb/H3s38EjQhdvKX0/8p9Ocmo3LUEXMSSgUUvMMf7mf6mXjfBVHCpe/dQhTQaVHojjH7KfUV79xbUWJEqN8vn33PFR29YSifBE5uL0FF10b/n3AjbM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769940834; c=relaxed/simple;
	bh=MkX++vT3f3BpD3PiHNWVRIc5tqqMNAa09xYB9ozFoPI=;
	h=To:Subject:From:Message-Id:Date; b=NYle+O+VyZMEajSZGAg8HJp5gBh91bFzWASAjvDNRSOOVqBzQrI2Vl5UaL1lNEL4lmRhhV35sqPg9m7n8POgjqg5aslHNxffO/BsxagSk8xTfHO7NjaLh3eoNJMLdhTN/skGYpKtO+jPwXGPvG4IfNfH5ZqL8e4SFTcbUbUuHhw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=R7Ji/XPW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="R7Ji/XPW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A54FBC4CEF7
	for <ddprobe@lists.linux.dev>; Sun,  1 Feb 2026 10:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769940833;
	bh=MkX++vT3f3BpD3PiHNWVRIc5tqqMNAa09xYB9ozFoPI=;
	h=To:Subject:From:Date:From;
	b=R7Ji/XPWDNI7Kuhj95RZtxACSDUADjIfWF7BJsNGeyGUoUYn9z6UezzF6JqKZaFo1
	 9DgDE+TPCNjHmajBKZdEbItNBmMuUht+3r1Xbv4iODeyPwLeJGMro89emauOFLUPyD
	 +hJByD2QwY4Da9m6pRQAcDbzguw1PeLUGPpi1anahtcpsK7kG82e92RwtSOStz0Vyw
	 pkYlAIMApP5P0YJqCThLDE7WiPS1JoKb6qrI10xdEdkt+wH+xdfUK/dRRq4A8UOQxo
	 NvjF6i4wTaRquwbpIfjp2ii2oBFm1FO5X8XZT6ZjOjrTJ3YO/Xbwfl0GcF8Tgvuc2h
	 o/l+9dqVdH2rw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91591E7C70D
	for <ddprobe@lists.linux.dev>; Sun,  1 Feb 2026 10:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176994083357.16809.16191143447062923160.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4819687d6cea06dd9ca1248fc652e4f42c308f2e53a671aea544f4f6e03e6db6
Date: Sun, 01 Feb 2026 10:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769940833
