Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2090F2749D3
	for <ddprobe@lists.linux.dev>; Wed, 28 May 2025 09:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748423394; cv=none; b=cgDRURmmG9jKTzR07g6vcfScZeSk8dTor4vQ3nGqa984zvt0qj/yOvp3fxg56I7Qgxp+J4kptWL2eyO5auel+IxshfRHETJinxqeozRsx17WxTK/ovyvR1VxI9e2CJpvUcbUVLgWd9cHUwdPQdXhLFms6/uwCfgkVAm9L4n9z0A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748423394; c=relaxed/simple;
	bh=Kn81BZPfVZjFzScIhHxRUOKQL4E4HlAVKsk+mdkGAbU=;
	h=To:Subject:From:Message-Id:Date; b=nAMd6poZ/9CpYMKoNDIy6u89BN/rtXJzB+xGbHIMM6xD30hrRLrM7s6X7H4u060H4spI6LiTIUSSODyRga7ivhPAhHKPTh/Jgb7SjYMBbwCuyGMDwzpII3ToxHtDRMrRZZKl1+pfsS7RlAV/62HEgrzkCtfHd/ZMkEbYXaBrMoU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hmTvCsph; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hmTvCsph"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0642C4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 28 May 2025 09:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748423393;
	bh=Kn81BZPfVZjFzScIhHxRUOKQL4E4HlAVKsk+mdkGAbU=;
	h=To:Subject:From:Date:From;
	b=hmTvCsphos+36alb5jDFIUb1zs9kA5Qbfzzhl1IDHDGDDV9ycCJd5OU6VjXx++ZDK
	 JWJfgMYYS2ywFlkXu4G7ixHYCOC9k4NmnnUxrS9VmGjzw1T6+XKdxtBqBVgywVym98
	 cbvakAvQPaXElj9ITZS9Wr1bbJzvsFKG3bcTxWjYYT7Wf3afPo1wugbP2iFOEdeWOx
	 G0hUVk9X//Bjjnof6WMBSgtOPCcW9hLtHR2s0qJmoA/8f9CyW4fc4lJuFkgl2T9tde
	 78aKB5XykHNFRE/Z/KZ1M9y8SBxLrCOCd+MHoJ8gN3a3VuljAOxprY3wwjkmw1Z1bM
	 +2CLFM+qVS6eg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9098DC5AD49
	for <ddprobe@lists.linux.dev>; Wed, 28 May 2025 09:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174842339358.5708.262633113861222010.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3bfe812f339699f5c2cc382a8fa836e63c1e23c98fb3b383728b889277982302
Date: Wed, 28 May 2025 09:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748423393
