Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14CE618D636
	for <ddprobe@lists.linux.dev>; Sun,  1 Mar 2026 09:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772355894; cv=none; b=nlN546a97rjMHjucAjQBG2LTbK/n/Srw16jOQXWOA7EvN6bMOjka1BbGOHMA/01m9NozNS0HpbCbUcP9zaxN3RxPFBcwsvo/XPjIsh/9NJU5p2J8eJvYdCsGLBR10NXmzsJ50JOQOZU3szw6HMTijWWlRXxcBU17lFvKMzJLNzI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772355894; c=relaxed/simple;
	bh=8eWZpQWr5LNAud1M3XSj1yKWXxN7AKocKkwc6oBlwgs=;
	h=To:Subject:From:Message-Id:Date; b=l/aIXnNWQ6sp1Qu7ESWKXlLFTVtXdJHOgJEG357bRBdFJJ3EvmANK5NnnN9syzb41wGdxfrNc+GxRHDKYlEWybsw+9dVbc9rqADLLizIgLJ30UdAZT/Lt1l63oSDXD8BFLJQxE0EKUP9XF0o9Folqco63QuITxKXQbNdtv7kpTs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AZbNfyM8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AZbNfyM8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF449C116C6
	for <ddprobe@lists.linux.dev>; Sun,  1 Mar 2026 09:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772355893;
	bh=8eWZpQWr5LNAud1M3XSj1yKWXxN7AKocKkwc6oBlwgs=;
	h=To:Subject:From:Date:From;
	b=AZbNfyM82ArID1+VQ69I5dgNv3r6aKUF6GA/Z2rKhUKkE5AhK0Qz/c5u+/FoxMPL9
	 ZZZbs9V+uQSafEyosRAwFg/cCBUg//pvcLUcz7+t3Wi1OBiBzVbZ6+fAH9q089wIDQ
	 vDaqgbpnNi/UKHyzORgeqKsXFFWSsyLM0n9ex+54NMJEUn2t/pWpoIrAoGipn/JdD+
	 rGdlUhIwKnkMS6UYvgyS++KulUxVqX3ail5QcohV/U0ng7z7tFuoRqD2CMn8vuvYiz
	 D5Xdd6q0fr8sF7H8tKhSvLddS5yyWsG0eTMzcQzDRcNHHIRyfmxbxWwgzG12Az7ACE
	 SAkEqLcSz9hXw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98D54FD004A
	for <ddprobe@lists.linux.dev>; Sun,  1 Mar 2026 09:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177235589361.4534.16973776197891390730.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9119b5ce19a1477e3eb53c423745f6dca41afb681f023a1bfe83eb607bf1c1a2
Date: Sun, 01 Mar 2026 09:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772355893
