Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DA741C36
	for <ddprobe@lists.linux.dev>; Sun,  1 Sep 2024 23:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725234954; cv=none; b=ZQtOSpYdPL0Uz0Kq+1K24fmEE9ic19ADmCKcIl4njmhpfLmUygaKrxmXK1BvtIX0IeGpNLdLfa+Y4drBabRdlSqa8ZNi91nGjacy3REtD/xRFg1oD0SlaiNUNRBYHZfhdLZGdOE6pmUJiHnq4vGFKlfsaObITBFY9jkZrj45nDA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725234954; c=relaxed/simple;
	bh=TZo65udrdO482BmMVTuV1hCBGZMWL1e0o35TL4dEKs8=;
	h=To:Subject:From:Message-Id:Date; b=rwrvmXYzaXW/QYk1o2d92Qcg4oWkYIRoCsZjfamQp+vi9yRlxFARDRb5h4aSFtgEbD4K3Ldckw6TKzfPGvQfUIXvp13m9m8j3qV2szB7i04FZmjhGbnptL5EJQvKF994YIrMaymS3S2U7dhBw+dOhYLWmgChuVfmAUx4cSSOTqY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Q1uZjmP4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Q1uZjmP4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0205C4CEC3
	for <ddprobe@lists.linux.dev>; Sun,  1 Sep 2024 23:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725234953;
	bh=TZo65udrdO482BmMVTuV1hCBGZMWL1e0o35TL4dEKs8=;
	h=To:Subject:From:Date:From;
	b=Q1uZjmP49XsEnYUldCa6c8kY+Ixq02tqPojY/ZwCGUouGkbN4BtUQa1Y6PAMQFiUP
	 32IXX1BZwiJ4mO5Baf5XGjf56ay6FRk7ujcQhPFqKwgTbqd/MmdAiY1/3mObPGGP+7
	 jTzUCNGfJu0BLmfpLnIHeB7nqa+9Z30ZEP8H3lKDefEwbvy+HFRNikoOBgHywrtsey
	 aiKa5Rfq2vWGhnDuWiqMA1a3LG/BY0qWWe/tVI0bth/kcMyY+SMDhqPK33BNbz69QJ
	 qYBV1z2RGVZarPzyJ4644NaRD3Yt712eRF3BzZBKtJmEgGCeeSsnXPciQFcf5fsiqn
	 RfIx0DjQRujeQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D977C54FC6
	for <ddprobe@lists.linux.dev>; Sun,  1 Sep 2024 23:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172523495361.30630.16195512767776223774.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e5c4811ddccc0a4097f16ff179d654a7e92a35df23cd7408c5b815599ec807a5
Date: Sun, 01 Sep 2024 23:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1725234953
