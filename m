Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A4E23A75A4
	for <ddprobe@lists.linux.dev>; Thu, 18 Jun 2026 06:46:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781765194; cv=none; b=D8LhAkZdgfnoVMUVCe1Ee3HdwN1X7mvU7nsAQqoNNT6tyQcqKkgRYIGlSK4Xa90IfexqATnbwoG/6WvBJFuV/qGNUK/VrEUIPRfyaH548Emjqus0ZF9ZMfV78F5YE3aJTnzh4tY790KUS/f1ZxvN6nZh6xII1bJ1RNPyIpsBcu8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781765194; c=relaxed/simple;
	bh=/2C2pKHxxd5L+JHqiPPc5Ct0BkFnlt28lW0UCWVQ1jI=;
	h=To:Subject:From:Message-Id:Date; b=qwnZeRRPhoPsZDfotoOtVtMbq0iAbxK9UVSZy9yZ3oZTO1e/93M2tbAKhYdfOcKZta7sNfKd+9NU6hF7LZbs4S4EkBKiCyhMstNS0pl/9VkI3js5xlArlA2fVMDP/b1poIORg2auEbIQTMpUyL8uwo6td07T2agKJ0393OxcJPU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=K6pXQ4Nw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="K6pXQ4Nw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1185C2BCB0
	for <ddprobe@lists.linux.dev>; Thu, 18 Jun 2026 06:46:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781765193;
	bh=/2C2pKHxxd5L+JHqiPPc5Ct0BkFnlt28lW0UCWVQ1jI=;
	h=To:Subject:From:Date:From;
	b=K6pXQ4NwmKLDMn5xzhz4aoHBk1JJoKiJ0bK9YIse7ARZa9ahYiUlETrKldC7/BWuW
	 YIJpPmc9keXW8phmVp8WRt7Oh4ZZOEpiOLDpc7gHIAAHYK57lqa4Ancc+OOirK05ss
	 zgYq/C9ksw4i2cXxzn78RFC0Y7vacJTGSsJTJwZrW+8b7hPRlhWub7szXWiAEZOmqt
	 qWgDPnJrt06uQYoYYzb0DNasgYXSmvvFRB6SWWTpCqW4brtHEN0lo3aVnavBLtYG/A
	 +CY3YxhSpqskORI4Nzr03hrmdZMQOUEm12p8oZlL5uLL2Qw1C2ehTnEOk/vxULQ9xd
	 eK3DMWQgV6wiA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB5A9CD98F2
	for <ddprobe@lists.linux.dev>; Thu, 18 Jun 2026 06:46:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178176519369.8641.4892816882372906030.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c0627bfcfcd65104947a0aff56fbdfaab5253d9782b33e6460bbfa3fef084488
Date: Thu, 18 Jun 2026 06:46:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781765193
