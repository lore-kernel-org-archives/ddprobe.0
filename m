Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EA8F188715
	for <ddprobe@lists.linux.dev>; Mon, 22 Sep 2025 05:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758520795; cv=none; b=cnm0q01ZagLwgXpgGQDhqyx1pLjc1PjvbR7BSWtdgTm7OyBvd+c2z+yxvKLHOZmgEYp1ew/KUDOMTCViXzPydKaIrE/KnPbTW0cAvDDKUBSe5whsOFsJIFs387/SrrHwzjIH177t1yv1YGBpQ2rrQQbam2Qy5pMcJIw7YPWllpM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758520795; c=relaxed/simple;
	bh=iHytoDxCLxFTtBTJniAbi+htoewr88na4bSp+JjOvfk=;
	h=To:Subject:From:Message-Id:Date; b=W4gHmYiGPvSJxQFAtYGg3eNk7IfjRzr2c6fExSUQRdKLpZkHsudZe/WSVV0apOe2jqSu7R6Cd1r7c5Fjlg3a6R4ydZyRMUAjbUgAUyefabj4YLvTs8RDBTUvDRfluQr0geBAD3qDaG2uRtYVMyBJD44WvXp+9IkYf9HyY9rOze0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=B/vigMPd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="B/vigMPd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1BE7C4CEF0
	for <ddprobe@lists.linux.dev>; Mon, 22 Sep 2025 05:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758520793;
	bh=iHytoDxCLxFTtBTJniAbi+htoewr88na4bSp+JjOvfk=;
	h=To:Subject:From:Date:From;
	b=B/vigMPdZ98QmPqPfxN6ZD2Y3OYdUfVrN3HPzXWE0Kkv53X90A/k0A8dXYmcA+j9i
	 GdFavKuawcWS/srnYE+4rxfPvjW464kRZprmdSrhH9/XoMoGuNo1139SgsganT9Uyd
	 zduMaRBdinFw0nHW6c7pGuFOCMQFaJ1KfDm/Fu/R7xtOs0oNE7DDNxs9CcM/cwIzBB
	 eukSB3A9KLzo9469OerZSsy9m9c/Rqg7gA+GK/0ie9P8L4lNE8ZwDVQgEjnY7eUZpt
	 stL1PuCcCv+QbswdfKLB9lz29aVah8vQRa0V7AktunSGYJ6UU6zbT9NNgHbf3skCDB
	 7l+jXE3sSA7Og==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93BA4CAC592
	for <ddprobe@lists.linux.dev>; Mon, 22 Sep 2025 05:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175852079357.3972.15402296935389099722.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 55a9ca61b9e107a8d6e882e2ee42cfea529140de7bf099c543177269316b85b0
Date: Mon, 22 Sep 2025 05:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758520793
