Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 590424F5E0
	for <ddprobe@lists.linux.dev>; Sun, 23 Aug 2026 12:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787487034; cv=none; b=nisyFfMCaTPkK5gSaq/yrIvIOT/9k44v1xaSN8Mk837tp15HzQY5LP9D36Mb2ELp3loqgx3xjuuWpABht3xYPXJt4bP6qFbMdFpfJLvI14jZjQNiCjJ1K9/X7vg79/eTioWjymeqLI49z+BHIn/Xu8R/aLF63p5A/4JW6JI1XTw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787487034; c=relaxed/simple;
	bh=1dbaP9FREvbAuqa+B1UokLTJt0DRGQCL+QFqG2IwQyc=;
	h=To:Subject:From:Message-Id:Date; b=VRDqB+PPGjqz3aztz8vzHYIwWJLiSY4VD3XEf5QNWotoiKZc1UTiPkR5a+Cy1oBJJ2RzRb5RsXT1Nv+fnsjiiVN8y9ktIjRvfLaYFbU2xexfciZuh4JWCIs4A/wLr+Hb9zM5xudHOYJaoS6aAHshGXAw3WC/YUNXsHg44KX8TdM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oabhlSox; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oabhlSox"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2B16C2BCB8
	for <ddprobe@lists.linux.dev>; Sun, 23 Aug 2026 12:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787487033;
	bh=1dbaP9FREvbAuqa+B1UokLTJt0DRGQCL+QFqG2IwQyc=;
	h=To:Subject:From:Date:From;
	b=oabhlSoxaZYSqCi+LJuAhCZ1lyllwFiziVn5LmH6b6lKfK5MNBfnjudLJlga3Ih9v
	 VuRfb7y3QxBMwDGE2VjAWZn35Vnjee6TavVBr7x4jGw2JZORW5ozF2UapD9+D3ON3V
	 cjJCNupFaq3vvj+Xy5aPl0SyMupryuntdDbaHkSZHJZoBbriEbWc25tccimg6ekqtl
	 rn75M64zffkMaIdqj/G0r6/LWN7zRCn44bCyN2Rzijdy5v0JsxYkBBMGmJMJPHCnqI
	 uW6RYRCchr6mS+KfC+INS8H3UBRm689MXXh2CgJnObaKdTA37lVMeQ8Epha7aj79hU
	 CZrFStOgkA9Vw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD3ACC5DF81
	for <ddprobe@lists.linux.dev>; Sun, 23 Aug 2026 12:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178748703368.15411.1682614826841243828.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a6cdc3cdfbaa4ef6c61506b1fb65e1bd901f6e45c9583f6d4fa0c423add0b0a7
Date: Sun, 23 Aug 2026 12:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787487033
