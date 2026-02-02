Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 05E6E259C92
	for <ddprobe@lists.linux.dev>; Mon,  2 Feb 2026 21:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770068034; cv=none; b=kXv5Py7Crr8z3tHENXIqMZV0d+5QenHWI6KhZFZgLlwVzMIfZSk7XUD1+iI7n5plXS0jW6+vGfm+sTlV7PL7ZM1Cf9hoFPedplBzDET7oZo6RPJy5nGqGdA8Tz6JRxo59Hv9DNVhTrXN/8abNTBlAkSI5wfvOi5epO6zyReQRXQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770068034; c=relaxed/simple;
	bh=pDGbTL0ZdUvFy8vegGVF1RnPPDUXMW//Ud0tbuIwpYs=;
	h=To:Subject:From:Message-Id:Date; b=d02ed9Z67/2+0ekThqVv3wl4XU7eGoiCfZCGNUwaQH77JCFzXmdrGn6tybYeAq/K5NIYy4+W9hkQ+LgG5JRDBB0FRl50PFjhNfVsF6YQ/Mo50YjIsWwStMWKOQyemBLGuWxfLRO+JFeB8ETCte2ODKf0Q6uw8jKLtB8LYVOTZ74=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hK5Emxmk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hK5Emxmk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB7B3C116C6
	for <ddprobe@lists.linux.dev>; Mon,  2 Feb 2026 21:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770068033;
	bh=pDGbTL0ZdUvFy8vegGVF1RnPPDUXMW//Ud0tbuIwpYs=;
	h=To:Subject:From:Date:From;
	b=hK5EmxmkK2HPnYJVVNT0aPcsLyXL2M9+k1iS7cQ3HcR4p+dlv+pBvVEK/wCSqjL8S
	 UH6iVZJUL7JNJQH4dgj2cra0HINcXuU5VbOaQ+bj7NpIIYfOsaroaRinXG7pHv7EJs
	 5acTsc891i4u3SSTyNgcYqU4f/1khGcppSz/gKEhf02ceABfZ6DMTTHhU5PGplE6Gf
	 9FjlMl+y8dDbfu75jXpSiS3UeyjQmgmgUIuLD9koYsY9LGm33bFID0iVdL5py9zAUB
	 ZyM7eBjDvebd9kKvCJXwnoytg3mYj/u1IjgswsNBtvObYNQFXKGe6Rvku4wFhuT3wX
	 VY0xc75uPXvag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99196E7FDEE
	for <ddprobe@lists.linux.dev>; Mon,  2 Feb 2026 21:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177006803361.20927.9572509478152296547.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3681a97c297eb0700be0d6bb94bcd69e964aaecfd0973d60892919e43be21157
Date: Mon, 02 Feb 2026 21:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770068033
