Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 03E0E34DCF9
	for <ddprobe@lists.linux.dev>; Tue, 13 Jan 2026 18:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768329834; cv=none; b=sZGanSNVqErdfXwu0UKw9WDyLn9wZQ8BWYZ4r73dyIdQoYNoCHz3/mAimiP1wmaB4jbtJcMqWkz2RxdDigwJXSvvZAByoFHtUNkwCJPJVaWyNaJ8CpfC06joVWjPRYkIgeUSmeCACCbMkX7vXgJyayLadM8plufNdQg4xqVB9Jo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768329834; c=relaxed/simple;
	bh=OQMp2W4uKhiqiqTWb7A0olxKzpDpDH4UOL1BHa1+sVI=;
	h=To:Subject:From:Message-Id:Date; b=MvioXvN9DNbyo+qd2n5Nl9/YEGNpNi1i5mQng/GI/Whyc7X5kPx1z+4TQ+6MvdXBUzP3odAQxZCGAVAWg4a5NVmQkHO44jag1cQATjq/YhVfzskN8iYkHM+wOUGZvp/nSlTbqXl5+3hOuIij3mRdahuTag7sA+7qY7ApBzcmHYg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XrHEdZKx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XrHEdZKx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D27AC116C6
	for <ddprobe@lists.linux.dev>; Tue, 13 Jan 2026 18:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768329833;
	bh=OQMp2W4uKhiqiqTWb7A0olxKzpDpDH4UOL1BHa1+sVI=;
	h=To:Subject:From:Date:From;
	b=XrHEdZKxSMlFFP3uUoNWhIEi9yLzB1RZuV3ZHCpEeGXVETBaWY1BK7kZrFE8gDy0r
	 SLVZwB/pXqPqD6H7iULroYQPqauvlqFBqvHMC9D4ZG5hg7861JrCrM+ygLTiGrJ3Ix
	 RDGLuarhzVxaD0FEq/UBaFnJ7Ld8/z/r2RUirwLJM2LqNOt+0DoAxeyBh/8PjWvNBe
	 vR4bD1tNonA8E6CivYSt+UYEjeiN5BlvpQ1WBPeMw/iuSVC6TTOna7scDg2AjgzPQM
	 oYJWEtVpQ22RNCN7qmoQBT6mrCTnb7xSD/N6UG8Wd8irALhho8V1fMf2kS49pGnLJp
	 iPtasBJWS7vlw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F3A0D2F35C
	for <ddprobe@lists.linux.dev>; Tue, 13 Jan 2026 18:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176832983357.4748.16357393500139364304.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8f21e027af0955a692cb6b5af972b7a66afb895109beab8d2f7c0573af0fc132
Date: Tue, 13 Jan 2026 18:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768329833
