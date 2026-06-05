Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4AC993F8227
	for <ddprobe@lists.linux.dev>; Fri,  5 Jun 2026 09:24:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780651474; cv=none; b=YzyJf/gGiL2wgMFgE6iCalqs0bgkipmFa0H62gpdkhq0qNbhcD/kSVkMnSgaBP+gdJGsduuQKRRGP1l3usBtOA/0JOgsyX0VXmkjnmCHwIRFI/IyBo3IvNDyos0IDR/7SVSR4sOywJBY5X8Wvi9NFq2pFl6UMX1yPkF4l0mhlcM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780651474; c=relaxed/simple;
	bh=7RDGAPuoYAQ4CBEflyU3bOmkGoq5dK027nlOWoAOKjs=;
	h=To:Subject:From:Message-Id:Date; b=n1h8m17A9b2Etfnz0h+yFCEIAguquxKv86YZ8YA/jQb0vG/dmb/IGB381uOflhtjpI+L+FMnCHZmoZPzFpQ4QvocwWV2M4XlB07XILdnXEBYRqQ7HdwgX+ETSmLemlDbJzLXLoqgKkgId5VuPO+0WXmUKzdiR5HjPYzUzGtOr4g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qeL91Z/a; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qeL91Z/a"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 0F721C2BCB4
	for <ddprobe@lists.linux.dev>; Fri,  5 Jun 2026 09:24:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780651474;
	bh=7RDGAPuoYAQ4CBEflyU3bOmkGoq5dK027nlOWoAOKjs=;
	h=To:Subject:From:Date:From;
	b=qeL91Z/adzzeRn1IixtzvoBzFpykUJioV/shTFWZDWLBpsBsUy7vGfKFgGmmz6W4F
	 jp/H4Eh/Y2j05pL/tyLoedFp1SY2ZPJno3ROKD/BF3/8K/0u2PkSnG8OTf//SiK8Wi
	 vx5SDKBAyRbb+ANw2BSt6z45drO9yl74P4Dp9mZkQ+h3xi+yDkcxuYqkVNFzd9XjfV
	 1KMiK9IAEZc573f9rDv6jnqCbTzL6jaPhFV5d26tI1sEEL0uITk9a+Mbl4hjUNaTf0
	 uhxyKU3NNBGo99d6oEMRgrmCnY8SATyT8KFUBH/CK8c8G59RXiFhS9i5VPtyqKKuvf
	 9Pmp7p2VKiXAw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CC82BCD6E5D
	for <ddprobe@lists.linux.dev>; Fri,  5 Jun 2026 09:24:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178065147376.10270.5573111292523154489.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 80035b35910d9bc395be1d48d12eaff4e78472c2e75d739789fe1d45ba7b4ca1
Date: Fri, 05 Jun 2026 09:24:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780651473
