Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20C5F29A2
	for <ddprobe@lists.linux.dev>; Mon,  7 Jul 2025 10:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751885395; cv=none; b=Lm8MEz6bCK8Dl/0L+kwqN8BEDivT6XcIC+YqE1GrR5U3AU2RRswhYKmaF2Z5MUtmtjio6w63eMjBV6fc2CdfVJ/Y3gPGO9J1SOyw74weq3TQcrl3sjU5wuwd6XUOfGIF/ne2A2sXymX7e8WJ3EatNYKhaiC2P/GNV16MfBcGJK4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751885395; c=relaxed/simple;
	bh=9YOdEoTLTifZQF02IBPK91ChiOQugYICrqEzki8ayIE=;
	h=To:Subject:From:Message-Id:Date; b=mwvHV3YKNSZ/0M/QkNPSW1FeA4RnCrP3r3k1tuijM1EzGBtua+eTOCXfrLxhhi7u23FMnqUVjLVh2UfNWuHagBIjkWTu38k+zrqqxWGefkilYCpR+vDDQC6r0O6YMnnSpI9khYUzLV62Cc19lLXbNXVcb/nJ/qYiXbHvFSwE/Io=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ejHcxOJs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ejHcxOJs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F3C0C4CEEF
	for <ddprobe@lists.linux.dev>; Mon,  7 Jul 2025 10:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751885393;
	bh=9YOdEoTLTifZQF02IBPK91ChiOQugYICrqEzki8ayIE=;
	h=To:Subject:From:Date:From;
	b=ejHcxOJsZJhpL+DFKAs2bqDaiS7xlRK2NGvqdztW12K30JuDFPzRC8CR7tmm5u80Y
	 PD451IJlgHpMI7RmAxkPrr1ILr0902RaH1LlSOfykezSvdgRnBU4mwvqQVmOeKDYrw
	 xkrKq65K2zVbXkGj6PtY3il+l/zSsDOnhGLFyUtb95/h+Uz9yop9iYkaXhgCJ7jVg0
	 U8QtuAG1y5iua2UOCqIuxyfsySHRdB1I+2cCgVh2T9N6rrrq/hVsvWinX830JHL0Wc
	 ALqgK+OLkym9t2ck7GEyAZdtZV25uX993UEPKvJViTM4CPvf8VBydgp2n5sThbdN5n
	 tLubVEaLZmf3Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8DD87C8303C
	for <ddprobe@lists.linux.dev>; Mon,  7 Jul 2025 10:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175188539357.26109.14643229066097908032.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 37caa6850b92b0264dcb066d4820c3437cb240dc3fe6b4e748400ea5b3101d38
Date: Mon, 07 Jul 2025 10:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751885393
