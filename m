Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 53F541E5B9A
	for <ddprobe@lists.linux.dev>; Sat, 15 Aug 2026 02:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786762234; cv=none; b=D7XSyV/Fp2z6cFlDKW5tGof+xj3dSyV5b9go1b2ZedH958fCtJxLdFMi4M0KzqJwLB5gfjClzq9oTCA3ypfkD6lgaaXjsX3Tk1pDUxydj4GfkQdia2qZvIDaIjg6+QBNjqBYmwx1JdJtrwIGe4lEcQSdRNXVeMwCRJioP6XzHI4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786762234; c=relaxed/simple;
	bh=g6GymR/xkFqp2oA/w8W/+33PVBwsqXRKW/gd1F1xrAc=;
	h=To:Subject:From:Message-Id:Date; b=aWhTU8ssfRBUCQSGZsxi8jn5mVinYM4x3xiOb9aFXcWbG0dcXUzxcVNOJW9uce9OhX7/P6ygP/q/vVgaGWaAS3JgH3UWwcKwPnh8LnGJRn/ULjR9/oEsCYUQXDAqrarDteKvSeUpwocQrVjR3u5S0TYtgrh2N0P/i0qOJ8mHWAs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oGaUuain; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oGaUuain"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF02FC2BCB3
	for <ddprobe@lists.linux.dev>; Sat, 15 Aug 2026 02:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786762233;
	bh=g6GymR/xkFqp2oA/w8W/+33PVBwsqXRKW/gd1F1xrAc=;
	h=To:Subject:From:Date:From;
	b=oGaUuainKnCRZyzo/jJlN26gHXvNdDi5GTHMofGQJyz8zUzy25RECTx68K+mMLNy8
	 8FDqsz/mlFOzLJ7/2/MteD+xhMyBUUd7HjqGRY7lW0DUHZfUUVfh0lcc/Rd54oZKJU
	 rgoQpulivXI6Il5f7fexxhM+dVllMZ30YSkbnNJlUQkEt8/4xUb17CE4doNyAsvRMk
	 xL7h6RIXI035N6Gx2ZrDD/fWW16PnBAdgwMFGlNDNnX4Nnla8knSsgk1a3Cqgk+frc
	 zvs8s80xPDQ7iSMc712XWesN1TnNq+2AnG/wZgrT6F63LUJaV9a66646tl8LGRn4D9
	 VPRLv5ys9+InA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AABF1C5DF67
	for <ddprobe@lists.linux.dev>; Sat, 15 Aug 2026 02:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178676223368.29333.4444676459044990814.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ba9fef63114904dac972091ac4a88960edc144d1133558b7e38b312f1cce8e9c
Date: Sat, 15 Aug 2026 02:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786762233
