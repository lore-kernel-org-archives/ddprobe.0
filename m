Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E702BA2E
	for <ddprobe@lists.linux.dev>; Mon, 21 Jul 2025 05:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753074594; cv=none; b=VJuO6e47d8vp9ELbc8VBhJ4dypsVyjOTPiwteDPPniVHIdvvURe+g9PiX8t7XKFKiyqR0WOt0hPMbLFKuT8U8qTdWERgYujt687ZcKeqKXykTg+cPRggwoPBkPJr3qwTqmhyh0vmD+foyWJ6CpiTLU0PNTkU6Q52OQU8quK1TTw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753074594; c=relaxed/simple;
	bh=2K67OOCtc4V/xKgoItr0x68oTYTLSjW2GgPHtWPcvQA=;
	h=To:Subject:From:Message-Id:Date; b=Xxc0X86cV28Lhy/gK5abvN/SOsfjwWfYtHGM0Nmkv4r0VHHQhXwJ04tUxQE2s/WFGztJr+MBsQ+79hL+PYzY+/qguVP+DggYMORCGFD56s2akpYTggWLRhWfHtKF96PaFmTDl0dpfonj+E7GZHLCkW5CFQQ59szVCieo/9K6vZ4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZvrTwCde; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZvrTwCde"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F22DC4CEF1
	for <ddprobe@lists.linux.dev>; Mon, 21 Jul 2025 05:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753074593;
	bh=2K67OOCtc4V/xKgoItr0x68oTYTLSjW2GgPHtWPcvQA=;
	h=To:Subject:From:Date:From;
	b=ZvrTwCde29M7O0IR/gxYPiIwumgAqCxeBUN3cGoGGMFAmpQngDiejoCTV6pQa/osh
	 d6w1jvbbl9Gpjlo56XeXl7P2UVznnWVmm3zTlLOJ3unnfHXByEbXbvNRI1ihX0RpsZ
	 +DE8TRwTIDMGn5OvAtTl73hyABsKSjGUaNGpNVP3B74jBWWQL5xKrCSaKyV2L4ZpLv
	 PFRCwvWCyHEZO71+Hmdk2DNDsn957obk+kVVyK4QqXvqbP7ixBf/csyRRwTsl6gwLF
	 PUvPwxlzSFL5c7JqO/nj6vEl8nY4jIxjEcPVAWU4D+2P0kitsDqO6UCV6e6uPZiahP
	 7Y77Dmk9XelnQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F948C83F1A
	for <ddprobe@lists.linux.dev>; Mon, 21 Jul 2025 05:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175307459358.16091.10136003165669810418.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 956ee112169450a448b950b0a5dbf10b6ff107d2cdaee5d16de47a12b6edf28f
Date: Mon, 21 Jul 2025 05:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753074593
