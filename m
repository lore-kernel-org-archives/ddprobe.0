Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B09533A9C1
	for <ddprobe@lists.linux.dev>; Thu, 26 Mar 2026 07:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774508694; cv=none; b=ltLzyjmSVmMaqR2BzCwDF9vFTe8cIZOstizBp4fZoxbowLrmkynfD3lQovrPReTwx5dqceh9tjB+5ekONYnBRBbsrOTLiqsj8Vcj01N4W28/lRmC38K/BSbKuI6PLtR3bHTSqZlWRD8nnpz6zbXszzhss9ifvVHmZOmATLb056c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774508694; c=relaxed/simple;
	bh=FgfxlV5cvp4MitSdd4Gy2jG8NaS9L7AGz8RV2yezp2c=;
	h=To:Subject:From:Message-Id:Date; b=ehQfAZlzg01/RCVQkU4TOdjVumOrbnQZUcJXY3COEvqrD2XLE1sb56+2r5Q59CmqIfEjYSl8n1+5OYPuq4Sp2EfGUOYbw4XfiGFTZaPXHniW7mXCUqZ58bs1twX5KVeiTMLEpTTbc2N1IFh62L2Da1Rn0I1HXKSTudfWDjtgkUc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QLx0le/A; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QLx0le/A"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABF9DC116C6
	for <ddprobe@lists.linux.dev>; Thu, 26 Mar 2026 07:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774508693;
	bh=FgfxlV5cvp4MitSdd4Gy2jG8NaS9L7AGz8RV2yezp2c=;
	h=To:Subject:From:Date:From;
	b=QLx0le/AYrfj73gPMDq1lG1pfz4+enjzkEFEMDFbUUCpy2JhFIMiiGAdIyYhMM+1U
	 Knqi6yto2wOh5+9f4OrrVq0NBlrkZLvX5/T1U9067pNRFkYXUCRv96X5Rmhua8JpTD
	 y0CtLKlkjPmbDJzbVhZXKrXV4jQCUxJLDDnaophPSSLrZEDlbxIDRzlTOOumme1vzO
	 Ld4VEOgm7/i615B0QqLh9IN31N+LRFWtT2D6Wf7jNnQaUyNFv91ZELovhYgtjhfyXK
	 BGBcxgcRO/Hwo2MI8i2REXCFvbqAbZxEN8DboHCB85vG+Wxx+f0ZTgnM85TcsWZlrx
	 u89I3fD3xlEOQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96E7A109E55C
	for <ddprobe@lists.linux.dev>; Thu, 26 Mar 2026 07:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177450869360.6567.8009150280622409910.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f8f63b0e24ac4327704493804acbcd6bcae8bfdbf92c3a837128f69bfbf2b544
Date: Thu, 26 Mar 2026 07:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774508693
