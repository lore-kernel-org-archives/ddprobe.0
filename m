Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CF14F20C00A
	for <ddprobe@lists.linux.dev>; Mon, 17 Nov 2025 22:51:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763419914; cv=none; b=aE5qU4no5QT0KHMg0Jxu5XTidS2zssYoH5/i+e2OFKbk94rdcBqN8rQMhaOvXXQmLrebNeh2GaRUqkLMmkhyKTa2kDGqXUQjcsxjQaezNRYoBOWBgGiJMbRNse83reFiGv05MBH9RGaJQs7c5xkKnj4LYdaQnI4iyU9ckTREi9c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763419914; c=relaxed/simple;
	bh=IpFtu7bk89WY5eFpHsDSQP7qFh2I3JAXFQqy4/RfMIQ=;
	h=To:Subject:From:Message-Id:Date; b=WJtx5mlTHixv1NbKEU47alHp4yney5VmMC8KachzsFDq4cl0Qsa8T3b7R5iVbcbI5tEeKN8QQKwCkzilhvwM7+cyIWSyLT+s9w8cOI0i29YO0bU7xSizUO+jgge8huoGVU5n2S1zE+OjmVHv4MA0Y/gRatoyLIyWmikQn+hOIUI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=P1R9m76i; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="P1R9m76i"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6650C116B1
	for <ddprobe@lists.linux.dev>; Mon, 17 Nov 2025 22:51:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763419913;
	bh=IpFtu7bk89WY5eFpHsDSQP7qFh2I3JAXFQqy4/RfMIQ=;
	h=To:Subject:From:Date:From;
	b=P1R9m76iLRKVW10o8bVtSqYgaizD8BAjXm+5E21V16MAhAPYXjjluJZjgKeiCXA91
	 2hlBna7JpYbR162hQxXe8bPLmi1cSEZ3L+jxY7gKSWcLuPPi4Za+rUchI1RKyYU60N
	 Lx/vcRVL9RXuGSVJWFvRNHHtMQsChlb/gfPi2pJQoQ9LxbQE8252PSQ9yYHC8Hnfpa
	 S26AmpsChkd+8a0p/7HsQLZvJErSIWH+3uqVDEp+VA/u7vVmG9TUvzQ1MJBuKm+dPs
	 +U3V1gp18cG0uDnghnPU3EIRXegTOTY7OykIBiwaEmPT6T6OjAliuGmCmzBcdtQOr4
	 AGmFUfVI47+8Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93D90CE8D6B
	for <ddprobe@lists.linux.dev>; Mon, 17 Nov 2025 22:51:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176341991359.31579.6810710254960369282.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c514412860567d26dcff0ee5c2d1f9e58975e99ef8af1d23f806e5e6b56c6c88
Date: Mon, 17 Nov 2025 22:51:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763419913
