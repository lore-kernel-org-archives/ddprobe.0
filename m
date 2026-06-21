Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 413D13D994
	for <ddprobe@lists.linux.dev>; Sun, 21 Jun 2026 16:26:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782059194; cv=none; b=mi/YEAHWCqWKETmYnCVTrdtIUUx20oMLVVYcOGhr1/mcCJY7/yytQPFKBgzsapi44BenKvPZz3qgnui0a+YGuVW7R3sBOQzq9QQOw818KV7ap2C83DXW/cAdj8PzTjUyoJ/4aQnH5EMW8Fukl/7ZEu4xQpBvg3IM174/9EygIUY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782059194; c=relaxed/simple;
	bh=dk2VZBVUe5TEqG6x34KGZDkdBLShYKOityDqjX+HZk4=;
	h=To:Subject:From:Message-Id:Date; b=MQnoR13HdBMDy87bxbR4711ZeZpzesCFO1b0N9uUF2ATekhUVPk3dF65Z2V8zrkQuaoIu3aJLzJZg4gaqEN4TObqwJPGW08rf7I7gkSx75knKIkwNEaNghzlSP38KjG2NF22NVGe/yZvvnWFUdYVZHEMfMuMfcl/XrwcKlKASM4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jodxx89D; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jodxx89D"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C8E4CC2BCB7
	for <ddprobe@lists.linux.dev>; Sun, 21 Jun 2026 16:26:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782059193;
	bh=dk2VZBVUe5TEqG6x34KGZDkdBLShYKOityDqjX+HZk4=;
	h=To:Subject:From:Date:From;
	b=jodxx89DmxIflRGeeX3xnWfotD9/d+yOA/td80S3TLfLc6QySjb75/yji55O+xdpb
	 aVIFFfHPEYJgv4b48CRsYvj64qSlCB3yKrTxpuN6PpLMSPBv0JwiH4aWMZwPneLFnv
	 TYYLw1AiI+Imd7X64ojfl4j/WWkZaPI7CqNHsH+iM6v15ExTUZRq+8oAWZYnnJBhuB
	 Sf8FRAGbRTNt1ba6VXFs2dPbdviDbMTHPNtxR9ntez529LktySKktt/mtSV1Hb8j9D
	 ZS+NRGC4GXOTEj26aOzxRsjwrsaMTMYWICqfoGdBOrkx+OeREyBcuzmZZwEqGJhJoZ
	 sXeBXFb0pMeFg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE458CD98F2
	for <ddprobe@lists.linux.dev>; Sun, 21 Jun 2026 16:26:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178205919370.627.11811619209431636610.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a2a61174d52d5c7f2b9c094efc737ae606d601857c0360887e0fa3d74d92b245
Date: Sun, 21 Jun 2026 16:26:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782059193
