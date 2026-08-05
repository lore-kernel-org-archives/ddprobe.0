Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 454C71EB5FD
	for <ddprobe@lists.linux.dev>; Wed,  5 Aug 2026 02:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785895834; cv=none; b=ptpxUwxIzc2g3nnpHJHOkQq5dFDsmzYaj8vjlnrMADOucxAKrz7Eb4h99xrCDdLxBjjVP7yj/ktjf9NTtfGvT0Sv8fnSaEGOto6zpqeC38wnOmCHKe8whlFcv2D6m7rEN37n0VSCmp0TCNddUSOiDzkhzYafjQ19t5VUXWFKdw8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785895834; c=relaxed/simple;
	bh=dTmt9B3CF7578gB1lyuEAjPchTEblpo0JHzTMFuWqS4=;
	h=To:Subject:From:Message-Id:Date; b=B3is7GlyGAxp3Qfm1PVMXt2+xDqxFOujKr/DUHx3T26g3Zm2T1+snGU3Hv9WjDp1BxPRw4vJVbB0QnFm5h5V+hxpqxy2JcnAYr4/Tzi2Yvy5WtZgtidi0hyMU8z0nEQSh4S3i57PJuwa/qUjVN2fITvgcQ8IzD03/L2KWiC/OSk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nsdYUCMt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nsdYUCMt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCF88C2BCF4
	for <ddprobe@lists.linux.dev>; Wed,  5 Aug 2026 02:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785895833;
	bh=dTmt9B3CF7578gB1lyuEAjPchTEblpo0JHzTMFuWqS4=;
	h=To:Subject:From:Date:From;
	b=nsdYUCMtXUY0UIe79PyWdFKpTh0aJ9JJcg2MdGHu7fa/m5Wt6SyLFcCd/zSJ/zxon
	 I2uOz8EuUpJtQ6C3Uij/3xdB8NWIFqIfNoouOkOw+Ov/aIZrgI+oMC9Xj/hnSF/Bh8
	 xhveDeUVyzHTLs8pMsYFXQ8otTjk2TwqNBwwq0CDBoDVA78roVZz1UFjBvsfp4RBgt
	 FZlltYNuesiDBj6SncSNiJlLzhPQgVoc5Qb8H0+CJpxrT/CvF2KbrkSc3HxJgT2UNC
	 ErSyebh88vG7Fz6AzfMN6axizArAwSBZCBn3IzTCJjhX9y+oLE9r0KDU7qJPPw6FtK
	 PSURbvAkI5Erw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9F51C55184
	for <ddprobe@lists.linux.dev>; Wed,  5 Aug 2026 02:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178589583368.20222.929209051636630357.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 60dfcfda49bd86c05dbdeda5e6cfab93d96f20a12c7fe23059d40d63116397ce
Date: Wed, 05 Aug 2026 02:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785895833
