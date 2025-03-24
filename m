Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 387AF18C903
	for <ddprobe@lists.linux.dev>; Mon, 24 Mar 2025 23:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742858994; cv=none; b=KRibvQdxK9wPLvVuIFOEpO2Z9Hc+y5mbHk/3mlzjwX+C2MC4efZ1+4odTgpAoq1iFfm9YD8mtSpENnxdA69N2kiFiFuvlVZOLf9wnAl6r51MnCtwNnDo/QMpqTR/mYMwHz6yJp4Pk0jPS6Ig09o6aIvYPdD3bAvYc+6Zm5wiLZM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742858994; c=relaxed/simple;
	bh=nCyHcWrT6grG0dPuTx2NrJ7ddnvKosW5bsNX5TPYSSw=;
	h=To:Subject:From:Message-Id:Date; b=nUiTzwCFClcSLPIBt30TeZrXNmD19LI5mFUyNG4Y5RWJpYXuVMb/M2ovsFhaO5RhB9n8LpXCvp5A4++nHo1zxBPx8gcRuAMHZcWExG0D4cx6Pu85+sFwpKFLG33qQTkPY07CkIzR2pwboSPNxqucP61qMzUJYMTqCtVMGA6QPCI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=m3egnTr6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="m3egnTr6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2793C4CEDD
	for <ddprobe@lists.linux.dev>; Mon, 24 Mar 2025 23:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742858993;
	bh=nCyHcWrT6grG0dPuTx2NrJ7ddnvKosW5bsNX5TPYSSw=;
	h=To:Subject:From:Date:From;
	b=m3egnTr680YCfmIdQC9nCsIpaN2ODn0ZxaYZA1a3pmVG/V/CCbWDiEJ+i3CFW+OFj
	 9GVKG0fgJJLAeypniaTsKTTcJvfdmhXr+frWcPNdLAuVrcGYW4sFx5CcnuwmThuO/3
	 2OfW3C9qscyj8gXlEGXr9JKVhjCKrq6eHPTQ4v0+CG/j3etZloLHMlJITTgsxT7JOZ
	 a1kg68NlPfgpqpXVTU/5dDp6YB6tlP3jQWjcjo8ehM073toWrLD9/OdXsAPDta3694
	 cDMHVlVGPsQniLSnoFoPnVvciyuXjCf1vGcLLvmHSFmZvfe8Oz8BRTCoH/Fx63A6he
	 PxqRh428PtxAg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0906C36002
	for <ddprobe@lists.linux.dev>; Mon, 24 Mar 2025 23:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174285899363.19327.14085166516800857454.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d06825f0f4503c7103cb2144c61134c49d421d831d632c8ce5eb8d400a9a5d23
Date: Mon, 24 Mar 2025 23:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742858993
