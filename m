Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4DF9B29ACC6
	for <ddprobe@lists.linux.dev>; Thu,  8 Oct 2026 03:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791430834; cv=none; b=a3g39H5sc0lHoSxq+89yHyt1IP3s34qpLd5UOTx8Fds+cL3lU/6uEelK8zZTq+O4Kt1zHJgpfnRqBsHWVE7y+Zp+5vehT3Y3Z5KDCNPIxN5ss+KOx+v1CcAlbb4JoIQnHq7cm50ieZZxBgM1vViNJFxEQHTITdcjBuSeaZvSpbo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791430834; c=relaxed/simple;
	bh=egHtOs61VkFX+VMdchIwhWQxZHKY5y/7zfAOz0EfP1Y=;
	h=To:Subject:From:Message-Id:Date; b=A9FhtojSRHVoEjsezKGP7davRuES2a9m08YGeuRTjpZwtZza06aWFLFNOy6oG5fkXOu7DcGOqG+6KG1qrA7J2G+lXjxHUCKXLVLmC8CUb9+7hnr5KekYXMUcMN6jgJ22yy6l7A4M3WuRT9Yuz2pEtTrJgGr+iGzDeasbOH2Bgs0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nY6/kFT/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nY6/kFT/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D395FC2BCFA
	for <ddprobe@lists.linux.dev>; Thu,  8 Oct 2026 03:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791430833;
	bh=egHtOs61VkFX+VMdchIwhWQxZHKY5y/7zfAOz0EfP1Y=;
	h=To:Subject:From:Date:From;
	b=nY6/kFT/PkKPNuTHwSgNhWyEPIBqZaMz3Gw4qQMTkikP4MLGLFfaymekC2oKKcPf1
	 uGebLxtcMjpLr/cLU1U1NtZKiEcQNatHXm3auZX0/eVfT83xHNQecDUaQiXdlVaAZY
	 LKGgUL5d/+pmasnz28RdkpHGV313HegAXYAk71clbnJ1T/DjHmdjd+q4ef7J2rynIH
	 AW0HlQsgbdLs3RYwUO+rP5Tzrz5BpPG9OLsPCl9i1XLQvbQt5qQxdFGEfkX16VUQ/Z
	 cimSA6GaWFso75d8Brcr6Vp6mfn2XoeH5hVs7Tjn44SaNjNI+E2OWmOfXnXD/vRFP2
	 I/HtJpKL02QUw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B06F1CA5FFD
	for <ddprobe@lists.linux.dev>; Thu,  8 Oct 2026 03:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179143083368.10816.9886685795377324372.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9abff6cd021a9c671ca40ebc4c6a910a95ac62fc73ae6861e3f8be86c97034a6
Date: Thu, 08 Oct 2026 03:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791430833
