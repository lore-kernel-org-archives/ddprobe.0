Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0EFBB238C0D
	for <ddprobe@lists.linux.dev>; Mon, 26 Jan 2026 18:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769451234; cv=none; b=byoIGoPyTAmu4zCq6BNhYCGmrkDRNrwlcAfa6Es1+KPYEuMksi8Dd5HsVbsTncEDiMKYmEPGjQdMtfh9cl8O3agnBUcHb+sPrgmRZbP74CSIRSfFr7V4zQQM6DmrWjfe2dPgn23mOq3Jj+IkehHbH/hD8XDNew+M/evNUiv2nLo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769451234; c=relaxed/simple;
	bh=axBNRG2PA67c3Sl9Uit8RAjrcwSrnj02rEvGfQefVRY=;
	h=To:Subject:From:Message-Id:Date; b=TY/TaD3ne4OB1Rt18h5Opw4PfCLCn+hpbRCRJqN0oT4sfRgN18aQDVun+NkA0L4O7nMz74pL+eWWb4B9lBqHY4U7J2gv92WB9Q+3vV74FQFt1mNC99DtYTLIvJPxF5f3HLuG3dEaoCrb29ye1t+vxRwuKE2573p+6I/2FKrnsfU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uNoO+3ku; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uNoO+3ku"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3E21C116C6
	for <ddprobe@lists.linux.dev>; Mon, 26 Jan 2026 18:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769451233;
	bh=axBNRG2PA67c3Sl9Uit8RAjrcwSrnj02rEvGfQefVRY=;
	h=To:Subject:From:Date:From;
	b=uNoO+3kuP+6evy2AXqWG78J0WW1x72YkH9/6ZmDlcU1VocqdgeVo9cwG2eq9YLdjT
	 c31IE2Jarbhli4gPH3THeUtCCCwzLSssFKCP+fR6cJ6cadBhN5I8qi116BrKMk39Z3
	 +7HPJqGLELn9ZRPCkWt6EKhTXjW+7ZrZSUg/QRz4KRi7KH3PlPhg/1aGxnSVza0ctf
	 Q2z5U9DfyG9sHdbCoffrzxqG3AV5z2Y6/uCOCNQ/jvU8NtX/4V+5KKjgP/LrhEPHyO
	 rh6vguyXFgWGzKL/XnLlf3L1Jz3gewKnz+1nHH5dVofoqUIGXZglxIhF3W6pPoYF8E
	 ea4r/djaas6Xw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92281D1950F
	for <ddprobe@lists.linux.dev>; Mon, 26 Jan 2026 18:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176945123358.23954.12191077603828213791.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4680bedf050afa90f980dc6f840c058b5fe032d2eed1862f8237c787ee2ca7a0
Date: Mon, 26 Jan 2026 18:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769451233
