Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 86A85450413
	for <ddprobe@lists.linux.dev>; Thu, 15 Oct 2026 06:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792044634; cv=none; b=mf+a0g/QnXhqCbF5hglgqQVwy9BIeila8PqE0E1U9guFFQora8ec0DYTes3FcyqfyzUNLg9FilkUTnvklO2kVAz/Jh7+qndr7ZB/X83eehf9bZoHBI9wcoBvqVFWQbOP1F484EtKBpaUVNZzqqiIKt/MnXzlFm7pUuR609JcDL8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792044634; c=relaxed/simple;
	bh=m4MGO/19ccfv50iapuk3lY7LjYxM6ig7H6Gq142E3AM=;
	h=To:Subject:From:Message-Id:Date; b=GgEGhyuLi6WGVRUV0lrm6VGakgp60eCBwD0b9rc3/AawigdfvvZX8ArxveIDDfxgVHv0JMHWDbSOQBIljxfxgEMOZwF789WWsyKGnqk6hHR2bFbm3n9RxLnN+eIg0+MD8SgdMnd6a7p9vO9AQkZ1hh3VzY7ajZRMWCZYjzrv/kc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SbPRNjII; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SbPRNjII"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E9DFCC2BCC7
	for <ddprobe@lists.linux.dev>; Thu, 15 Oct 2026 06:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792044633;
	bh=m4MGO/19ccfv50iapuk3lY7LjYxM6ig7H6Gq142E3AM=;
	h=To:Subject:From:Date:From;
	b=SbPRNjIIumtezOIP2Z9WvxpnzCDIhO65Z0Ah7rFPihSaLf6Es0HrBsFPRE9/A9dsM
	 6cyeY7B3tbsFYF18DkO8EalZFLcJf+iFweL28dLzH4pKxANi569zFI+bLFNgEHgwhO
	 DsfjTt2vSabTQZBFg1ramIuUaNgmAvcrkZhUzt1hJ7K0IzxYB3hqc3XUWVQX+i6h5O
	 MziA6YJclgZWaMmNEJy5Yp7O0uJF3bevAFJg5ujLiOmDXCSIO4yN8NVuWyMlGfiMOh
	 3vnw8r0lIoWLBNJdbORTmT8P/uMcxE3xPV630DdebZMXN4QxLKDh0++zJDDbEXeJMK
	 Zo17k5bNt+ngg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C089BCC6B2F
	for <ddprobe@lists.linux.dev>; Thu, 15 Oct 2026 06:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179204463377.10258.15129235818339394058.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9e89e1f38e3c5e08c6e6d5dae232403a27b24bf781a765551da7f74c960c0d3c
Date: Thu, 15 Oct 2026 06:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792044633
