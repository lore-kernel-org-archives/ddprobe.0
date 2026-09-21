Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5712843E07A
	for <ddprobe@lists.linux.dev>; Mon, 21 Sep 2026 20:40:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790023235; cv=none; b=VXhxup16A85gdGsDghmEtQYWHgCQxacwhE0lyAGUn0st7oEYXMWgEtnJdr30cWIt5HtE8ifAaDqfORX+PxDrd08upGdeGld/MckeI8UY6XtfbEesCBWJaUidlEMf6tn8E6FJkZ88FB65tfaAqBEaTQolli23T2I+IxKg1PZrmK0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790023235; c=relaxed/simple;
	bh=RqARFOXmmd19aZMBBjE9t9dW1R7inBhvBqyMjSLU5l0=;
	h=To:Subject:From:Message-Id:Date; b=Fs7Bin9L6ddwz/Z3JofbwlrCAMBsyo+vgk1AfZAXqFCPBIaOhdPhXoDeg6rpRbkg9lhf5ewssP4PI4UZfh0FEyNft7ae1kdIyR04OFUTjUs43wnLjM6uVxin3HVCO9AgjLp0bgQQUIhBAgGfw8dkKpoqSbavy4Cw1NdVX8i/268=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nFgi2QlS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nFgi2QlS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C3E0DC2BCB3
	for <ddprobe@lists.linux.dev>; Mon, 21 Sep 2026 20:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790023233;
	bh=RqARFOXmmd19aZMBBjE9t9dW1R7inBhvBqyMjSLU5l0=;
	h=To:Subject:From:Date:From;
	b=nFgi2QlSaW7QKHhN2oFLJCG723i4eigEG/57SzApgLRcurFYtPfAbPJfvHoF4v23Q
	 UimtkYGdo2Dm1zpLTZdKrhYRpzDqDXi1ppLMz9M67ppy6PlJyZHufiWaz7KxyuzY+C
	 d7Xzm3M/RrczVgkVzzMhV9xU1U+njtUIQ6aDKJydJwp9zdhjq+tzmKiFvssrRNlRUX
	 0ckYFQOqO94j/RMu06K88EpwuqoW+kpv3XxgVkcnSMa9EFzsRPTrrTobMzuWnH9z0f
	 MWzHiksxf3V5GfIIZWOO/g2IadLgQ32EE8haMCONvUuwdcekWlGj7osOh4N43P6NTy
	 I36h/gZGkxTfw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2079C982E6
	for <ddprobe@lists.linux.dev>; Mon, 21 Sep 2026 20:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179002323371.26176.10127433164105258534.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 74b88e7c95a101100de6ca7a01eb565688daf948c973bbe1c972f71f2d1db03d
Date: Mon, 21 Sep 2026 20:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790023233
