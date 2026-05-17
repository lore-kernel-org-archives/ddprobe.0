Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E41B733FE1F
	for <ddprobe@lists.linux.dev>; Sun, 17 May 2026 08:30:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779006634; cv=none; b=CHdtSBPl0vm6hNye6BO21nNS7hJU5ecAakvzl9Ylh5yjymEaX742+NFD0/UId7JCenFf5npzDb3g00ltKmN7h2n/YpbGS+3pjA0gQKPKubuEY+Nq4YNs8lpLXTfnlSg9KlnAYo+U8ivVt2cNmq5cfleaeAs4z/GNMBoi9WZqcI4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779006634; c=relaxed/simple;
	bh=4ylG14rORrN+rDcMC+Me7nPizZvLWYhES6zZkKrklHE=;
	h=To:Subject:From:Message-Id:Date; b=cBe6pCmZwteHsTb8uU6O8Wk0blC7cO0eJZ6KVIp+WVP9ISJDo2XSY4i1yuOng16Qrq7IgkTcPgjMaOMchZMSUaPZsAJlHTCQhtgZJqhg/w2Axq1SjLZcRcJfsATVrNVzH/P0Np8uRBnoTOIgBOrR2+/sIK7D8KUsZwom1Xt5DD8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=giqKv/89; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="giqKv/89"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C92A8C2BCB0
	for <ddprobe@lists.linux.dev>; Sun, 17 May 2026 08:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779006633;
	bh=4ylG14rORrN+rDcMC+Me7nPizZvLWYhES6zZkKrklHE=;
	h=To:Subject:From:Date:From;
	b=giqKv/89ZkjZoPvxbhkmc9t9kIfZOXSvJxc9/ZknjzkTQln2WgLF7aUmpdMhpySkM
	 Wqp05osJyj3ZPlNfyvRW71nF10Li14URJpn8GrY6FwKyGhwEZDGeO4W32UAKjeTmIa
	 u4w3EN0BcBJHafl5kXiCCoHyI1a5emP0uDQqxvyP1a2deHEy7kWyk0t/swHjKM2Ftv
	 GGAm8Z+M/9TA5GZ+8Xvo7Cn52fIcE9OlWX9EHZK+D6YOT43PVI+8pMR8VWSXtPDPe6
	 sPaAmamdCuaLwXTG4VGX2NxTJfXwvEPra63OY2Um+7nm1+kCN2Z3qPKbNhHJPhUNWO
	 4JmQFBmaYI4gg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2279CD4F25
	for <ddprobe@lists.linux.dev>; Sun, 17 May 2026 08:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177900663369.7177.18412443463868850744.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d0406b7bb2487f7870cba1a2984a03709adf05057e6e71aa6d1a2cffbaf6680b
Date: Sun, 17 May 2026 08:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779006633
