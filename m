Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 499642AE97
	for <ddprobe@lists.linux.dev>; Sat, 19 Jul 2025 15:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752940194; cv=none; b=k0TNJJDlp7cj1PG4gfYM53J8P7iLGgrYCqerP6FxZbFhjI+99lzh5I/pG+qAdmC+m8vtdFtLMgrVAeIjH190zd5oUA0adAUrX3+VcYXDBvBM4J+D2V0Ni4i0PQ/bE6i7mO+73MBNSKZCwBUvHJLuxgnEDbJsyeVZYqxzfDc4Nx4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752940194; c=relaxed/simple;
	bh=24ma37k52Sv6BEyfm9MCnECKVzACLmm7ee0JaUDCrDQ=;
	h=To:Subject:From:Message-Id:Date; b=QmFtTrMzEEVWx6fBLAHWauQO1jB9tSLB24yBJKrBYqAdelYBEcotppuSlPFIlTH0n0Jh0s8LKSklWHQ96yZFEz0dqlwT8AAoiwe4inImGkuoJJA6QNWreMj2me/BQnFYye10yFF+fSmSwPH0ngAu/tbNE7IILNywfmF2pIuEPvY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mFAEFhtD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mFAEFhtD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3834C4CEE3
	for <ddprobe@lists.linux.dev>; Sat, 19 Jul 2025 15:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752940193;
	bh=24ma37k52Sv6BEyfm9MCnECKVzACLmm7ee0JaUDCrDQ=;
	h=To:Subject:From:Date:From;
	b=mFAEFhtDzkQ9EUIOqbiIkwQwCU5x2k0hpVsjAlvi9qhNHiMSX1vnVdu5O5kmDzmUC
	 M+iKpKhw4frwKwAqnbKsayqX3wGeu+JCQjC31XF1liYPuNXjjYeJmDoy8tIPQLPuPh
	 JV7MnVw9UGQqyoGtSE692P/S7c18QRj2P7iCewAvypPVxUmVMyRvIxfvE2I7uWmmCK
	 nl2JZbofl6FAkaKXP/HuqtCNB0xAJTH26zj9KrXN2r6lAMIuHA+d5PJAzbqRF+zQUx
	 Otg4td1fxLq5TzcecSim5B3PP/Mb7gd37hOrXNAeKOZsH/UVcb/fvqYqPdIDU2hQ1P
	 oFz4dJoa4OkRQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FAFDC83F34
	for <ddprobe@lists.linux.dev>; Sat, 19 Jul 2025 15:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175294019358.5036.3230964044587139056.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 02799355ac9002aba2512a79d28f62cc0f8b5b80bd2cbf0986bec289075c0b5e
Date: Sat, 19 Jul 2025 15:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752940193
