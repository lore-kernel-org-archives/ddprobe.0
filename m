Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C7C917993
	for <ddprobe@lists.linux.dev>; Wed,  4 Jun 2025 00:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748996394; cv=none; b=AxmduixM+O4VhpAVm9SlNSjMcbv3m0+tCu4kgvWt+Fp3g0tw9PrNUzraXfYQwRUDKBVz2LBVd81OMPLiO9bspNQLOI/iTQrNfEDVCjIMG5edOwJ1PxGwWZTts6hXFMyvggI8HMyp5A7IqzP8qcpF/BMsTGoyQ2wdgykpdjJjgEk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748996394; c=relaxed/simple;
	bh=IaqE2z8IzdCb4ubQ5pkV8/5WrxZJjEBOL7iacX+0sl8=;
	h=To:Subject:From:Message-Id:Date; b=nJ6UMAcCkM/dP/nYZFjTwwIguuXUiZwIF+GVE/UPBiejJ76au3ibrQ3FIM93+Qvg5z5SgffKvDRBh7Xitjks7kENZHC626+VdY/lLAMwxaV0cvcrvlw0WJf3dv6/DzuLzBc5iokomDr4lByjzxSZkZnHzoKMm79e0i7iTercR8o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gC0oxJvz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gC0oxJvz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2B75C4CEED
	for <ddprobe@lists.linux.dev>; Wed,  4 Jun 2025 00:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748996393;
	bh=IaqE2z8IzdCb4ubQ5pkV8/5WrxZJjEBOL7iacX+0sl8=;
	h=To:Subject:From:Date:From;
	b=gC0oxJvz7ozai0Kir3/7lZSNq4N0YUN305CMSjtqGiTutleVNlfxm9wXCHKsycBtR
	 I81WHqjG+UhNhSJvcOjbKtFpYwEL9GPnpHXd3jnFVjCZizKEff8ytj3lbBeNj5x6DB
	 1+nooUqZVGvMS/efp8887Z+smHHADiA2LioF/TiHQSgflqc4Qc04MXAfyIG6D6HW3/
	 VEjbJCLPoFvlSebnB6+f2YxpBiTFRG5mZ4Q9/GU197/j8adjeQVseHxwGoRKzHzOHU
	 FoaS91itFN+jjZ/+it3AUBnyvl05aejAZ3YF0H63P7+9GkcRt6RQf13cToatArCs84
	 MHWPsnSsuTlwQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D21AC5AD49
	for <ddprobe@lists.linux.dev>; Wed,  4 Jun 2025 00:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174899639361.4022.2781001482633309964.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 447091e0e8f9b6396ca9552f15312d3d3ded0c384b347bd399d2626981b9e495
Date: Wed, 04 Jun 2025 00:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748996393
