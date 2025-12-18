Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28D071BC41
	for <ddprobe@lists.linux.dev>; Thu, 18 Dec 2025 07:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766042034; cv=none; b=U7tccFFttFcE4U9awlqij3WH4dk+dcFGcLg8nLIl6bLH+GtrKylQYCpYgpPBdRFBvbgN+gaJ+8cwfAS4eY4XTygpAg5QRb9ieRvW96RiOMaZux8MnuPgQA/xKTCHu/grwnCdQKhNFcyKISDuu/YW1CFGwTnBGBjNoWg4iTTzBAk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766042034; c=relaxed/simple;
	bh=raqEEqaIsaczBlxOqJSQxMGnNL1qpCqb+Mp97y2H2fc=;
	h=To:Subject:From:Message-Id:Date; b=tR6Kg+ZGl6c2QxBhf/wKnvvhUm8YfaPrYRjDHJOqCEaWxLFx4i9S3Ro4NExjKaAyvp8Fn1dBcLDxFDZhykKWtuN6oZ+QkuSeoAdKoQbXk6SEikJZm+wAkftV+F2nLLeCqNAJHS0x0wGyi9OAyIBK4eZBw5H8Aa6WwsZ59eEl+m8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=G/tJGxmF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="G/tJGxmF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A94FEC4CEFB
	for <ddprobe@lists.linux.dev>; Thu, 18 Dec 2025 07:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766042033;
	bh=raqEEqaIsaczBlxOqJSQxMGnNL1qpCqb+Mp97y2H2fc=;
	h=To:Subject:From:Date:From;
	b=G/tJGxmF9djFqNF6tMS6zwh+P5lRTzC+Sct+h5CqzIdebKcPSOfPsejn8R2/uDGSc
	 kqMXDhnAUO9kzpQezD8KlwZ7Kgw5lVB9214DIxxWn6J9x6v6rNAFeykIyplmYDQGIc
	 seT/oNdcXZMEWJ81Qv6Yo14Uxycsbg3PYLcywzD82mKV5FaamD3AcBY5ZALkpw0k5N
	 FrgfOBScRkZpP6GO5xOjRAUIqPkDg8Gh/ueUhjwWf4fn556svH2cTZAtsOW+So2IhQ
	 4+FiwxQv6PrlkRZDdExov9hnT5B1bO+mveOcHmZHxpNBbt3ZpTUKXLBa7hgdiALi7k
	 u3oecTXnQgluw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98D17D68BE3
	for <ddprobe@lists.linux.dev>; Thu, 18 Dec 2025 07:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176604203358.1631.2029828403584643638.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b3d0b0e9df90014e47c550461ed230e2be20a28cc8b27bde756e70cbf8c3a33e
Date: Thu, 18 Dec 2025 07:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766042033
