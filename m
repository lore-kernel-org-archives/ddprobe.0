Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DF5CD49659
	for <ddprobe@lists.linux.dev>; Mon, 14 Oct 2024 14:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728917754; cv=none; b=CSKY1mSO/sHDLaIz8AKDjxMwlOY1lw5i9IEYcI1FkaFX33YUpbkeekY5AEL3rAfzGN38mM9oSlD7A3wbQ2X1ZVz4GXAUctsGo12jBJl2itQslmRbWznMBr0RWTmYZAKQfl9EKGhsaMdsTAD5IIgt8PHXn6/LRs1oOCGCBADz8Nw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728917754; c=relaxed/simple;
	bh=J4wgFn82c+TAUwUx4EWBc4pFs/WaIxgYAv0Ye5/LTjA=;
	h=To:Subject:From:Message-Id:Date; b=XlI4AaswEjHqXCN3rfCqygxu18deED49v3N4soCcPnit6pKxcv/dvfcb82pjJFFUm91C2JdXg9xvB0wiX02fZhqDVqlo6LXKOSHHNwDWoswWV/hpipZmhXlu7JFbOrL0LraWVhIAOfHxSZl8y5iYwynMA4tq90FgLF2s/i5clz0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tDtBmBIg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tDtBmBIg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6166C4CEC7
	for <ddprobe@lists.linux.dev>; Mon, 14 Oct 2024 14:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728917753;
	bh=J4wgFn82c+TAUwUx4EWBc4pFs/WaIxgYAv0Ye5/LTjA=;
	h=To:Subject:From:Date:From;
	b=tDtBmBIgmBRAw2bUrzMjVPiYlABKES7tBn1BMmRy2NQ9yt+laMBWneAbpp0XwXsBk
	 biqV4YoQgLwWyJMmHmezGsux3jhUOQlF206eg75RZ6KIJ1+XVKXeoIhQgpWS58LSwT
	 WxI5mUC7fRhkDAVLpwZhwOvN9F1O63y4h2CwPkysqJDSywXdOtrhSk7vrYAcYFlb6h
	 9J1baPu7D5axdrsgGk554QYElwNbp4r3qPq4/tG+TyCjYxKHxY4vdIt+4fqCsVzNBX
	 z6Mdpj4UB9MRpK1oy0tk5pukpns+7BP1bQD1TR1kRufG9+HCG/fU7DsQILbo4SFmeN
	 RXe6BWc8W8MUQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95E94D1627F
	for <ddprobe@lists.linux.dev>; Mon, 14 Oct 2024 14:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172891775360.5712.14457475743088318365.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d6b4c9f01bd595725308e5893e3f3f83e221650c82dc5c4f351a83afa3e6b2b1
Date: Mon, 14 Oct 2024 14:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728917753
