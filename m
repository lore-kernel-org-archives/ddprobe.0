Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6E475849C
	for <ddprobe@lists.linux.dev>; Mon, 10 Nov 2025 04:39:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762749594; cv=none; b=aT8m1mTpEQEkgng3KEOjXNLWgjPp0WDkZNV+gHt5/zp79lQoODZhjiyR5h3T/Mfg/ySB/PTQYguDfX+svxBVV268WK6j1hIsjkdOKjZvn2U7dKXdYMJf/jKqRJhSAGMmQ8gJw2wyHRpDEQxMHMHwjnhsZjcCGFAWZgGrYm4H46g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762749594; c=relaxed/simple;
	bh=Urfk3M1mE51Rzhq/+Ox9QcHwT4QdlfycTzPDwgdtGPo=;
	h=To:Subject:From:Message-Id:Date; b=F2YrLP77jqNccAbm64K4BxKkUX2UqgEqfODRXF0uMWpNILIZPJPDPY7MDDgZ8IHNqL3nlUPHrCe7jAt5NoNfYoC6zXYRnBZ/TJPmWJlbSuGWCpAeazCwXivz1q3n24dOpehLpqEYA3VRjN0Jh5vfvWPP8RwiBZcsSK2UJ+ugnEI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VQqArVc6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VQqArVc6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA8D6C2BC87
	for <ddprobe@lists.linux.dev>; Mon, 10 Nov 2025 04:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762749593;
	bh=Urfk3M1mE51Rzhq/+Ox9QcHwT4QdlfycTzPDwgdtGPo=;
	h=To:Subject:From:Date:From;
	b=VQqArVc6FUifDy4AZDif9SZ61IMyE+w0r5xDOD0iMOWszuxFUV2qdjtETw2+WHFdV
	 1JKZS8+No4EOYTO/ZNbTSYJvHdv594Y0DssJssUdorI3a0n7NtmZN7lemco4ISwwjp
	 uYd5Ox2TL80jiiOinWPc2GFtem5gCJgVAIS2IwVl7fZUZrwbcL/4wr6T3pF6NfTYTx
	 w0Y8ErpA8ON+ERnMeFu2CdLWwfZ36+gsMVn3thRxgWUhqYdV8gYwTUIfh2gjADCjjq
	 qwSI632edGqsPbC6qn1D6opLM1GB3SvOuqfKkHiIRvmqL5z37IIMLfVr5HUWYRPhcr
	 L3ABvZrxqRmEA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC95CCCF9E3
	for <ddprobe@lists.linux.dev>; Mon, 10 Nov 2025 04:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176274959369.14509.1576272866531165600.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a1cee7f1533ae4a9b5a010e4f9c85f3732da5240b503412bd6aeb766b2aae2d4
Date: Mon, 10 Nov 2025 04:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762749593
