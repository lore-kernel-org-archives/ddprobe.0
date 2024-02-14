Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1702F10A01
	for <ddprobe@lists.linux.dev>; Wed, 14 Feb 2024 05:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707887297; cv=none; b=GTHPLSUGUdGFo/ybNktaadIybMWPN3Bx68skbm0N9HsAYPz2wMPI05lMkfcml7wDRij6yuyZpOdNJcWsouvJwV24tsqe61l1RX90MNk++6iKjb0JoCEsZVpKFljup6LJkyZwbkcPJkQvw8t1bP5Q6YbbDz5H19Z3qMsl1CXE6/E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707887297; c=relaxed/simple;
	bh=L4KLxdtIV0DKEnxD7v843LLnYcy0kWExXV8c3FDvFBc=;
	h=To:Subject:From:Message-Id:Date; b=FHpXsARWhNHQt/oYqQbWkNoVpGJrMUr4iVjTKtTHGq48UmoYDcMOrCHXwk+GLnDqQGdEC9gpyxb3kiedDrX0/ss0AGJj9+uvvwTYJYm8ptSuRaCrVXU6qULwcmrPsqsvyKxAPLAd4IRIPKBU+l5STOK8WtKOowDdQjFLPwzyp3g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qX0mACAt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qX0mACAt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8D73FC433F1
	for <ddprobe@lists.linux.dev>; Wed, 14 Feb 2024 05:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1707887296;
	bh=L4KLxdtIV0DKEnxD7v843LLnYcy0kWExXV8c3FDvFBc=;
	h=To:Subject:From:Date:From;
	b=qX0mACAtr9J/VkHTEXmfXS7igqBhFnKNUSZ35PgbIP6LbiZ+h0Tmw3E2P+kaCoFNX
	 tKJf0jvm7vbDynBK7Xlqt0dbL8gWLBBAS0C8rE4uVrqreVDPcD0pS9wS43N1ivQtMm
	 x/FQAWcbEU+dOM+/TenFb9XxSwGRKfCsbeWv+QG7DT0iwo/Uu77WtVltfJQsl8olce
	 vS3f7rQQqPNJLrDFFJyqA1baY+SFxHfBS0+ANwZD0F64MDsUIHIe8WZZTaUJk22hbH
	 FNY/01RhdmiPqiPlrgXO2AxX7XwJlnIYpLIr0J+GzODU8U5MsK39IGMgcJzSuH34Nh
	 cXsXKOmMPpcyQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6C661C4829A
	for <ddprobe@lists.linux.dev>; Wed, 14 Feb 2024 05:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170788729641.32255.3781022424855663787.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 782330465f2231aaf979d608a0a980f208eb0427c7615b21514af88784c0e067
Date: Wed, 14 Feb 2024 05:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1707887296
