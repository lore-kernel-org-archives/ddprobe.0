Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A76126D4DD
	for <ddprobe@lists.linux.dev>; Wed, 15 Jul 2026 02:38:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784083114; cv=none; b=Jfyb/Vzrhxy2ElBF9uflIQDIGsAo2Pc5Fv7MoQRcZrtxSvMyOZfMCmF4h6vEXI4AOo6g5R6Zs817zuT9CDo43GQ53HZE02BD7DrKC+ixP9WteTmlc1zNqC5kNzIgl1s9qH23PXhcig1DcbN5kuBtM5uRzMyVbXvwyertIkog3LM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784083114; c=relaxed/simple;
	bh=xxdWzqCQxE5byA+skyBSgiSQbMwjEyz7nbJwRGtQAhM=;
	h=To:Subject:From:Message-Id:Date; b=KRCBATyv+AUIkXEqG//1cVk4m0BnT8a64yoq0lvgbjalf9H3hVjsvVMQxQKER4LEpU/M0X4rjnHYol1VjIQc4otyqyKyclMQMc/HaRil61H9/mIJPr2wldvS3/m/qupc084ukdhjQb3+UnIPEJMWIx4CxAE6TZ/rCAg9uYH0xlI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YcRB9c37; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YcRB9c37"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC70BC2BCB8
	for <ddprobe@lists.linux.dev>; Wed, 15 Jul 2026 02:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784083113;
	bh=xxdWzqCQxE5byA+skyBSgiSQbMwjEyz7nbJwRGtQAhM=;
	h=To:Subject:From:Date:From;
	b=YcRB9c37UjNb4+pytNYiSyFc8/OYDbgh2S95LauCqfaeW8OzAHSPgUw+tcPO3lnro
	 G9cdYmzdpzCkX86QoO91wsvXRA0bUvIfWNUc2fS0/xrnngwpiFs33Igx3chgg8WI5C
	 iDDbzi766HMJaaM8/f/JoTvYGHCcA25YMKNPKrUXLi9zPLeEev6tr1n4v3jOWVhdqp
	 niTKN2Oxb4q+pAYR/A0r0MMy5DBrIghxw8LfS1u5AHp+fnR4NtDk5UIsJBX94qzDJy
	 A9KdvYFYstrH/kPCXUaiFRA4kv3hsWUsoYlxMgRKoAu39Z5QHPtFRp37N+SxAryih+
	 BVA4FrVz4AZVA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5E5CC4450B
	for <ddprobe@lists.linux.dev>; Wed, 15 Jul 2026 02:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178408311373.31720.7912745047188626194.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 398a2ba0698d14cee029f764504340050db2139e220e95c91262061bacaf9233
Date: Wed, 15 Jul 2026 02:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784083113
