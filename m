Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 393643BF694
	for <ddprobe@lists.linux.dev>; Mon, 22 Jun 2026 15:36:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782142594; cv=none; b=NtNOV0oOVQpQAF+L0uI2zN+cCp9Ows9t1oz4b9nan/JdW+jTJkzfxibHw7EP1Z2h9kxFsToi/bL/Crd9pDwuokHGAQTya9WFrfp1zMGgKPCwlFXar4YoFf3/VaxpBiZyNOr1KQu6IkQy83mgnwx62FQjVkYGIX7Yrba6TYfMeJ8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782142594; c=relaxed/simple;
	bh=D6kzMyQNYOg7bDF0CvZNx+RsobBMibL40e+d4Pl2q4I=;
	h=To:Subject:From:Message-Id:Date; b=n/o5IzXS2wB9Ku7VYmFc3DCoUyjklk6JqkAzHlpuuN5UyhYLnDPCscza//5BDWOdQuqkgMulQZZ34aCGS5ICnrcscKx0eObYfNQj5O+TB27ogoVWyUfjU4A1Fnwmq8kSVmwRaZNekpGTTWFtYiVm/4VBbQvBYzF/VYIFHiCouvY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cW2yvS9g; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cW2yvS9g"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C8643C2BCB4
	for <ddprobe@lists.linux.dev>; Mon, 22 Jun 2026 15:36:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782142593;
	bh=D6kzMyQNYOg7bDF0CvZNx+RsobBMibL40e+d4Pl2q4I=;
	h=To:Subject:From:Date:From;
	b=cW2yvS9gmMdLt1syP94X/Slw4NRa3yhyfkTt3m1N0osuRqn0D8cd6yrQPDTHnl+xt
	 a2GzsXRD1/qLAiUL+cXH7LD4dn+5kYz79I65HMU/gf+34NQPTX/J1K+UR4J5jgYyad
	 7BsKZ8Y36x31n8TG+kiNj2jppSrWnH+KKBWTi0R5/dQQuFFmNnNWIQ5kSnaCdaUPDe
	 /MiJnIenEtda5oyV5ziS8IvlS1FiW0OofnFF3TrwmMHHtNFggQo3VguT7uGn0TxOeA
	 slGlm9ZOCG1CS9ed9JiG4hmIH4VqUv5mwH5jY7RF2L0OVKKJzpMimR0w7vZ2ubs8DH
	 gQloIEjaKD0NA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAEFCCDB46F
	for <ddprobe@lists.linux.dev>; Mon, 22 Jun 2026 15:36:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178214259369.29081.9323913927658019546.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 98c57fd22b175f8c7c7e4cc1e43611a1ad27c41d0358263ca50ec67d9e4cc6eb
Date: Mon, 22 Jun 2026 15:36:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782142593
