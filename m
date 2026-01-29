Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F40073793B5
	for <ddprobe@lists.linux.dev>; Thu, 29 Jan 2026 07:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769672634; cv=none; b=Ob2RSlmb8//ah1UL8E9J2XdFpKtZsaw4Lea4M4YnEHWwdkCZQeCTghV+EVKIQZ0m06iLoR81BxZC/StRCv0gEHOox3b1ltNTQ5pzyZQrWkDQWNXBXVjI07FxCd6pLGjlI8WVd89iiwvmS8PtX1fpJQcT+wnBLpxPisaLM+74K2g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769672634; c=relaxed/simple;
	bh=srqGbCIJOaXYcfqlRWWA906/JQ+f2mhgzgvLex2TVws=;
	h=To:Subject:From:Message-Id:Date; b=TYQ2630V3BID8u2Qky21B0+IZI4VH4npP2dBdLhVFgDKk3P/YDg4Ol+QGdmUb/3TJR5tkl4kEkh+o0rFMbP81pHbf+Ek8x2bXFTPWsXZyLNzlbfgfDFkV3S3DVi/alX9cn55V+8+6z5KVNn7J/Nlxt/JEwwCxxojpGuYEdMCx5w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MpAJEtHL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MpAJEtHL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EB58C116D0
	for <ddprobe@lists.linux.dev>; Thu, 29 Jan 2026 07:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769672633;
	bh=srqGbCIJOaXYcfqlRWWA906/JQ+f2mhgzgvLex2TVws=;
	h=To:Subject:From:Date:From;
	b=MpAJEtHLqoT+JraotvEnJwBQHT7ei3z1O5j7JosEW05Q1Sa+Luym3WVo3IDd1yuRh
	 6b7Y8VV+8EyMAOFUMP8PUWX+o5bHAPDAyQEjWV2ESzzDuQ5bQlANLQOQEY+cRSvgxS
	 1q9L+n5EIrhfJQ8Zf0o4jpxKVNc4mbvVBfzL+bp9v4ahmajRH4Jvx8NeTFWUoCZssO
	 DBVi95ed92AFcR6S8Zjj8Xj+C6wXip56AQPumTghccWHPHt1tfQBp2L4++/gZAKg71
	 p0HTzwVVYSly5GwSjSDf5GnmlKzn53N+4eGLQpCp16Mo1a6VNzGoSDNV8X//pl61Eh
	 KOA/MZzzNuCcg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90026D358D5
	for <ddprobe@lists.linux.dev>; Thu, 29 Jan 2026 07:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176967263358.3923.17934127404942237234.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e1323a402293b61e7469b45472e099804c9a422c5f78c2600c5bf4b08b8ab3d9
Date: Thu, 29 Jan 2026 07:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769672633
