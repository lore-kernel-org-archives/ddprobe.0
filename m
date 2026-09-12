Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A55B367B65
	for <ddprobe@lists.linux.dev>; Sat, 12 Sep 2026 19:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789242034; cv=none; b=lckc3PVHHjTcUvdRNcjYXKPu6oxn4gH10G+HVfMbVJASMojh3n9MpYhwJYULnRGqR8JCo0Eh5YaqpFb2Keu0Ryu2SDnF01ZrsOH/xC/Fj14CeDvjNNE7UjsVjODkoIiz+31yikDG/m6YaPqzmaTE0w2Xsj+dxuCaByCxQbSAjZ8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789242034; c=relaxed/simple;
	bh=Dl/g/XzyojTkoLqFlqfapdYbp49UU4NjKs/5YWKE8tU=;
	h=To:Subject:From:Message-Id:Date; b=QNDMHFJsGGgjkO461YaHJkxVdavbprB6kFXw4tf+8qPY1QvZ3I/vEGJkMHv7v6w7dNi6MmCF1Q2au9HYii3f9wma3m82qVhE5JYer9ov2oM/NlYgMd3eFrw4tB8Ufw5nSN8P54dYvIOy1lcLNCFp4oDJFX+3sbgBdOp5pQrNRVA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eFLKOIuo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eFLKOIuo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC2BEC2BCB9
	for <ddprobe@lists.linux.dev>; Sat, 12 Sep 2026 19:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789242033;
	bh=Dl/g/XzyojTkoLqFlqfapdYbp49UU4NjKs/5YWKE8tU=;
	h=To:Subject:From:Date:From;
	b=eFLKOIuoUBR+eBHfcWxphMjjGg1qmIjGFuIzaHOcjF3DhlRz7EvOWdmVsuBVbUa8o
	 ke2CkhEBXxCLM/V/ssPnk7XpcrSDdl/OILPeLkElnRXLFKsulUzU39++YgfGuSlC/K
	 lcfzc/8+iJRylK5vvnKR0XzfwozNvhzVuOMaphmVmyDaXFhO/c75XeyHHRdTtPWX2S
	 rQV3Q5YKqIu7GNBEavNluGVK1q6HwEgG3EdDLnjeQXN6oWxLXi6h7xhmxja5J7kH1S
	 kXYYVmLXG90XWyiWSVYheFQGzIAmub6AxhuO76m0I25P0jBu9aoLsGtxNvv7c4/U+Y
	 U2VNMy4/5neLg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A900AC88E56
	for <ddprobe@lists.linux.dev>; Sat, 12 Sep 2026 19:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178924203368.11772.13905244607999261989.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c0ef094650b9e6f701df04fee74d65e467ec7dd6d8442e5e41b26f23d5ebc888
Date: Sat, 12 Sep 2026 19:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789242033
