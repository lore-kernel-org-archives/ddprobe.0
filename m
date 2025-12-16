Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E14532E14A
	for <ddprobe@lists.linux.dev>; Tue, 16 Dec 2025 11:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765883634; cv=none; b=JA2KRLLn3NqQIH+c3QmNMSja+P3eTFy2VQTzSdfd7d6Kwogi5llXRjfXV3ucOU6u/2GaQR7V7LtfZxnhgIfXMNF6piisz9+3pA82N8FhuKPswwdx7V9+P5XvXcKM1Ar4fr+7aYLAfeMzqeoWGVeYt43Aba5KtQpcHSaJWm6E1Mg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765883634; c=relaxed/simple;
	bh=jp30hLkZCUe01faZTlHF6b8T6Qv31H2mLyNpV96DsNo=;
	h=To:Subject:From:Message-Id:Date; b=J9XYCEhUjtsS8xsWUOmeIKgl34eo8VJ2CP/l2qdIIrpe0eznoQ76vigALmbR92p79m2qHPUG6g5+AnHot5OcKQm95YD+Epo6F6/+fp0V1eKf2FRm9zUsd/slBFSwiVDUwlcfpDoJcAg0U3ZK9B3ewjGVuWmhH64393qzGoskqTA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nwRtqlTm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nwRtqlTm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A860FC4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 16 Dec 2025 11:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765883633;
	bh=jp30hLkZCUe01faZTlHF6b8T6Qv31H2mLyNpV96DsNo=;
	h=To:Subject:From:Date:From;
	b=nwRtqlTmGea3SToiI8mVj2lZWc5ixfdXDGYXY9JTqP2w/JjWx/DqsLgttmpAGEAKh
	 dnjhBX+EeHHONHoCSuLpXk3SYFVUvbGBBAj8YqFtpNaxZ07onisz+6h7ZsfAHcc91E
	 NnTWu4pwck24NPlr4kyrRDk0xL+TsrxxYwK38Tk/aOBt2cExCa4/XTARrnx8BxStL2
	 ONGqtv3DUsK2KZAXWYp+qz0HXHWSfjnSbKHt9pNb32K1DleWnVlCA39i1wDVlzfHkV
	 3Y3u51zFbscjWB/VWGs1PSLCXn+xX6GZXT1EsD9jnwoRsER1YYFor8pT02ulr0QlXO
	 FTGLsyMZ8+GlQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 949F2D5E131
	for <ddprobe@lists.linux.dev>; Tue, 16 Dec 2025 11:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176588363359.15388.15745300291522388395.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 736f5324c12870501ff669f9e0fbd7b7dd9b7c2e3e2dc6b102a4d70c928d1422
Date: Tue, 16 Dec 2025 11:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765883633
