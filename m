Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A8DC57C9F
	for <ddprobe@lists.linux.dev>; Sun, 16 Aug 2026 01:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786843834; cv=none; b=sAEXPln7TFLPvcBUu4rCO0dOMuYzCcq3HXOAK+KjDMDtvXnow4dZ/eudvIfugm3zmN//XcvopEj5jYkC+kBpEVmAO/nU0u7hHt4uD4KLT+vTLf0MzAxvb6FSPItYNJOULkfliVcbBlF9UcLi3Mn2TA1ifcnuY3/wnTjJJs8jaCE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786843834; c=relaxed/simple;
	bh=P9vqeRKa5KFqojoERE67jCjkeI/9KsLzbholx0DuT60=;
	h=To:Subject:From:Message-Id:Date; b=mQ2FtDFNnAJ6ZdiXzkyKGHHSJ4TnXIvl2mLBYNOws87g8RDO0HsJFsJhYbR5v5sPQYkb1Ed+nMgQF6Nci+TwgRN3TxnALACzZKYoPkc20ChYOc5xQ8WM4xMef8zKTV4Nhw9bSjpnylIND4X7BkLlqIWN3t2+TQ8HG/0lj6GYYwA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=moZ4cixk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="moZ4cixk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5F0FC19425
	for <ddprobe@lists.linux.dev>; Sun, 16 Aug 2026 01:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786843833;
	bh=P9vqeRKa5KFqojoERE67jCjkeI/9KsLzbholx0DuT60=;
	h=To:Subject:From:Date:From;
	b=moZ4cixkzDPuCXgCw8jXZEYyWRk95g77z67q6AsY1DuCjjW3SYyvGsvDRMYGp6dMU
	 1+D4p5dCNt6y9IryuSaFe/lSOWqNp3mSC23QWJdQzF6r35WzCsNL7ZXSMklQvFB2gQ
	 rdeemCtkV9TLYru4DROBdZWlp3AfRd49k40/wX4mg7OhJSV5i+tXMYI2woUP2HjuUL
	 gsO5cTJ4k1a1mLhkORtbWIvaSveodlnPoaSmXYlA2xQ4lVnm3HiQc+g9a/7Uc0t78w
	 jsMTKrC1RwVdlAjTe1lpihvNaXRZLoanqMYFFBdjSvmQ41Udkacn0lInX5IA9Myc7S
	 Ef3uadATu/PTg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF5DAC5CFC1
	for <ddprobe@lists.linux.dev>; Sun, 16 Aug 2026 01:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178684383369.25274.16386143538068452353.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ac7f5604d93a78c933798bfd5ace0ca5a03377aa56839ccd07e8e93b37cdea8d
Date: Sun, 16 Aug 2026 01:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786843833
