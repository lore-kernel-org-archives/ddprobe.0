Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2582F2857E2
	for <ddprobe@lists.linux.dev>; Wed, 16 Jul 2025 15:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752678594; cv=none; b=lMzZsoDfFGF28oH1l4j3FXlYO/Frz1X8HHeDi079Grhud2teUr+1RK2VhUyTQm3UP/vZVj+iI0efG06KwUqqrfSMMaU12fskMu36eHbP/pyhnCHT4JiNAL5la8sjV5mEYV+oNa9Qu5B5qIoaJqsuxbtOlEPaEWMnrBlEcCFlSQs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752678594; c=relaxed/simple;
	bh=mtqDbpUABD8AW/Y7TWUm5mMATTiWD2wulqkzJrRJ+/A=;
	h=To:Subject:From:Message-Id:Date; b=CleYJjtVBqskHpleRMBCwoUFx+idFifE5aOAcVUOimNGVg1M/O89+zkQgTXf4l1cg0QLVBEcCfuRlc9YZemH2+kht0VYeGVj4UusRbUOZD7P+OtRlmwJLNARPszEKAK3Or2T3oPtgHXFmzktNxzKdOv4mMsUQ2tJ/79wGSEU/2Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=f1J6Cl/u; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="f1J6Cl/u"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 96DD9C4CEEB
	for <ddprobe@lists.linux.dev>; Wed, 16 Jul 2025 15:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752678593;
	bh=mtqDbpUABD8AW/Y7TWUm5mMATTiWD2wulqkzJrRJ+/A=;
	h=To:Subject:From:Date:From;
	b=f1J6Cl/u+6lC5egVV3VJvHK8Et2fA17/O2uSKI4qmX8nlI3Yxhdsn4Xea9oxflh5l
	 2ddMZYW6oOKYtG2hdh/P1uBz5Td2Dyhc/N7Be52H1nQRW93NcOijbvms5HxeBip0lN
	 R5x8xc85YtoJmPxf2+xOkWU4PKNpV0WgtBLNaY30StJVXS1iYYn1AqaVzvX64fabLt
	 UixBVce6uG2JYY25QGm77q9UDrSKvNITcw3qL9UjHn9OArj1LDeCNFU0fcztS5lujH
	 SLMa+ql2ztpGTi6O8FV8ZKSYjN6ETN9sB4xq8E1biWH8/aHwajuKUwYM+KIbJtAgaM
	 3bvB6GSreo/5Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90AE8C83F1B
	for <ddprobe@lists.linux.dev>; Wed, 16 Jul 2025 15:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175267859358.11177.7044277642174088434.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 86f2ef07845d81f2c16babc6c58266bcb1877834ee8ffbe0a58d9cca7adc1798
Date: Wed, 16 Jul 2025 15:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752678593
