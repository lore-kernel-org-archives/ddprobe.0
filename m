Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2795710E6
	for <ddprobe@lists.linux.dev>; Fri, 19 Jul 2024 00:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721349354; cv=none; b=lmVS5Z/BFHxL5AiIsFFdj2Ui7ilCaagCJzSnCtgSmcq0yNAMYXj2hagh+ktYJwRs8ZiFSaXD/Z/8cqQ5vN4ZyhG4Lg9uv1J4NpzmNyR82pLJD5GmKbx+IAg83WCEtMmcWZZ1/JIl1wkhWEcWoGcHEvy2xSXO0OXCRbs+Sb2HwT4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721349354; c=relaxed/simple;
	bh=wZO+ZoLFG0Bq2QzfRZnB0Owf/II3Oi9GLoPJpGxvk/w=;
	h=To:Subject:From:Message-Id:Date; b=tYIL4CXwzRXSoNKsgilZhUFIDxFCfj9/UE8dfnPSmsZRBuI/4kV0fyJQpQyK8g792HG10qth3MQXCDURkr8VNRcoACIm9+duFpP4HxBRoGmejHuKTyPyF0fxZRCTb2yUJrnC6QxXYRdYBBT3dv50CAsSKtwtcsVoci8/NVWoGrE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eUfFAs3F; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eUfFAs3F"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2FCCC116B1
	for <ddprobe@lists.linux.dev>; Fri, 19 Jul 2024 00:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721349353;
	bh=wZO+ZoLFG0Bq2QzfRZnB0Owf/II3Oi9GLoPJpGxvk/w=;
	h=To:Subject:From:Date:From;
	b=eUfFAs3FBc57uiV+GOPtCoWOfqSkrL7zofFKrwty4D5KyoGhCshl+MUtDZ9bGKbxL
	 Gv98RxzJkSLBoP0cURyIGVp0pNkLn4kVrLVG9qIZ0AoxVWN2mNwkWIYQIxskWhXxIQ
	 gxWr1AuTRN6VSJl3ctTexDXPpfnLnFGvzX6fSL4moF1VSsrGAZnnmmWByzcEOG7lh7
	 WWf9GIu3o/0lF9wNqmlHlMuImJLCETfp4sKWXtOSzxFCn81DObK5HoP/N5LQ5hXOYd
	 ku94ozd3ypHAdDS2Ddm1JRtl4zjNs70Bne+1SHsP8kuzlgADGdRdWRNV7X1a18DDsH
	 DUQA+gqE3yQvg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98DC3C3DA61
	for <ddprobe@lists.linux.dev>; Fri, 19 Jul 2024 00:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172134935360.9345.17151353612257956717.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4787fc5c70924199378d0afb81d771d459c6f459cf719c0713a0740c46ab4c71
Date: Fri, 19 Jul 2024 00:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721349353
