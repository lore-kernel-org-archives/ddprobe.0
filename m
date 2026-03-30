Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0692013777E
	for <ddprobe@lists.linux.dev>; Mon, 30 Mar 2026 03:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774839894; cv=none; b=IWwFJqjEV6psALafOhCOoYlf4U9LFM7WTFoaXv+kJt6Q6MYrXkQO7rFDkgirMOo1ltPtLP8BEkynK9H6N/gZasgTjK0ahFk7rDMIGSs2Wc9P2XQ+w7ymuhjYdu76BcztV2wWwNbPEzhnMylpzj4lILYDkc2ftNHCsG9vysb+YFI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774839894; c=relaxed/simple;
	bh=w3UhJ72GzNE/il+UtRVIrXaoWsh/tp21/LM0Sb+v0jg=;
	h=To:Subject:From:Message-Id:Date; b=BcSQWL7cyyqxNzkfiDtuXbYkf/n2ogFPjZI2Ojp2GS2Dp/DBd2i54gUBUHUeY1qVt6EZYnH7hYaeQE8j0FdUo7tKStwDSt2C61ABjbq2zS9rbz7nT7WRglI9g7CkpbFnMaIeZS+TUtKV08reYf8JYxjkKDr8ofz5LEl6+y8Xmx8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=p6rkOirO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="p6rkOirO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD7C4C116C6
	for <ddprobe@lists.linux.dev>; Mon, 30 Mar 2026 03:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774839893;
	bh=w3UhJ72GzNE/il+UtRVIrXaoWsh/tp21/LM0Sb+v0jg=;
	h=To:Subject:From:Date:From;
	b=p6rkOirOJKVWekjeIiTbQDs6sHJKHz708vpMaZN5IfIDKHNIxKgCeni1n3Pb5xgRM
	 kYQzoZFV1UOt/ABf5hLTeh9lSLLhJrOza+ZZs9sG9n5HDsGwoKDCF/cBXCyFkg0yYj
	 xUDlIxGZyAh43VRXeDvNRs5ZrzxbIFl4f/+cITbbffRTK5JQ+41DXsq11mkQ/1fjYT
	 w92UgpAjFS6TxCNbDUMq+EP1U/4VSlqvei+VKtnLRprYkT2URxR974pEQ41A/ojSxk
	 qpi32vR3vu4GvY0WgNkXAtNOlTdCuQDNaQKmg4K+4kQwFl9IdSp7znmx5uLcmnJNtb
	 f2zdmKL5tGWCQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99657FF4934
	for <ddprobe@lists.linux.dev>; Mon, 30 Mar 2026 03:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177483989359.19020.11277178552792472073.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 35860da6263fcc68e4d72452b1b19bbc51aedc8e288ee5c3eb5b74e1a197f26b
Date: Mon, 30 Mar 2026 03:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774839893
