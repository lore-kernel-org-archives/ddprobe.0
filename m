Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 07C15349AF5
	for <ddprobe@lists.linux.dev>; Tue, 12 May 2026 18:10:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778609434; cv=none; b=phPSkVcmPKodRKelpHi/0DsTxgGQ71lDRmY2jyk6XuFwLVEdJ2aX/NOaUjZG+KERtn34GEaPKqfsx2tO6decprG1xUVi2yLrdLwWkIkkjyvI/Kd5L+KgL+OX0WE23GDy3aopWwA8JlNzrLPb5qwzDoFqOMJB29IOIfCo8AxeH6Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778609434; c=relaxed/simple;
	bh=20asRf1AeKOFimkxBj4krlf0zp+nN09cX34N2MzxZZ4=;
	h=To:Subject:From:Message-Id:Date; b=Lb8P0HM3TwRZsQVAAv1/dTxwvI153+O2PTK1QhfZtxGSqFV5kNfJHW/1Q5pCO00jQ+E1MrGjrY8ksj8phv70tnZWyS1OWNJ+lsPX8AjAqEdzZMd4uSLdL0xDgbExyzqm2kNhFojTayTeK1y3QX0eEA79rE4MXnLEHz4EvTuePMU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mSP7c5e/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mSP7c5e/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C984EC2BCC7
	for <ddprobe@lists.linux.dev>; Tue, 12 May 2026 18:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778609433;
	bh=20asRf1AeKOFimkxBj4krlf0zp+nN09cX34N2MzxZZ4=;
	h=To:Subject:From:Date:From;
	b=mSP7c5e/xW34ipYuxCHcI41w3ocwYUwjQ5s267M3cacpYKeVjYcryvwB9nr7NrPAE
	 n5SUOrLV0ecFS8S9R2mOFTxcQf99Qr2hOohcPBr+t9kpj4vjF+WWBtxQFp0JzuHVNQ
	 T55ILL3uEFpWXxX8k1WRQTNAWLqcpnj+GtAnfA9mHQavX1nlcN8C02XL98bho/d9bp
	 evxHfanux4czKF3OxNAkhqnYCK7G4Oi0zxMYbfwEIdnyILHzVFzu2Fo2Uf5C3tvT+3
	 wWYkzCVD7kNZSijDM1ttAv4ZV8QZt9WjOVfO0cnJmx7WzYVXh8LwBBbjTdkKohzZgG
	 tiaycKVoz++6w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4539CD343F
	for <ddprobe@lists.linux.dev>; Tue, 12 May 2026 18:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177860943372.24819.1066730347238709470.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1eaadc1b1030e441556b36f32f6f0f04cb6114c02d1276a086a647be5731f54a
Date: Tue, 12 May 2026 18:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778609433
