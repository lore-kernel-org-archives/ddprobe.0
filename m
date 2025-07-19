Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F21E2BCFB
	for <ddprobe@lists.linux.dev>; Sat, 19 Jul 2025 00:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752884395; cv=none; b=FgooWD+sb6gXw+Xdv+wcqPkONAgxxH/aB0ec8tLmg8aVh1yp9IpnTiYDR25L0MgZcl2TV6MLntUgxm+Tvc1UURYyYdJMslKFJuPylOhh9awz7ay0pYgkEAgvSLx0aoPc5tvtw15kRgwk3G8+klzUpBkVdY5uJ66WKf55pr5jaTY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752884395; c=relaxed/simple;
	bh=2J78s7MuhU7SGPb7Zm8vRl88tmjBbjhAIhDdLQt7Y0U=;
	h=To:Subject:From:Message-Id:Date; b=cSDIsT+K7TFuBGSm5qPxK8ymQWl5ew+8n3yUyrk3T35z1cCHAg/FCnKCL+OdCwqpP1pHmqwGmMJbOer/2+0MJL949TRSvnceGKlgErkajqe8NKNWHCNV9LYMHbc5Cw8c1Wn8rbWLSPH1otF57loZhW22Sr/vZkoymWyNfBqWStA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Y6aaXttV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Y6aaXttV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2D8DC4CEEB
	for <ddprobe@lists.linux.dev>; Sat, 19 Jul 2025 00:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752884393;
	bh=2J78s7MuhU7SGPb7Zm8vRl88tmjBbjhAIhDdLQt7Y0U=;
	h=To:Subject:From:Date:From;
	b=Y6aaXttVRFfUhrKCpkWiHUvRTFKV37OiTs7J318brLF2d/0spM81Q4r2gnP6h81VT
	 UbI0pyPKhoMvEexJL7cdp3RRaC/Jy+p/KPqypnbNkONT9K0l2PW+vNzvxY72JQW2Ct
	 xfjIq0Flk1X156u3jS26URIhZRSQT2FotW3Q0VOVvf0RHIG/sAfGcFpbgs1nqKjSZB
	 E5NiPfz8DTtiMKz9X5V3cH6jJvU1YSvI8xFoeKS0jT118Uwmp8TiEOfOqS5oc15xzO
	 tUzuMdLbhaJ9qCTGUrgHomTSIqI375tp++SYUd4gBdFMjRdje1R1+UwqcuKiewaHdE
	 dmp4flZDdPDwg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A3E54C83F34
	for <ddprobe@lists.linux.dev>; Sat, 19 Jul 2025 00:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175288439358.11688.1227374847972446734.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3a02105b7c9b01ae032bd6f704a8eb16653db7cdb90503675c51a27a35e9c9ae
Date: Sat, 19 Jul 2025 00:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752884393
