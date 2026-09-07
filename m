Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4AFC32D3EEB
	for <ddprobe@lists.linux.dev>; Mon,  7 Sep 2026 20:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788813034; cv=none; b=kCLOPUSAcrSgWfYP5HRI+aF/Ejyi+24PFVO+gXMWd845RLcN3via7cUa7yKrEeFbkbO/fGelEJxKaRf9mC3IS9e2AiAsHOJKmAIJhUFkVgpuzZ040UpZ34J56kI+8BW6HHnnQGeSz99Cu/1Nd34CKWZ8XZ6lgN6EI+3X30zwa5k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788813034; c=relaxed/simple;
	bh=N3BGm2LYTKplnBq+Eaj+SdncRaEH5bydn6ATiY1Qi9k=;
	h=To:Subject:From:Message-Id:Date; b=hj+hFEmCQrQQY0ChUx6pqLbjmuoOgcHKRqEkgAJrHZv20DeQ5fh736GQFNieEvuUNpvh7G18OZFPm7cWZRhfvEls3uVJvfcEzmh4rMLHPW/iu2YpIeYllHNYhFD1SNwiNhcVAtrBXICg+P/SZAfMFOOj96Ut6wG0l9zbxl1uyP0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LxgLKFS1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LxgLKFS1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB229C2BCC7
	for <ddprobe@lists.linux.dev>; Mon,  7 Sep 2026 20:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788813033;
	bh=N3BGm2LYTKplnBq+Eaj+SdncRaEH5bydn6ATiY1Qi9k=;
	h=To:Subject:From:Date:From;
	b=LxgLKFS1W4dNZd08jZt2vN2D4NSaUkiY1ufuauL3nvErfSZ2cNpbHNcPAt6rV7fq/
	 rTMBp8gq2GBbElqROa5YOgnxUO/IjmjjvTR2DnnnjMAPGUlp3I4EtQHB8KjNG+IT+8
	 qqKLx4uDfqe/1goRUppp6zXR4WAwIEAipNfraPzrzhD6W2Yv0Mkba3ThlBLg8km11N
	 /fBEvR1qC6QxIxWefUX7voEYncvr5Q4Np+JKdwU/mDcmXekaoXYHZnuETj4u1zY39x
	 cLs7KrZdYNd32DI7Z+aTz6MCa+sj7f+YRLlc+AH5oE+y5jspoJOacVcbCqAJPYPhNU
	 ZVpvaKYjTBgmA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0D5CC79F99
	for <ddprobe@lists.linux.dev>; Mon,  7 Sep 2026 20:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178881303371.19757.15587190623370177512.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b3d9ca1f780029fcadb07a186780d786be475cbf2cf1ef9ec6bdc3d71cf9561a
Date: Mon, 07 Sep 2026 20:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788813033
