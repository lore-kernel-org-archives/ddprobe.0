Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 353BD2309A3
	for <ddprobe@lists.linux.dev>; Wed, 21 May 2025 04:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747800594; cv=none; b=D+CQKi8JCPerGMASBeE58wzjD8emrYxN9CfoOm72AWh2GoNoL8f5oAxRfsObieXyIzPCthbwBfB4naEqHoA4YU6/GdLXssP+TNEswuUXsd2+XTz3Hjtem0kNDvYcxjlaRn82QldABDL1MmbaF6OsucxujpbcEiUS58IrruDnBkA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747800594; c=relaxed/simple;
	bh=7unUDcyX8CnfZsgxf0egeq1GIL0Jc8RUU1hBN08CZik=;
	h=To:Subject:From:Message-Id:Date; b=Sip13FSXxROitOWDnNGpDRzXqAA/O32QvuaUmyNvKzMSWgyGrJyuLsPUp8v/SBHstfyZqMfehVa/a7xiwAKkr5eUKEsr/Q5Zhno85caTsq/59ViZwjUUxtMGCkgh4RAL2+4cRCdQ+bVBV0MLguYtZ6rcTKvnahBDnLy/b3xdTxQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jEw0pyPK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jEw0pyPK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2DB6C4CEE4
	for <ddprobe@lists.linux.dev>; Wed, 21 May 2025 04:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747800593;
	bh=7unUDcyX8CnfZsgxf0egeq1GIL0Jc8RUU1hBN08CZik=;
	h=To:Subject:From:Date:From;
	b=jEw0pyPKkzdatiWPqfAJn6YqdBDZnKtkFXWA5VjgentMb73nszILYQh46OaqJnuvA
	 Ic56LYJfn6+zd04Jxovp+QGY8eeM/ZzqnY5Ggce9qBpVYjccoNp8V85NvZDKGAI2zw
	 7AoLKcWixWEZ+dKUGnX/zEHh7ZoAwqMt52RHun5PRYY1SaUcxxgdrXKuwbSI4VFN71
	 yRKQuUWt5VKKiZmKHgejCRsxAloVk+liIAOFKnul0QD6HO/cnFX3K5Ep6s3IIJO75Y
	 hft1gUNbZ7CHDar0eLZn9DUucmNVCSA1m88rXE1vmS1Jwur9Cga2Jm2fvueslT6UzK
	 xUR4l2vTRmoUg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 915C6C3ABC9
	for <ddprobe@lists.linux.dev>; Wed, 21 May 2025 04:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174780059358.8607.7713379285632412981.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d86dc69c47c43b14de9e0b2968ab2192e7684878af05cbcdb45b44af7c8968d2
Date: Wed, 21 May 2025 04:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747800593
