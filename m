Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0FF8D39099A
	for <ddprobe@lists.linux.dev>; Fri,  8 May 2026 11:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778239054; cv=none; b=aORYmxXXnngqUhR3cVFzeDaLooLQXyI+UKPrGJO7xF8vPEsKT5W3Nha11lAshoT6a77bXmZachj8Qg47uzQztM2qn1YFQjqfMsG5EVsDqGJfTKG6DVA3XKjPITcPNEGEi2FY3nJT9X0V27Xeh0AXLSaoImlRAtDHBPW/kNNgU/E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778239054; c=relaxed/simple;
	bh=vUDsz/+r01PP3x3ln3cgLRoZbX8aXFsB/zvWduxIQwo=;
	h=To:Subject:From:Message-Id:Date; b=le1ds7/bblvop03kk/+um5/f1RIYIY5DiJAcV8LGIpFOP+NCv3cjOX2otr4QO2jwptgcqgfOBgu4AqGhGjgTX7pB0rhMZs9glsFETmlkGdAKIrLDmgRNoDmo4ktT7dmQeqTg+h+VY8TAa1SmM9sdhJAD5u3MCR4aFXG19nk5VRo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cme9IUio; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cme9IUio"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9A0EC2BCB0
	for <ddprobe@lists.linux.dev>; Fri,  8 May 2026 11:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778239053;
	bh=vUDsz/+r01PP3x3ln3cgLRoZbX8aXFsB/zvWduxIQwo=;
	h=To:Subject:From:Date:From;
	b=cme9IUiotDfQEFAWUJ7tF2AftvkovsoPW+5EMN1KSEAQnLfX05vmdjWZ6MVsjx4HF
	 /h0m04splbbSxW61Gds2JZugT/gsrtsUBgG4TTD2viTzEyRyb3xIOrWCe73wtuCl1k
	 o0ktsr+MH+ua/98eNCerSX0p2QhbiuViazvcIjbRa8Kr+de2dvwltGnWuWZgthbQFs
	 DV2SYzYsLDXhIQlsVkvqdg1qwqERaL0tLApphCyAr+yAP5wf2MajfkufT4dVubUTT0
	 hbrCVSnO+QNM/kIpJ9Fs5caN2sVXzgZMwE+oQKEnUDOYNIiAWWzNIR0T+pqVeSe3XD
	 YUYnCd9kHhneQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAB51CD3447
	for <ddprobe@lists.linux.dev>; Fri,  8 May 2026 11:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177823905368.10087.10786301264747149651.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 23a153519d639b872254612e67bf3eaabbb3b9de4defdcc1db6b959badf2176f
Date: Fri, 08 May 2026 11:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778239053
