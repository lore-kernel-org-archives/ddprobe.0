Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E7AD37F315
	for <ddprobe@lists.linux.dev>; Thu, 24 Sep 2026 01:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790214034; cv=none; b=B60vsL+OlBDWZXt0ESeN1ObVGEoQdibpAVV0f349XgyP6/CnIBuzdcsBzOHP/5ohXbhcbgbNSQrxN1tSMkte3PTLP3TA1f/tGlyi7e6INzCqvZgRONKkwjDL57F+tz0Ho0rf2lYKbMzxlXDGebCP2s3QAJPuQyOHwoDtoJHm73I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790214034; c=relaxed/simple;
	bh=nd4tapPl6TQBm+teFiYVnUDLNBL864l8z8D6L+NEEac=;
	h=To:Subject:From:Message-Id:Date; b=B9LEqZjll8Sjjt73enSU//wyWe1e9C8YEQnq1ywbE+YMAtoe33/gY3zy5TsOxFmYuo9GBgQy9CuAAbgAwmI0mezHZRFM2bpct9zDl3V2zlV2dXPY34zMUUBeXpPU617iO/064wgYN+I1HgUUVajCNUlx+rM5zxZXdOJLwYBhcOE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=N/Lh/pFl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="N/Lh/pFl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9B1CC2BCB8
	for <ddprobe@lists.linux.dev>; Thu, 24 Sep 2026 01:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790214033;
	bh=nd4tapPl6TQBm+teFiYVnUDLNBL864l8z8D6L+NEEac=;
	h=To:Subject:From:Date:From;
	b=N/Lh/pFlh/rlfaPFsXoyCA9HE/ODkGsaGsIerSLjyI1UMhXZRRAaxbzGzO76rOAMh
	 DKM1Gy7WDnAWTAI3Va9TY6gerjNH+kI7Lmv8pla9daCz84Kypt5xY2NAJvKPywbUIG
	 YU7VcPw/vV1sOQEJONb4jotRjAjEhlZvLnFC3fOOT17Qah+QzXFaCsn5RArFNLrcjg
	 Ggj1AJRjEFuPIiUksSJDYzg7vZFTnthQ8MJSk/8yCEN8c+BI5sFCxHQ/IHdhAaMVbo
	 4Gl2Lt0mWaBlRxIsN9lvRB5yzwWmEm7vrEqyQYXWg0kGno9whHCVLBzX3bu8HhcVgN
	 YP4nqZNKBpX6A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5B8AC9830D
	for <ddprobe@lists.linux.dev>; Thu, 24 Sep 2026 01:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179021403370.17739.4857809886532247092.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6d4f8d8d6af094b576f9f9be5547ba8a05938a2f361952016bea0744037c9901
Date: Thu, 24 Sep 2026 01:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790214033
