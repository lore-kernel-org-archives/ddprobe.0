Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C7721EEA4D
	for <ddprobe@lists.linux.dev>; Wed, 25 Jun 2025 21:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750887594; cv=none; b=XaVcI0sO8VgnoP42XZPeE937sak5xqxMSqCaieTaAZRb3Rpeit5k8umj36Z1axHflUGamEOxpFxRmK5wyKbfMORZ5VeevkriNiWlIOKc6defgDWItvUkFi7jtTD2pD3RPoK5mjW56oENwmWVN8/Qs8/z/LqTldz6JTDCZV2hqM4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750887594; c=relaxed/simple;
	bh=pWKeG2DUBUF7fgLTWeVSwascw9nhmCKKyNDlac2CiQ0=;
	h=To:Subject:From:Message-Id:Date; b=WrFSHo8tVc+LQk9ShyViXg5DbUXCGYJdZ7h/jHJcSr6kqZP4/RrpTQ4QE66EyyNB7ixW94+cw7oPOFs6BJo985l+Wgt3LiaPsrGG5kYDndg7ZTrTYd/UpOM+oNuTMs2gZRlg7//n7DDhP2nQUe9n3IVU8CpjKZng10PfrvwfVas=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Cw2ekcf2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Cw2ekcf2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1FD0C4CEEE
	for <ddprobe@lists.linux.dev>; Wed, 25 Jun 2025 21:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750887593;
	bh=pWKeG2DUBUF7fgLTWeVSwascw9nhmCKKyNDlac2CiQ0=;
	h=To:Subject:From:Date:From;
	b=Cw2ekcf2BOMTKEaIXKZsg0T9l3jnwoDqqkZM0HF7Ud5JqTE9MTAkaQXSCOYobSvy9
	 pdg8LUz2KRtf/XWUEp0SoS3O2nI6Xc575jJBbU2cbHD/D9QZDZbCduOCd+3wxnCBcn
	 OIKKFNQPp/Y0hqCIAB6KuRFOICDvYKc2/MAX7R/YAUbB3kJE836he50rKwnDQkDOf2
	 A6xNp4Nnb0bHWo1prsEdxiOpCXHHBenbJtNYPlHhg5MFHI0MupJiKCMrGBZA0bArfx
	 ZOpjm27yCUzuKwl+WXXCjRbmk6oCdHp8s+fpwUNrUEC4CwIUsYyu46Votg7AsIYIOs
	 WFl+/EI5ST+OA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F137C77B7C
	for <ddprobe@lists.linux.dev>; Wed, 25 Jun 2025 21:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175088759357.6045.8278738092108040210.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 290cefd06b7970dc06e66ffbfc6fb713a48a6c1e51adbbedd66166490353c40d
Date: Wed, 25 Jun 2025 21:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750887593
