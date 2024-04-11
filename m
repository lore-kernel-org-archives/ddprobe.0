Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E2502A48
	for <ddprobe@lists.linux.dev>; Thu, 11 Apr 2024 00:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712796497; cv=none; b=ndbHLlhBupnt8ijpE2W8b1VUbRebwuHE9eCoy6Sl9SJaz2Ixm0fFiw7e8t85pEVKk892n2/m4vwoUMxX26DKuFGog1GC/I9SXxK9Z88J1g619C4UqcDzI6M9nH2qxmnT1iE1AFdUPEXp+nu6wAi2loa/5B4Qa0zxgN1ptT/PTv4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712796497; c=relaxed/simple;
	bh=X3DBN1dltAl2B6y6n2OM4XVlTsRofeONzSgGiYXuh30=;
	h=To:Subject:From:Message-Id:Date; b=oQ7BdAvz5fkkbNdUNAcNZs5b61xIEtdcqyct1h2w3IWcuNTAooPBXKLMVLGB7voTmiJ5LLxKhnhW4PDScZayhKVNzZOCoTkKcEcWe+IJaIRXAY/yY7Qe8Zqj1JZeFbR7W4WwLZnrONSmoUL04MKcYJyIKVEPUaPrNkdaZGAa11A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=faz6DNZ+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="faz6DNZ+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 82E70C433C7
	for <ddprobe@lists.linux.dev>; Thu, 11 Apr 2024 00:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712796496;
	bh=X3DBN1dltAl2B6y6n2OM4XVlTsRofeONzSgGiYXuh30=;
	h=To:Subject:From:Date:From;
	b=faz6DNZ+gjct+oDBaS/GF8pWfkQMYcOhumSfvOGjQFQZLidi7Vx6zGXm+Gkjbr3b7
	 1l9slKh7sljPpuXpGi7WT0JGGiixZPO+TBVTa2OpmXL0GCAZiK1klf40Oz2Q1gqDE/
	 a/rAt9jVDdRFF0H5bxwimOniaSNhCDDB1KAHdIF5xE8+8uetDiFtynQhL1fEdeXe65
	 xaPZ+aP16JPBiQDxs5yKn0qNHDppcWuVjpANAOPGMeIs21vEiCMjNC8gVOgBcBQdrX
	 CbHL0uTQK1GmjNOyGTvCBUOd1GEx0lF/eJxYQypbWn/ZYDXbz/6E3kc7tR7/cmq/PD
	 B9q88OfGTwR7Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6ED70CD1297
	for <ddprobe@lists.linux.dev>; Thu, 11 Apr 2024 00:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171279649642.11262.17390890639101537815.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6d4ad0d0e51e0434bf7214d265cb02137f3378471ae97538140665704bc1165a
Date: Thu, 11 Apr 2024 00:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712796496
