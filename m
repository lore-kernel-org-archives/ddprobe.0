Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BBCCC4BA1DF
	for <ddprobe@lists.linux.dev>; Fri,  2 Oct 2026 17:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790962834; cv=none; b=LC0u/1l97KpQ/inElSgM2n+/euUgbVNK6atWWCSEIJEWjBbtIBO763nv5WFyFBNhYtPeBNopzE7So/ND13c99iXTZG6Oj8el8qadBnveO1AbBLZq33EYjM7DiwuH75eSwRujmFWbGrBeKLUz9aQF5yK8iotU6FPKHkcDrKeL4hA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790962834; c=relaxed/simple;
	bh=KmGsq91Hx8cLcbv/3/SyTpIXF9kOQNDdmecgHg4Gtpc=;
	h=To:Subject:From:Message-Id:Date; b=kLOp4WJQSotlglxOX3GdgM+QHuc/jpSNFRJWmxXFDRbBglk/qJOqDe7u/5KeGTMO33RgXQT3ubhoerzpLaAcZfFYv8aJNHo4NTmlAmKvGiQ7ETbb0ribUoQ9y5lv6jJX8E0uTl93TGQ3foNV7NZaJKUcE7VATw5Y9fPfA3oY65M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HkOK4fpM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HkOK4fpM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E0A53C2BCF4
	for <ddprobe@lists.linux.dev>; Fri,  2 Oct 2026 17:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790962833;
	bh=KmGsq91Hx8cLcbv/3/SyTpIXF9kOQNDdmecgHg4Gtpc=;
	h=To:Subject:From:Date:From;
	b=HkOK4fpM3XTSnTeYjoCL1xvlem/j9Ombmy4xqRw+CC7rd/k63IuBhilJkfjt6NQ5G
	 J1cS1fK7qznNAH5PvKRoWbM4x1U6eTxP/7wXSjhfDE5v7ClSKb/vgRRbKBQbp4dY6m
	 Oppw5pisit73HLBQZoNBbkE9eVoF1LGL7FrtJ3LhwBGAPEQp/J7VGGVS4bfI53hQEJ
	 RRw4VyeAhPOkHhTrrfUcGHMPOZyK5IkTAXA/5M62LbKhLBRJS6osqw4qJL46j1zN2a
	 w77ercbPN+8QeBXdMkUiLz6jjyGLr89PdkFO1BJA6Dro2kB7O/WKVx6l7VDsJmr/ZO
	 /xOmskiVG8cuA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BBBDBCA5FE0
	for <ddprobe@lists.linux.dev>; Fri,  2 Oct 2026 17:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179096283375.9120.11114521033785843746.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6b5e00a8e6418125d7f8a0ac0c733d97dfdf1ea7d3c451266fdf67840370acab
Date: Fri, 02 Oct 2026 17:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790962833
