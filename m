Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26F871DE8AE
	for <ddprobe@lists.linux.dev>; Fri, 21 Nov 2025 14:21:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763734914; cv=none; b=RX0MQFALlbSdU7owZG6w3zAtjJRyZERKtSaunnGCrVb2kmi7Amx056z9qdpWS9DxgPBGAAWdQABu/2SZ7ZQam4jehW4SCBjENfm27Wg/z2kOP4wyiT/i+hUM752T42lH+FhskB2GrrAEZfVAPfHDoXHB+AxOKTgu+h31J0lxR4Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763734914; c=relaxed/simple;
	bh=eIFo4aPVwEsJSH7VJnxkQMFuxf/Z6ziFOnd+jAQtPak=;
	h=To:Subject:From:Message-Id:Date; b=jwnGka+usjRbIxc11r0YnwaQi1OB4zyF9vKMH1NFvAfyZLyhtlEhk6BnhnSeUUIYhs8+OzOun1aRK1P0aKMJ0Vm/wRPOf7z9XAabuXl7N2Ypuv1n/IOqacaKLKK2l1mZLFgZemPwrGAneagZ6HmwAbGPlTa1bfvoL14p0++rC4E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LG0tbV0/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LG0tbV0/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2013C4CEFB
	for <ddprobe@lists.linux.dev>; Fri, 21 Nov 2025 14:21:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763734913;
	bh=eIFo4aPVwEsJSH7VJnxkQMFuxf/Z6ziFOnd+jAQtPak=;
	h=To:Subject:From:Date:From;
	b=LG0tbV0/Fqg/Pd84w/nOkZCNNTZvyFCSjUS0/BHu5WWxN2efuzCgLezf+BLlL3OKf
	 2F5ELW3HCue9v3Cgumhdtf4ttRF4MK3PWI/XVYW0XRv15N4luBN4V4J304xfYlX9+n
	 7aLboMnJnnPdzyZJDeWmgfnyh6RgxyIx3gtCjMc7hAlpjI+5c0forJXT9bRU8znopR
	 ILeoGyUBaK+CpO5kKqvH7szJo/O0WR+YVcOqWNWINaDA+UZ3wF6VzhBads6OAAgT86
	 vsT0g7cKGLf1CI4mXvmBmj1zp1+1MURXNhSjChuHymg1DqM+/6+xnAaVt7Oc3HnBxJ
	 OilDTh1xoMo/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94109CFC282
	for <ddprobe@lists.linux.dev>; Fri, 21 Nov 2025 14:21:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176373491359.17970.13927569739583407235.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 07c44b1b2dcd7217b3c302e62810bb4e7793e7edd11c3539d6ccba0cf9bbf019
Date: Fri, 21 Nov 2025 14:21:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763734913
