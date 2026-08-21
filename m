Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6A83238A299
	for <ddprobe@lists.linux.dev>; Fri, 21 Aug 2026 18:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787335834; cv=none; b=U/4BbJDpwcdkf/ohCOGSuiv5lBuh0+ZbuyZ8gWqD5lbmFv2xGhzPSHIgmxonPPIeMvxorulN1Q24bZofhDEIH6dJv8Ed0nPyAb3j4Tnv7MDXyMWt4GyXSc9QUVIFon27EiJ9Tcj5Dq1ffdS4+l52FYKD86E10NvTcVMJUxr5CPM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787335834; c=relaxed/simple;
	bh=6ooRw2IdWP4aIt9IabxrigFCirdgnJ31I8VOiZSoLlU=;
	h=To:Subject:From:Message-Id:Date; b=tTGm5J08c7AEON9xPAX8fMneppWKTEGrflb+map2gqMFFRkJ/dsaeu4J3+95FqcJHoTlfKO3nSuYsUvOpLXM/t/y5fFM8bY4ggEqI1PWYSk/xbrDGXSCJ866cIZrvbvxwJ6dYd3Cmvgyd5Ft2wQcx0mfMK3PTOaw+2DXGgJZsn0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=C3eA7+rN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="C3eA7+rN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC593C19425
	for <ddprobe@lists.linux.dev>; Fri, 21 Aug 2026 18:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787335833;
	bh=6ooRw2IdWP4aIt9IabxrigFCirdgnJ31I8VOiZSoLlU=;
	h=To:Subject:From:Date:From;
	b=C3eA7+rNCfmfKSt2lElzv75KwcUZEACeY5I4SLDMEKZERdZTVEtONTDnqEBd7vtpY
	 IvR418SKX4BPAFJiE2fKUYU+LCv8l2+PpqhdBVEZb6i7cJTbWhyGPWVPcUJ9umrxjy
	 Ekqd3DMRmgHv/yYCXU3P20SNGGqTNeepdIGhAysWQg79CDU/6FELmn9+4SqO1dkxZh
	 pVKBtI2g/Rn4Yq0tv0Qf0fMhIng8in3pk/7Br0UJ3Fcgv88UBwTO649Y6GrGUMXm0i
	 tOcXHRtoNxqfyAlSphzuyeiOLMiQXccbbPFxi9/v429k5CG//efwiSEGiUp/oSNCk8
	 +M83UklZAUBag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B21D5C5DF8C
	for <ddprobe@lists.linux.dev>; Fri, 21 Aug 2026 18:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178733583370.665.7937323114695372564.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a53d107411c209fb84676bc5b6ec0de52ce4e380d569c0ef8c82ac3a15179dc3
Date: Fri, 21 Aug 2026 18:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787335833
