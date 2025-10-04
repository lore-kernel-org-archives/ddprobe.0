Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2383E22F01
	for <ddprobe@lists.linux.dev>; Sat,  4 Oct 2025 00:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759539594; cv=none; b=oSzcKQhHIGI592ZykYbSPIRiZdWOZehE9NOf9DzTfWIei1ZPf0ie65j5E9QTYfHSb1PrbjD3bvf/L60q289pJYthU6gmwF7WEwZmrvyC6/qb0IqfRYJFTkdczQ5XonSHWEVwzGZYLUUoDapYLQJGCb7w3P3CQZ9H0xEofPMQ4Q0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759539594; c=relaxed/simple;
	bh=akd1n99ZISLjSJp+2btOLI8Y32g8UrBc9NCmM0CCamo=;
	h=To:Subject:From:Message-Id:Date; b=qrxf8MfyAhFPFnSL4mKLHLCm33zmRjii5GLZBWxigl0KDtmHKzs3qSIAsZcXGYfb9fgj3tmncDjW0bHk2Rvxj8aPvaJktrIDR3eISATJUO3Hnyz2A7JqLEzwLtPYEdrczymcYt7OV0W1fqm0FN80INZ6keukZH9ZCIRak5oJeRs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BbCsMiAE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BbCsMiAE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3647C4CEF5
	for <ddprobe@lists.linux.dev>; Sat,  4 Oct 2025 00:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759539593;
	bh=akd1n99ZISLjSJp+2btOLI8Y32g8UrBc9NCmM0CCamo=;
	h=To:Subject:From:Date:From;
	b=BbCsMiAEaUbDVCN3JxZX9HPNmnMotUsll/MesXuIN4EqKQO5bQL3Vfa+wl2RS7mje
	 m61AdUyxm7kbMZKEUSAdq+NgVYXDEJjUfVPneE09/xmhAMdXdVaWSNgs+HOEFoqtdx
	 L5NIkgtY56p0UXRQO75ibStWcZMC2bI/UNbkj7CZFh1nSAD4T2isUwr9aldI7XgYtv
	 LcOWwTy86NP6UuWsSvEf1+qVxutMnTmZRURGWhRuDfcDBRMaRh8bGS/jmgd1DeDhKS
	 PkNfLt3QIwbedlIFJNB5n0v4MjweLNnqnBcfUSDXNWCWhVxn/GpbT/qIA27MGMQKw/
	 +K8iZadvFbrjQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F73CCCA471
	for <ddprobe@lists.linux.dev>; Sat,  4 Oct 2025 00:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175953959357.22804.11329308478392254302.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6910f223f09a483370b7e9f1fbd2a8c7daeb2e3b3fa86d10c60b673e723bd55d
Date: Sat, 04 Oct 2025 00:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759539593
