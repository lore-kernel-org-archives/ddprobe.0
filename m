Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 69C281519A7
	for <ddprobe@lists.linux.dev>; Wed,  2 Apr 2025 18:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743618595; cv=none; b=eh6xgyEGOjuz6ksyjK85ssO323yPAYmDx3OoINBbW5ni5aiA3Am59+BQ04amNv1er29p7K+JAsOKeTxCFeunaGD3iHdvFUcDxkoxxJvLBrFKlsDhhx0BeiWwY/BNGUa1vgKCaFPbibMM0cKO4LcqtmDZPNEGLcTlBb28XcExIe0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743618595; c=relaxed/simple;
	bh=ifVq9qxHsNLGvW+SDCI/zE3UmcjQgDFvsIEVMdl6Iq4=;
	h=To:Subject:From:Message-Id:Date; b=pXdm4sbdsyxwcoda8UAkgfuk9mOnf7H3KTdHRilbsggEH3z5Ap7TxUzxWFj/GA+QxW6+F12PJ7FloOn8r/l3tVlQDvDDZRjxpj/X+T1E+4QWz7fYBGhZ0qkqNQRe4saTokpe/5p5aqdMzTpl2TekwsVSpjweaAghcmK57+sqUTU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UdDO0kEK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UdDO0kEK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CBB1BC4CEDD
	for <ddprobe@lists.linux.dev>; Wed,  2 Apr 2025 18:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743618593;
	bh=ifVq9qxHsNLGvW+SDCI/zE3UmcjQgDFvsIEVMdl6Iq4=;
	h=To:Subject:From:Date:From;
	b=UdDO0kEKuSYIIMkS+L+88cxBJAR0ByQGbphsK9PGEMCqDDpJdUZwag9Rt9DxOJWHV
	 v+g6kXlEMOvVTo6iYFsMvH8o1nWYmBogAxda8X7eCS1+RsqXyYySMWwEiY/tIvDJIn
	 ru71su2zKVNoHFu1U87pyGkI4vJyFABXiPtO7L2tmrwYLJvYi9ID2vABcBhhhecGee
	 QRj+U1BNO0PYGXdEGn8K9QEIQ49oHum5sfSZ2pAvcJxur2zstQ2Vg9efJyc+Lra5FC
	 xUfIl5svj6zw13Vj9tfNXJnF+OXY/T4cOYPUJm5VeGcikZ4iW0FnifbguwNnVrWXbc
	 B5Ic2riUuu7tw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0518C28B20
	for <ddprobe@lists.linux.dev>; Wed,  2 Apr 2025 18:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174361859369.4218.1491298487310767219.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 060dda8d1615064a9f140f207ad8a2ddf0597767869f9014eec223a3e6c23358
Date: Wed, 02 Apr 2025 18:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743618593
