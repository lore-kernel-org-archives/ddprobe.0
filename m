Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BD01B26561D
	for <ddprobe@lists.linux.dev>; Fri, 12 Sep 2025 13:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757683193; cv=none; b=S3NoG+4D8jCZVL09v7at6Us18gtmNMbbrjGljfuqvhHAglpRWQdl32nIMTuyhFX9MtVA4wf8wXsrsIDr0NFu7yHs0+OszYqvrYaLlaYSaGK+1pVYkGbyfsJ0OEYZ2k7Ud7eNIUollmDuxtKgAj7bHllGOpvnYHgPh+XI8TD8pc0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757683193; c=relaxed/simple;
	bh=HFYF4w5HpndCw/EuxPqZK+x4jCcrpj/+tN+U9JBg5Ek=;
	h=To:Subject:From:Message-Id:Date; b=Jjpr9kSrAcH2vxlDe3OFDiYhcWWcVTUCK96hN7KYL7ChpXf2/GawaGTcpZoGZdZ3l+S8LO/UPCPEmBw04SZlowyLiID4tMfsT4F50hHVqKEox2nH1YT2R35rVjlKyyS37GbEX9ZneVS/YZrcnR3gUwed6mBCfSspqt7KIp6qjMQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ow2VtS0H; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ow2VtS0H"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E9E3C4CEF4
	for <ddprobe@lists.linux.dev>; Fri, 12 Sep 2025 13:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757683193;
	bh=HFYF4w5HpndCw/EuxPqZK+x4jCcrpj/+tN+U9JBg5Ek=;
	h=To:Subject:From:Date:From;
	b=Ow2VtS0HO5NO7HhXxtJR/VK89qtzpcdU8z/vVjQwFXTI1DTlWIxEbvzahZM/KGFPE
	 ML8E2p0DIgwGOf7XMET5eSqIEaK5MCW810FIFIEai4XIC/lBn+wRhqhJdrKer+Mk0o
	 PPoO0beZ0THGJ2gTLr3VDRLd+Tef6DcO+Md9KWfFHKOU34eEXUBnhl+vGKGf6XBJxN
	 E7ttLBcvxyQbCQ45Atjao9llvM/ZT5PfJgB/VUFmmJEPIHT/5KA7nJkAjKc1lfveOZ
	 2pxMkATJSrsEQPi31JrjWAuw5yoynQEAcuREz8prlytUR3bjpfK6t9QGw0p6GNFV/3
	 5h7iVjLWHfZaQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FD0ACAC582
	for <ddprobe@lists.linux.dev>; Fri, 12 Sep 2025 13:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175768319358.9881.1087486055126716781.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 72cc2a6062cfa0594e73c69cd5579b1f62db566d304bc203e84bd35d6288c6d5
Date: Fri, 12 Sep 2025 13:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757683193
