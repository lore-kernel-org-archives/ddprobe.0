Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2AD9D1C6FE1
	for <ddprobe@lists.linux.dev>; Sat, 28 Jun 2025 10:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751108394; cv=none; b=h7Iv1nLey/rCDhSe1Jmu+PTz79VuENa8eelnAJ1DPzqveADWXFCN8dqw09ArRR+6iDC1VdBMVWA7ICJ1yJ/1vMKHHO9jt4L3ySOYPoR9lbdVQBoxHfrBc8svSGCANqy7ca8P+9DVosm9uqmjVzs551MItgb4UOiERkq2RzLxyGk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751108394; c=relaxed/simple;
	bh=CFSWpWG2Hb4pwrq+dodzf6s/aU20C1TFk7RaQ5jKk3g=;
	h=To:Subject:From:Message-Id:Date; b=eEjZ5qp8xhRfga9Sl/kYhdb4j7ixS0f8tYEl8hQJFtDS27fp9mSNytwhIejnxyDjpJq/wdCyA1mhW/jhR5Ph1OWHX1nHHJLDF8/8cIZlK2qP3yV+EyHHHO/6PGVxMnzFsTMwtLTYEBqiBVnSS5K3u58fEPx9gXMrKcrGkn4CcrI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pVYuSego; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pVYuSego"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A75AEC4CEEA
	for <ddprobe@lists.linux.dev>; Sat, 28 Jun 2025 10:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751108393;
	bh=CFSWpWG2Hb4pwrq+dodzf6s/aU20C1TFk7RaQ5jKk3g=;
	h=To:Subject:From:Date:From;
	b=pVYuSego4A5KQ5Ym/8VvIa/joZwhzTdAArUjulcMqRGCbzS1cKEbpyF3nfGgjXXCl
	 L1l3qFJ3k9P8noHa2wxeAz2cuRFIZHXvA3pK+1OHBz5//Uz1p8QwuyOhWQ2H3f5kZC
	 GZbV0eVvpslcMtO3sXOFKZowx+zYRMUG0zmao0JoMkepReUnWXw6GMHPDIRAGu7DPL
	 f5S4RtaLLyGD2rfdwqfYQb49YlvX2xOtrUYDKchSTu2n+w2jlG7Q/wlIy5bZZztmxl
	 pPL+ZvoSfig79qm3BKrDVHSdFne54IDwVXsLT1LEQ2brWOOBPOBFxoVToPNyvhld9Z
	 Ljr3Qvk6s337w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 935F8C54ED1
	for <ddprobe@lists.linux.dev>; Sat, 28 Jun 2025 10:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175110839357.1209.954833448580556093.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4d4a696f17b7c2e912916071b88925efa9f212ae0878c122de8f7f12a7981e9a
Date: Sat, 28 Jun 2025 10:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751108393
