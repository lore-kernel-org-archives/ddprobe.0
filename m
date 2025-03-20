Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 412D174BED
	for <ddprobe@lists.linux.dev>; Thu, 20 Mar 2025 15:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742485794; cv=none; b=nkUI8sl3FqQRD7jmTqJuRhkuXERm/4kzAUpN1pCBcDEpgcAXQRS2k3MVx4Xva5wHrL6M2wgE2trSaKurayVN4fDcl+lLNI5xrNhuFDBrNVigMgzQHmQ42Am5FSL/cF+sg0b7VNFfeBvMUMbWaRSH9hgBPbJh8Jdeq+xiY9ygkKQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742485794; c=relaxed/simple;
	bh=JSdM7KnHLmp5XHAvsj9P0FNcoFH54bXCAQW7odTCGgQ=;
	h=To:Subject:From:Message-Id:Date; b=iDorS5bhiMDpLrefBGVvMNkAa5gvU4TgvhGrtuHnLTwSRWhVGMMgJeOrVZLcN/1LmmgiUf/ujGoBGOGuhZUW38jx4AyUct3zAgw9Ez+UnCB/M8PO/GnfxszMU37GYFYMYr/vyHeMsIAR0lUzxFeKJygel1u+PF/+U979iPTzR9w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nxUpAUkJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nxUpAUkJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3AA7C4CEDD
	for <ddprobe@lists.linux.dev>; Thu, 20 Mar 2025 15:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742485793;
	bh=JSdM7KnHLmp5XHAvsj9P0FNcoFH54bXCAQW7odTCGgQ=;
	h=To:Subject:From:Date:From;
	b=nxUpAUkJ+6X53V7VIfJuM4hNZX89gs4fpGLJeJ95YsNDltdDVA1ENSKVxvjTZXpYa
	 s9OuC0HZclmVGXo9rMTuyoTpvxyWE0ia50GB+18BnXLm0+ytLmF+3TbUXzrGvlSpJ4
	 0E18M5iklY8DpJ8e+mY02kblyjI1qNNzOimWZrnXb+MbPRfkoRL9Cgwysv2nIVrBDx
	 htSK/8rZF9HqV5H4f8gQmqF/N/OAJwby2wu/uDLqQW3vOez3gieUHFJZs0xykx0O2b
	 mVg67zNltVu3Edin564FTRUBMuJEfOnrb8WHsyFwEN7xxKFL1YxyCp/bIALW83h8MG
	 lSoD95HLVTbyA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9AE94C28B30
	for <ddprobe@lists.linux.dev>; Thu, 20 Mar 2025 15:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174248579361.4972.15705730030524192825.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3a0f5c9a7411311ef325842d33eb37df2b05263aafadfb8316dba57e62695243
Date: Thu, 20 Mar 2025 15:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742485793
