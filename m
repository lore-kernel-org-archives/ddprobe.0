Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4375115AF6
	for <ddprobe@lists.linux.dev>; Sat, 10 Aug 2024 02:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723256754; cv=none; b=FaIyvmJETecUu6a5G8W+WD6RnVx4G6A5ouSqJKEwT9xFzm2T4ZLoFzEJ7JOyURWYZkX/sWIfWMogU1kAQ2byKo4iYrLJdQjisToFAciKeIDszvRHyrqUGvlpRxygIlLUZuqGFYVlFPwZ0BUcpT4EciMN2NoWhLxAJPl79l9sGs4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723256754; c=relaxed/simple;
	bh=+/BpZrAyf+crgv4EH4IX64IFSgBiEDPWYaBLDbTvdC4=;
	h=To:Subject:From:Message-Id:Date; b=czxmctLItW6GW9122Kqi+NzGDZWwMFqRArIqRGlEMT8hFnR7qKC9Gt3pAoCYPVrbx/iXN22RIhECuHKqA68vxi3AtkGW7I32Cwdt5ZEY/Oa7GDMM6InErXTt4BiHD8Q9v77qR2CXxe85gXzqVm9B75hzwXKKMiF5nw/94B7zxlY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=p1nct+qH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="p1nct+qH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC8D3C32782
	for <ddprobe@lists.linux.dev>; Sat, 10 Aug 2024 02:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723256753;
	bh=+/BpZrAyf+crgv4EH4IX64IFSgBiEDPWYaBLDbTvdC4=;
	h=To:Subject:From:Date:From;
	b=p1nct+qHR7Zqay+EINTU7d9PxIkMzyWdGMfE+kRg+3UThdQr0T539V5Y0JS9+kkQB
	 vqgD+YXzDwV1rDq7oImnnUSkwuSKivxJRcrhMulHUZMzR5bToqecCZuUQghnFUzocC
	 kr+nilrxhH9W39fBYmNIWoLHfSXi3jxd2etnF/m3iRXZflNzVv6zHNx+IGliPEgmLE
	 8UA5PIy3vli7T2KdQ5w8FoGUwq7aK6/YgbDr/FWHzMPKpLF1s8UWoFd3wqKDDRVITe
	 hTlc4o+rDuI7eh2hRqyeRV7qfBl4no0QPIDmMQ/RBIoGgxD5XunYzOsfjnl+7i1LUr
	 n8Uipdt+Hz37A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92325C3DA4A
	for <ddprobe@lists.linux.dev>; Sat, 10 Aug 2024 02:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172325675357.27063.18214460075727619359.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 54ee0fa071e3ab9b5867fa9b86738aa63bddcfac5c4ea80457ea36ac3b03de79
Date: Sat, 10 Aug 2024 02:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723256753
