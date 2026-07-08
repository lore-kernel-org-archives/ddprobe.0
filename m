Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B8FA3C1096
	for <ddprobe@lists.linux.dev>; Wed,  8 Jul 2026 19:38:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783539514; cv=none; b=VyCmQAnjxKm8pQoCOAtfVGC5HfRfN2ScCNv0XXDoReRrqItA3K+rgGvBqAk7q+3OHARTdXQ915zVgBt2UBR+jO/SZBUCCEbzEondHTcWKOyNEossXb2jyrlkKKqIwN8as14smH84w75+GFCapPKfv8RzHnmyrMNib++CiLb423o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783539514; c=relaxed/simple;
	bh=jt/VbF29NLumM2tDagUfC3FqbweZo0cvOCAxuITcWk4=;
	h=To:Subject:From:Message-Id:Date; b=B8hAcl5e1NfraGEKNtnezZbjs+d0u2qZ8gNzppnVqN1D+CukgIcXxIrn2pWKQIgwBNGKRBWsSB2mzU1AiG7KGfYRHALm7am+/PCW1HCLCyn4U49s3wq10CYUtlewqXsr3BRcZZkO/aaUDbpTXMbPmzqHmTsH74VZNfqLVNSOjfs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sEGQIBPs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sEGQIBPs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF9A3C2BCB3
	for <ddprobe@lists.linux.dev>; Wed,  8 Jul 2026 19:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783539513;
	bh=jt/VbF29NLumM2tDagUfC3FqbweZo0cvOCAxuITcWk4=;
	h=To:Subject:From:Date:From;
	b=sEGQIBPsuNKyfvOpzWIUMj2JAKwLjHjlT2qfTcjre20VAi8Qfh7zSmbNdipzv/ewZ
	 k/Dwz9CJ2EvQxYbDOLJRhHEfrIfjwUFRk9ZLl58E25pOA2kHK59PR/dxuw1hm8CUpD
	 strA37euYvTb5y1Tfi+e2iXW8VAbS8/jxnCDVe7ZYKuqGEJvjdl3MNrVr8zwlEF6d9
	 VzHlwAKpsgjgjK//VavMnm5Ka91dxGpOkij5UK9bZvN6TgD6BKDaKk9n+S9Uf5FC1x
	 QCWAXbqmdpxuUHHkzEAZJHWTw8adoyWAcoFRMm2nQSVKWIKO4fiqszbyt+Ak2OfA61
	 CZJdmkqFD23jA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADAAEC43458
	for <ddprobe@lists.linux.dev>; Wed,  8 Jul 2026 19:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178353951368.22187.8375716658106468209.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c7d095c3ec187dbcea3aa720312966d01fe96af25df17312540835afdb887bda
Date: Wed, 08 Jul 2026 19:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783539513
