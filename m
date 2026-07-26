Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D3CB3C4B92
	for <ddprobe@lists.linux.dev>; Sun, 26 Jul 2026 15:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785081034; cv=none; b=Xsb9/29qOTS/IBtbfxMa1lpxbE5Q1j0fdPm9ea/B6b7Nhkfkn4BrT5Co7McrU14GIOGBTWZrr6fToxdWv7I2c1gqGOlfOcKNyP1luhtimPV9HW4xE1xUQlN+woJ1AxsO96+TSSSMHjyamLBPZ+8L6hJBP5enaVa8/FHgioGab48=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785081034; c=relaxed/simple;
	bh=qhlGUAvQbnLPUdgIVku6Vq6xaJAuCQrqmyRmf/XWFFE=;
	h=To:Subject:From:Message-Id:Date; b=bDhQ16Bs7RoOuTlTLJ3jrMP1AdD11pThw/t/mqfN0pF4/hV770tpnjXOlh9FPfuAs6JeGDLRPEkCOkHShmdBGWS3h0qg78HkYRCncCVsTvnhV1QnyGF1mNnJj6XB0H+1v0hzshi7cXr5MR1ikIwsxNItaECY0gvXlyk+jzNzpEM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LcGCR9dm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LcGCR9dm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EE0C0C2BCF6
	for <ddprobe@lists.linux.dev>; Sun, 26 Jul 2026 15:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785081034;
	bh=qhlGUAvQbnLPUdgIVku6Vq6xaJAuCQrqmyRmf/XWFFE=;
	h=To:Subject:From:Date:From;
	b=LcGCR9dmSRfln1mv7IECTQtg9SJGLJNoozPiy5NXOeOS2fSenYdsOjjAiwQDSYF9X
	 j28urE+k1aIw3wgLUFT+pA6u2PtCtIjTR4xh0gP2r+BdKuvXYPLcUnuwJ/Kv8PnFZq
	 qbg3MDEBGJNmJ1IrB6bkOp79u06yuOyh9CcpQ4i5lLbWtrmYkgnrH77Ps3zfLo+eX3
	 uY8P+E6PNN2ig7asGzLyqnH7DZTJlcCX6gX2WF84XZgcriYsZoh/xfTKcUmHoESqiL
	 ZDxgldArmKacW+P1kSN3595z2nFoOGDtrtJwEJc9olyvXqtP04JRuvUsc/n2Tx5yuS
	 8/i0YIqhS8ipA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF9EBC531F9
	for <ddprobe@lists.linux.dev>; Sun, 26 Jul 2026 15:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178508103369.22301.7172463359053558435.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8b8e7d1cdb57a04c85a573d801d46c8f40f9ea7498394e739bf37074324dd72d
Date: Sun, 26 Jul 2026 15:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785081033
