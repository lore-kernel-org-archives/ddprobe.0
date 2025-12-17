Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4665C1DFE09
	for <ddprobe@lists.linux.dev>; Wed, 17 Dec 2025 05:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765949034; cv=none; b=Qy5jCcRC2s7of7H6ctK2Nn0SZtY5PICWPBIP9di30KnWFq9Ipaz7er1x6GJ9SE3qgI21BRypipGpgERAhPCBwX9N0e1zpZkr/+EYIvYXU1z/+ZhyKXvciZvv8PLplDfyOItsq6EP9cCogPJiuP9pQjqbRIqTx1LjrRULKDrqk04=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765949034; c=relaxed/simple;
	bh=5UyMukmhLKu2Laj6Pmrkkr5nePGdPXA6etZZnC4hHJo=;
	h=To:Subject:From:Message-Id:Date; b=pM+CDQWIr0oBUCgZUWWx3sLDFUxaptQY14sXQEGbos+ohQXLWoctg9R37rjSb0AL4IDDns1L7NbVvKV7kZc5wGyhxVKkDmD3/tOtFi3ttHijqfkV2VkCXG86GOVP31OtSsTr7Yyk35QHoXB7KIBXRf892orSatf5HcAQp3V/AVs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bBcei26F; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bBcei26F"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE5D6C4CEFB
	for <ddprobe@lists.linux.dev>; Wed, 17 Dec 2025 05:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765949033;
	bh=5UyMukmhLKu2Laj6Pmrkkr5nePGdPXA6etZZnC4hHJo=;
	h=To:Subject:From:Date:From;
	b=bBcei26F0C+VA4wSYqLQSwihgDgJ6NOLlGJ9UdIJuSSN1gNlW3r06pmaeNk0NtQ6v
	 bs14IFAqOchzeCX5ub4uHVP9BfRM0/K8LUPqflLGOu9rfTQ/JhDV2sNxKfDhVTMrCD
	 v3RT9SdTQfut1trj19F9Po7Awq685jpngh6BNBD6BJOwU6qRNaHCWC+dB3bWHKU9Js
	 xEtnU7uF2yRWH8U89wAtaFPf84R/IhdZwmKFdrjYWyLMPyLJVJElOc4p62ovkIwoBD
	 MtM9ZAaUBfc5tETenxJpVwvg0+dw6GTEStD1n4VsrJ3I68MUhcLL720klEwi9N3oMn
	 w5u5vJrhsSjcQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9CE69D64074
	for <ddprobe@lists.linux.dev>; Wed, 17 Dec 2025 05:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176594903363.16263.2214941857506402601.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2b579006eb4c4c5838d79f2cf2e03a8f26129a5f95b61958ade6e26629c41382
Date: Wed, 17 Dec 2025 05:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765949033
