Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D83222B598
	for <ddprobe@lists.linux.dev>; Thu, 19 Jun 2025 12:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750337394; cv=none; b=sj5kNFZ+ju9M/T9AngyxmwQgA69EGIRPTi5sawHz7p1z7ixQQjO2Diq/dLkDrA953ZPGZWd47ZlsVqBjLn1orraJ6Wmaab6kZuckQiuNVr8IPX4bW6ZY3cMbah0cxBviVegLh9U5fo3I/gJAPIEl0LNIplVMiDWgyEe2+HGsV/c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750337394; c=relaxed/simple;
	bh=ZNC0JNph2/ogJ6Ln7vL2+/tcAgFao/qkxFsyW+DIZBg=;
	h=To:Subject:From:Message-Id:Date; b=Nv6XDJOqiOf/9F7AScRCGc70rnAp/YFgX8XnzRfQer3eS8DB0LA7SMoZXt+Cxe+8ymI/IU11FHxCtkgn4MPH6W8FP/GvCPT9izKpeS/ncgxVsG9MH64HWyxf8K3M9qdqTjdypCt5G10v6hYxPeShHaLQ9NmkSb0iqR4IFfPWKCE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Mok0Cwhk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Mok0Cwhk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1D90C4CEEA
	for <ddprobe@lists.linux.dev>; Thu, 19 Jun 2025 12:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750337393;
	bh=ZNC0JNph2/ogJ6Ln7vL2+/tcAgFao/qkxFsyW+DIZBg=;
	h=To:Subject:From:Date:From;
	b=Mok0Cwhkvffrc0UC/ZuNnTyfnFmUjT1CbmHp6bgJdsB4l0QfKyYEDjhErzfsHRhSc
	 o3+WosbruUqkGTlT4aEMWC7wLyZv2nnkuFlNtehA+ewfyoqFJugciSnCClZQ1Xh0cB
	 CmQRoVFQh3kmGCenNqP3/fQNN1D2XAUW/2rMyW0vIi5vMdk6jELcT1onqWErt7vB0F
	 rmCsMLI0vrYAa/Yb0t7GvXDd6mq7DvikDw0CupsOoCn+cBkwuVoQxfwX5HrkvWfbBf
	 e9hdLoCApwiDhiZjA4T9w1BMihWdkUa/J+CPLzXgkIntNRwx1V2syqiI+26GKcLT30
	 DhQK6p/x3vSVQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FC7FC7115B
	for <ddprobe@lists.linux.dev>; Thu, 19 Jun 2025 12:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175033739358.18105.11371952006087142567.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 573d1f9ae8a24090bba772e3ae137350f0176c7ad9162715b35b4a58cc708649
Date: Thu, 19 Jun 2025 12:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750337393
