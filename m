Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F2C51843
	for <ddprobe@lists.linux.dev>; Fri,  2 Aug 2024 03:35:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722569755; cv=none; b=YJHbYaUK4tnqzTWlq7LNv3m7d2dBQPFuNqnLhVyKxftT1L7rjcYwYMjQkJvDD2QNfR8chO1bGLf43/2BcCrx4cxiXHJ5zg51Ow12VD2g1YmAxODQkILewUc7CiNwbPqd7A6b1vmLHmrU8WV/BDmChm8GZZviQYKECMlPy+lYtMQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722569755; c=relaxed/simple;
	bh=Cki8ZnpG574Gkd4lbBAOPudbs7BJ614dpsIr5yhG4y0=;
	h=To:Subject:From:Message-Id:Date; b=V9K1By8VtEfLyNDUJAamhHRtRqbDAk46ThO+BbUEJdyR+HkrYUM5EA5lS3DVQTxoAP2736rLv5jN0olJsqeUQr97qhCZdnHfdJw+Yk68jS2B9MTundOuCu06bUn4CbdyjUlLQFxE/g6+L3wP2jMYvdnu9kKTfY2qhIZ4+lBcGpw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=C9rDOzzJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="C9rDOzzJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B66C2C32782
	for <ddprobe@lists.linux.dev>; Fri,  2 Aug 2024 03:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722569754;
	bh=Cki8ZnpG574Gkd4lbBAOPudbs7BJ614dpsIr5yhG4y0=;
	h=To:Subject:From:Date:From;
	b=C9rDOzzJgTFPQ8L/5DcPlDtoRGRh6jgnZ5tpe/ghpXFw35sjC75j8o/m/mvELQ9Ld
	 TtMIoH8wLPF+O93SDPgpe/W4WoQMF3BBUJPtao7zhKcq87XjJsTQl1q5H5CxYPxxYI
	 Gidxpx8Ab5nlBpR5GF7l+RcLUHDwNpGSl8Kw+5DOZL6rRGsGL02Ui/KZBbHeO9uMUe
	 CUEZJZWNsYWz9eM+hZh5xOzBBHEQHgWfETsaz9G+zTIHaAZmQP+BDzswNg8lcXDT1M
	 wVNYrQLZFR+O48Uzu5DToSpxwYgGPHQCZ6iTivqY5yUMHFszXaIHnoLHAB8v/tUAD6
	 67EEMYam3VFEA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A127C3DA49
	for <ddprobe@lists.linux.dev>; Fri,  2 Aug 2024 03:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172256975359.4199.15452798497721573573.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 832265ded6c91d29b55cf8ae72ac73615781a63b008052bf0cf3ec872a45e6a0
Date: Fri, 02 Aug 2024 03:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722569753
