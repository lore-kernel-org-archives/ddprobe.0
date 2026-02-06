Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D3D126CE1A
	for <ddprobe@lists.linux.dev>; Fri,  6 Feb 2026 04:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770350634; cv=none; b=q82avA6p+gQomRL+woHiuz4txjJPdrklJqmJeagbNwn0q3aVf/8YgKfjjC9yZS/ozOLtsiIITUyc2riuVtldQiQsdSLMdbnI8ihmkWzhtbxFWEkb0AMHCK18UB2SSZexG9IXFvCmDLo/BWZzv+EC6kfxV0ogWCvlG7i/1HQG8w0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770350634; c=relaxed/simple;
	bh=6XR/9XyTLxVBgzvcL6MdWMwNnDiVfxLd8116kWXTXos=;
	h=To:Subject:From:Message-Id:Date; b=c5ZhyHBlD1Y61gafB8uidNZjxgwErw6CdBN3HrcKv4c+OdmfKNTnzckk/J0rGhyU9/L8CHtecxt5ofa8riXfzIJEbqMuRD/VmiyGiK5FtQviCBResQuTaLWsDkXLJRB2Cz/cc2Hja10J744rFu1JNVpy4Cp5vM9XkcjCAjhEdVk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=axWG/W1t; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="axWG/W1t"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA64BC19422
	for <ddprobe@lists.linux.dev>; Fri,  6 Feb 2026 04:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770350633;
	bh=6XR/9XyTLxVBgzvcL6MdWMwNnDiVfxLd8116kWXTXos=;
	h=To:Subject:From:Date:From;
	b=axWG/W1t6teNxKOJL7dWJ5xIj+BdcvV3nOfXJp2hcMYVGwEwd101+hgTbLyja5pCF
	 Mld8LQidTCjBC3CcT7KNDjUUg33SEtiQ01+9UKzHI/cIF0yyxfINfISAA/58fVDMzv
	 t5O6V/HJqYhjmIyIxnUVq3edIhaBXVScZlAPo6WkdsfHVoOBNKri94VExM+4Ei+OaX
	 pHikIerPtzqmn+qE6ZkkUv76SLSju9yM3iyc+TbE6/n829Tgv9DCN2kCQHmOYgb3fX
	 xQY7Hi9NnmpUjcAhkU59XwOuep0ij68vST53Q1ACa2Nc+onaagFD3HIx5mY/Vps/3J
	 jcJC9NHJ25qgQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A6AD4E9129D
	for <ddprobe@lists.linux.dev>; Fri,  6 Feb 2026 04:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177035063365.30289.9258636844944830767.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ca55b37b62121de6bd0448fc9b67898d06b1b67512059613d534f24c288f84e4
Date: Fri, 06 Feb 2026 04:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770350633
