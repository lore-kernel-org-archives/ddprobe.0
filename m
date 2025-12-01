Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E63C21348
	for <ddprobe@lists.linux.dev>; Mon,  1 Dec 2025 01:12:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764551574; cv=none; b=ppf7i+3rBwTVjWZcqcvtRRtPCymNgjJW9HJFNXIuVrscPExNuurQaD+4PPaA17Hu2+kBNTnzK8777PMEP5rcJb+6tuxIgpxYRrlHkWiH7kljkf62Cxz/vJi/Gk9Y2i1sudd5Ka4+qZlHHmRzCJlOerUa3jwBM+2s4euhO/urlwA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764551574; c=relaxed/simple;
	bh=2Rl4/JD+VDnGugVDefDax03/EGGr0K5RpxTJ9aZdK8I=;
	h=To:Subject:From:Message-Id:Date; b=YDwzVkitD+9dhJ7RcPRrqfGN/3oOsruNfDmK8964sVTFqA8G/uRgf2f2/u7x8EDzNFl5J0KOCU5sLO0X32ni5J4EMYlyPaTYhSrvZUgQuolvpKbT9gxhXyj+vxo+2xKIP8V3AAzoVGhgnERQiYxgp2jbsAYajeJsnqMtmL9D1y0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ckFuj192; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ckFuj192"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD172C4CEFB
	for <ddprobe@lists.linux.dev>; Mon,  1 Dec 2025 01:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764551573;
	bh=2Rl4/JD+VDnGugVDefDax03/EGGr0K5RpxTJ9aZdK8I=;
	h=To:Subject:From:Date:From;
	b=ckFuj1926FHEAKqJltU+75mChH5vv9fEoBHeqe584DsziwxYDppzRZfLNJzyegOcN
	 ih+rtgXQdpujWLcPhXkw0vS3IHeGFvbvE2G2hXBYRp1qKek6v6HAE2qqqAmFRgKNKq
	 1gVMI3PKC9v5x4OebZ0oZLSCnYZWnuzRSvu9BRqD8X4n28qgtHXSm76ODHL1EFsocP
	 pkHONB+PStCHKMRzGU9FqxWswUkB3cA42BhiCObmYWlI4UooksEnPATnJZkPPfJRxT
	 2UjbLh9hl4VTFvGrf0ebZ4pUs9uHQGIF1JjTtRyslHMu9y5EmJyWEyoC7bKwPrECYa
	 X0gbrgIRdvNAA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 964AACFD376
	for <ddprobe@lists.linux.dev>; Mon,  1 Dec 2025 01:12:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176455157358.25559.16856061837859746832.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 334f86cfb70aab73b4fc68bcc372ed6923815ebfe39a704dc187bdf8babc7890
Date: Mon, 01 Dec 2025 01:12:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764551573
