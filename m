Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D19AD3093CE
	for <ddprobe@lists.linux.dev>; Thu, 16 Oct 2025 12:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760617193; cv=none; b=XRwfR/QscD3hX4DsFv15DQrpSNW9IcWTyfYPFhTEnWa8gxVTNEcDj5r/KRdALnOkpsawSRjE1t1SRoxQD4edwa/pSp+rhzT9lgssFb1RzWxOjVnutCcfAvfb74gfmhhG4tUF/m/VU7TK7ASFJ9tjrPcfc4S4OB7baOBj0WWE1+U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760617193; c=relaxed/simple;
	bh=n2ty7cGSL5icEhLXGd/NO20u1nxYetopoFBhDYTL2SQ=;
	h=To:Subject:From:Message-Id:Date; b=IoR9l1CDUsn+dxOnsodxOWyT9C87BRuvn1zAdY2k/piqJb2gpiI5DyHyKaXP/6HLNNC995SgeUmX+W2uhnwJjPGy+KmwK0/zGTxnM71L/9IuHQH7v3osQT4H/xs6BzFt+v5QWeMfkkhPCvCGGpwFfvQWJFGZXEWtLokbjFOU5z0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=D+pmRPDn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="D+pmRPDn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB002C4CEF1
	for <ddprobe@lists.linux.dev>; Thu, 16 Oct 2025 12:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760617193;
	bh=n2ty7cGSL5icEhLXGd/NO20u1nxYetopoFBhDYTL2SQ=;
	h=To:Subject:From:Date:From;
	b=D+pmRPDnLHOLbm+qS+cm0N1p6D71IrZNnlCUr+NK7j2AMu2ehp0lf9Khcah4heG84
	 pHpRKIilP6off/dIODBlAil+5xuug4Gud3wM427Drg6mSdXzu/M6+JBV/ZsLKHd4Bn
	 INXnpY0Ljp5OQgzv1CfegJ+bv+DNV8pDVSDlL1GQjWLIwKWTUnR3pIDwqUkGr16qbx
	 M2gLS5llIwVL3QWo8OjpeHtfXUM/Tp2bm4rN3j9FQjprRG5HP+yiLwvBkeCIkTtuZY
	 K8mJySwIyyqzZLSsU/SARxsO5DzmAKn4F+XfoEjoHATSKMt6bG2oUFHsrrjZUvugca
	 Cie+i5cslHETw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99D7BCCD183
	for <ddprobe@lists.linux.dev>; Thu, 16 Oct 2025 12:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176061719362.1814.270143773325015901.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e63eadc8004ba84d534cbdc31f5bba3a7d5c9dc4eaa8d5c941e1596218c63351
Date: Thu, 16 Oct 2025 12:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760617193
