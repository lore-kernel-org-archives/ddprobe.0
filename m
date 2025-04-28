Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3EF3338F9C
	for <ddprobe@lists.linux.dev>; Mon, 28 Apr 2025 10:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745837994; cv=none; b=Tqg/HkiQQpj9PqN7Ap2oQf+FI3ozzo6bvuaEPlrRhV43hRtQDcGmVLyrOpBDvpRYucAdA9yMnrqGVevsenkslDqaMlmesN9t8f6QDPajDOeEc3pvJ9CbbCok/RJmK4+1h4MnMPYXReX7BhzAlKkixNVaq5BK4oN3sRwSAr3D39E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745837994; c=relaxed/simple;
	bh=k0mpVXmXdtNsC7nh3V7KYWzLF3AyXeU6HBfjTvFn+Q0=;
	h=To:Subject:From:Message-Id:Date; b=oWJupuhHyUOMPuqFO/RWgpvZT4XJa/VEPJAR8CLqacf69N/O6k/fKO9Ell1eoAzAJMxe4MM4a2thY5zhv2gCSYC1910i51gm7IDDXa76HGBaT/rO0vMcOfP2GyRJQohG5YG9qgm0/1msq8+5koGPPD4HFxW7EmnXxDnsGpT5+EU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mbEgOx4J; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mbEgOx4J"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DA3BC4CEE4
	for <ddprobe@lists.linux.dev>; Mon, 28 Apr 2025 10:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745837993;
	bh=k0mpVXmXdtNsC7nh3V7KYWzLF3AyXeU6HBfjTvFn+Q0=;
	h=To:Subject:From:Date:From;
	b=mbEgOx4J+Jn3/F6FEjVlaa4MyFM2A9onEKhYT3yu70aqV8uBgbx4uzSh7cle5CV2V
	 vyNv8WvwhRhN2GoUriQ06hjBIx8oQ7o33m/q0zpTSJQPmiLAxd+3MRPAEH3tvdekHt
	 MFwmz5VEk84TX/c1GvSc05+KtDLwVg9vyF18H6JWdrVVcJrkcshv1Oxvf1YFu8xc3+
	 PmxUHRSJedaO8/Foik/stlJdm1IvqdDrn4lEXO6AtDQioOQDzWkQxNONgXcG2K5Zcz
	 XeZYz2sD+k0iqg+rlfj32qRFH6TwUsRIvrHSTLoB0X7LVuyrDxMw7wS+Rm7H+tSvb2
	 BtWCv5OAkRPEw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8ED14C369D3
	for <ddprobe@lists.linux.dev>; Mon, 28 Apr 2025 10:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174583799357.689.9399078268276453727.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1aff25a1a6b6fdac166e0c244aafe5798cb26898fd58d80a4ade9e06145d2b16
Date: Mon, 28 Apr 2025 10:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745837993
