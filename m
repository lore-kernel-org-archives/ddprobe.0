Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 554EC167DAC
	for <ddprobe@lists.linux.dev>; Mon, 20 Jan 2025 11:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737372354; cv=none; b=UT/gU7kb1qoVy+7laxUakWF8NaHMBC3C06vfm3KkZGWy+P39q7XAS+H4IVOxQQsraR5awVoB/76+uYlMhgYK0ztsNVNi07tYZwHVoIIJDFOZBOx0eyJJRAaXNKY+l8nIpPyCHGBfuu1afG2exFjfnOz7Ifurx8IHRFkiVnkvtLM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737372354; c=relaxed/simple;
	bh=KEwRbWA+opNTLN3dfNMU/BVPGLotg+tyPEvh7RXw1aI=;
	h=To:Subject:From:Message-Id:Date; b=YI+/AgNNnmHSJrZTrtZ1qsLVq4GK25B1K2UFTGVNu5D4lLj05bYhlk5LaS8BSlJ9sWGcx5HHseSh2pflJmCSxQzQzACAbINEF1Qml4Uld+u+eBM1CK7z49BWf8plGB31rfZ1R6QcOnvQ3RMAR/Hp9o01jVZvuzSx981rQXzBAkY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UzGsSRYO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UzGsSRYO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0195C4CEDD
	for <ddprobe@lists.linux.dev>; Mon, 20 Jan 2025 11:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737372353;
	bh=KEwRbWA+opNTLN3dfNMU/BVPGLotg+tyPEvh7RXw1aI=;
	h=To:Subject:From:Date:From;
	b=UzGsSRYOLUNGyjA1QTAC0hjWHxAa7BKiyadSBYXlDnKPo0/x5tH/jgMaAwKwfT/3c
	 WFHfv578aSmzk49mT/f4ztWibKCnBHQGrTF50RYPpaWOv1HJUy6DRZ7WDwCG/XC4NQ
	 AEJG5Hf3Um/hnQU4VW2DwPGWyFh8O/lesACAoto/0apu51w5lSKDOQY/8mlYs84zHY
	 J5no0ks0SeeU3n23DH/90x1l4xxIiI1Vx+HgG6h7s2f31uIWXm1ErSeW20qmbLVx2Q
	 9Ak5OZ2bJexJrzGYNRXudvyZ37aBkHnlzufQb65m7voh0/eLxJ6yp8ZscunKutlXWN
	 t4+RyRDibpiXg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A65A3C02181
	for <ddprobe@lists.linux.dev>; Mon, 20 Jan 2025 11:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173737235364.9639.18252220312359491824.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 275580262efec7d0a2cfaf3c1809b07fcc80417b7314b43099692df7c4acd680
Date: Mon, 20 Jan 2025 11:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737372353
