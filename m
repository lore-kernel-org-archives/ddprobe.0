Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26CF914F9D6
	for <ddprobe@lists.linux.dev>; Tue,  9 Dec 2025 01:52:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765245174; cv=none; b=aoY7ArtxWSiDDgrS7UO6SND7GVcHo6NRNKS8ALAcRF2pbNOlOrk85MfM170ofsk0z3RawiNlimHGSmmwtQgCeGIdftVQPaWE6V1EvA0RjPnxSHiCh/i+489Alllv07pE7ysOZjMSAszwNeZN1vz7FVYVBit7tqusnuMPm3fdB0E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765245174; c=relaxed/simple;
	bh=m3ioktKwajRKL6dY8uLIoPNken3eSlhImPaoGSll+Zg=;
	h=To:Subject:From:Message-Id:Date; b=B6XhZatMb9YXzKfc73Bcu1oliuRWzzpB1t4aGkLAPB8cJsI9uN4J6mObuIIvUTYUr2PJ7/L56JdA+X1GjTm6AHZBfbooig+hDZFs2wy5SS4nKCm9EszW8r2YUDR/d3WTT328FkcSYx4rCKqENWrwSl/QT4wjeZlM2eqrmIz2tPE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=L37IsaTz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="L37IsaTz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F167C4CEF1
	for <ddprobe@lists.linux.dev>; Tue,  9 Dec 2025 01:52:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765245173;
	bh=m3ioktKwajRKL6dY8uLIoPNken3eSlhImPaoGSll+Zg=;
	h=To:Subject:From:Date:From;
	b=L37IsaTzLeysEkbDGw8mMJScGpegvKz9iNxVfD6MKQpKM97aL9kO+EqfNoOITzYMf
	 itOEPFV/r6JYp9ZHsEGZdA8o8tfOh3aOX6UDeYG4EuN7O3F9T2X4nBwp6bCa/2wTbO
	 1/nw04R1W5e7HjERqz8msVZGActtyTN/nUJKIyNxYGCrvOzjKXla7G3+zlQ9avctcO
	 uDJzsRx6jCKt08ZjKN0MpbamC2GTV561N9gb9q62KEhVQ8iU6qhD5eirRME/k+81Gk
	 k/2/KfzpX9enEm3lqTsBCWGJsnsinvPijCC9qtBhBY3vRUuQ0JkhkWmpTis8eceC5+
	 3e3heG1KIAA5w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90135D3B7E2
	for <ddprobe@lists.linux.dev>; Tue,  9 Dec 2025 01:52:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176524517358.4662.1029777869762420418.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 81fb228784e81339ee8b4a7a5b434fa44e9075fa9b27639d9db1d1ccdf2dfc82
Date: Tue, 09 Dec 2025 01:52:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765245173
