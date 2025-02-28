Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 571142702A5
	for <ddprobe@lists.linux.dev>; Fri, 28 Feb 2025 17:28:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740763734; cv=none; b=norE9qO+ny6JHuNgT/nXD2TmmHfNJjrKcDkwRdjStFiE87tG4oaFshJOq/CHqZbpMjJGmwWr9AmFZbehk76UdCVRSoYK9yFu0fnSQZcc4kLNVbp2TP+i1lCmUR/5hM+UUBg+8S8XY3jOJEVaQqb4ZmBJBiw2edgkkCdiDVw6vm4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740763734; c=relaxed/simple;
	bh=F2RpPqQvpD4Rsta5ry94ViOYC/ptNnjJwZVfl6msD0U=;
	h=To:Subject:From:Message-Id:Date; b=L/e3y97dN/5HsqxrCSQX16PgOaLkziiueO2OIlp6YV+/7uAxGtrzUOzpSC1wGwHM2QDZZCCwPvPYZ0+Ey9CJ8FWuhIQsFUrYjuIoQQLNW2IZE1ZVNqOV7Sgpbw7CPDT+Q7XwEoTkKZgooKU8ZCfNs7lgiaA87fJrQjCd1SHLlbI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OfxnwF/w; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OfxnwF/w"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5695C4CEE2
	for <ddprobe@lists.linux.dev>; Fri, 28 Feb 2025 17:28:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740763733;
	bh=F2RpPqQvpD4Rsta5ry94ViOYC/ptNnjJwZVfl6msD0U=;
	h=To:Subject:From:Date:From;
	b=OfxnwF/wlZJIEoDX7qY3IFD5tlNMx2T3DrSy70Y3WGLf91AHxWNmLPGPoiT8XesdY
	 bXlNBHAzQSJZhNNWqtdbYu+jbblGtjpg9WYPDcTU6mLdCThTwFDfS8TLPFQonNBTcC
	 WGGRV6TU1r6/QVpN8s/MEuybtOeva2BilCN5mNMjFetavTMcOmRbsTXHQpBLPLNvTs
	 ow6njvt79rySb0zQG1GW0ZTsoj6R3aQa9pziPUinqU5ikee6MzThirtDg6VcHsyXmu
	 PqvkSJLjIdgExGlUGRgYvgV20w3FfwBLTKwfKkqDytIKyYoDVtI/t8TKh6c5yViKIj
	 wjK9cVrFKf1/Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F916C282C1
	for <ddprobe@lists.linux.dev>; Fri, 28 Feb 2025 17:28:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174076373363.22130.9109010059181915731.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a68dc290840f9356b0301b1252c58b619aeb49f6a8908a95528a3a054f543d10
Date: Fri, 28 Feb 2025 17:28:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1740763733
