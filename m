Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B17117BA0
	for <ddprobe@lists.linux.dev>; Mon, 20 May 2024 23:02:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716246143; cv=none; b=Rh6IHJibqMJJCX6fZZgKRnuDslNdLkZ46n8yEeNMYwRjTQgCBUTWRKXgTKIRZwg8fuzcHmfKtYhgmeIPL/shk+xrAkKZbSoaIa8iC8K+qHrh1ObElH/VvTJujJ4SN9QOUqqG3mGIZw0QILgeb9YfrMIGmPoDKwlReMCLHx4EBOc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716246143; c=relaxed/simple;
	bh=UebhBiwWRyKaYNlHrAg6UAQj8ZPOKmAeVOX3XLc5tUo=;
	h=To:Subject:From:Message-Id:Date; b=cLIhGoYvf69+6rJ9CTlCNlCS1EmNItHz4/cfbvFNQJM/iYispxWp+H87T82FsElqXZ3sRvaEpHmShdrbe43V5LnpmReAg59H5ne27IeH/ZKnSBmL8i1ipd5SHz/2WQPmZAmeiIXwKdLUdfGxaKYjG0yGn/NkxZI2ah1kGkbkJTQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BsMmLRfc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BsMmLRfc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9AFEC2BD10
	for <ddprobe@lists.linux.dev>; Mon, 20 May 2024 23:02:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716246142;
	bh=UebhBiwWRyKaYNlHrAg6UAQj8ZPOKmAeVOX3XLc5tUo=;
	h=To:Subject:From:Date:From;
	b=BsMmLRfcZGBlCR1+vLg6dk5fEhYplhT5VHqp2xhbgS1MXZwMpUm3iDKq6StQtPjk6
	 qlidRKlgMsXKZH6+QBVmqTew8QnNAS6yJ0DJ4kCTTqfYyufzjImCXF+/VORioppw1A
	 iVO+gNXbUqxcu6urhpj6ZhmV11TUvGoVgoJmY9x4aORsmunfPNXaD3XGaxLW26M/hW
	 e4AHDvw/CPhzEqpBXePc4K5DXbcHR5mjIgKnA867PtkzX2nMD0YiqNz8okSMLQRNUO
	 O03uhug6vtgQc4h6H1QAoAMTk/f6IY0yD8Tkj6n7Y4sgH0/K6uDHCcSNgDd7iICNHK
	 XnAJ+7NfxHMdQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C6737C25B77
	for <ddprobe@lists.linux.dev>; Mon, 20 May 2024 23:02:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171624614279.6539.15740387274344434603.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 200a7ee1670d55baca993ef86b0e594b2eaf35208d61bf01ff5b78d5493d5458
Date: Mon, 20 May 2024 23:02:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716246142
