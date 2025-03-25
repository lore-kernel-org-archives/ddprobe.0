Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D4C314293
	for <ddprobe@lists.linux.dev>; Tue, 25 Mar 2025 01:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742866795; cv=none; b=C727gZI9PuUbB228AsJXEBm8xeyMc4EjiLuWBAwUXIskKteNx0CenBGjnH9Fe+IWMfiBeoGzsxdbNoEUI/qfiJ2wkMz8LYYml4qxWmvxwx95+0N48RvMKFRjdHhVTuRz7iRjsLLs8Tur7MYN4w9iCaDZiIicLgbZuIVJaM3LVXg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742866795; c=relaxed/simple;
	bh=PwDlU32kkMzgofIKxe4oXYNV++Vq8KcqIfEzK2OzrKI=;
	h=To:Subject:From:Message-Id:Date; b=bP/v2ckWitwZFd3Vhr6ildimaTLo9nO88olN7Ejs1awtScs3PdQg3krxLWVUqaopKMVZy+V81P9531gyCouw3aiHMhn51v+MjeeGRy8IkIHfOe8n6zWbY/KhECGAO8ra5LFLsojq8P8MxXPuKi8TMySfPqeLxCi5/EEV1Dk9O9Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=P2myuvnN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="P2myuvnN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6492C4CEE9
	for <ddprobe@lists.linux.dev>; Tue, 25 Mar 2025 01:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742866793;
	bh=PwDlU32kkMzgofIKxe4oXYNV++Vq8KcqIfEzK2OzrKI=;
	h=To:Subject:From:Date:From;
	b=P2myuvnN1DPj0rMWxPSGH6BLbr8I0kLbOCCXBL1I6QrujYxAGOAf4wAlcmMriplOh
	 z9fYS9mnrGUJVCnrz/xO2gx9EnNTvTxcOaBx5g25n7SKcevyYLceUCh3Bkzaj4Wx5x
	 Sn3CnlaX9fWO8caPmru2b56Zp2oKKqMzT0vxsfo8XT6UkYLWkKE+aCk7yneHW+EcEq
	 +TnlY3VMFsUyeia7ohwYcPh6qRJtfsAKtxuZlf45J34+zgPUBYE6GWrB7Cp8aAVNzN
	 uJzCX2ZSbvogc4hl5YvDefqhXiX6EHhP2NyV3ez29Fzh9P+dl3VLPNUhFPmEnbnlg+
	 oT7lcirQqLnkg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B1D9C36002
	for <ddprobe@lists.linux.dev>; Tue, 25 Mar 2025 01:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174286679360.11866.5272512025355389840.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e22b1f1de1788efdcd5dbd0314787c9d1c95efd77651108ee6a901086320722c
Date: Tue, 25 Mar 2025 01:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742866793
