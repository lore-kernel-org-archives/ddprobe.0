Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28DB739B956
	for <ddprobe@lists.linux.dev>; Tue, 21 Jul 2026 14:18:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784643514; cv=none; b=DmGNGxnR0WBaCMhoIrSIrkoqBqOJgvLHe0cY5Xb7mGqePXBITFy4XfOIUvmvKM5OmozCRmSym2Uba7rgY8YdCHFA358KTM/SZ31DaI45gQDWlBtZ1EThnYNPq2wFvN/z549n/fYXYmWFcYbRSrKiIbKiobL6y8Ip7ZPvUkOHZqs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784643514; c=relaxed/simple;
	bh=IhtRm0S3QMsNjx5kUxQqZJ0Lf50sO4Xc7wG8vf3cZm4=;
	h=To:Subject:From:Message-Id:Date; b=sDSB4FsFBDzvKyaYAqWvjVimVRd5LpEVDqGHXO9YR0XmLsf+5dZIZDWe/aIUvSFAY7D4ltoNq9J94NZ5oGsix8DceqlkgXndrTFPshGLbyPEGkE/xX1H3/H6CygqHxDIoH1XpCSWM7+IjFgl7ZkBqtPHRcGdLRem9NJS0JQF4gU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aFFw648K; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aFFw648K"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D62C6C2BCFA
	for <ddprobe@lists.linux.dev>; Tue, 21 Jul 2026 14:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784643513;
	bh=IhtRm0S3QMsNjx5kUxQqZJ0Lf50sO4Xc7wG8vf3cZm4=;
	h=To:Subject:From:Date:From;
	b=aFFw648KBRwzgHNgJbBNiR7pHklCRWyfVCdC1+UC+oaxj0rBE78cjrznFp7D0fnyT
	 xKiCYWzG4VKQ9z2Sb4XO2JO3Z7fCi9VkD8wL+121VMGXR5wQq13Vpq9hOkBpJdHjpv
	 Ii8mxztvHXTe8K3XZz1mfehGd4X7boSjHAeDm3YLPGQ/1oJ0mV5Ej4MzMWWQQ/cTqg
	 qMQmICYoAAMcZbpnIR7j2ArUMcmwnqaJQKoc3n9MFCHNQ1ATuQSZnbSfrxp2lY/Z/k
	 hoo60txXtABUaHKkMvLfD/vBW2NQmJYtoB9UjhpofP0+rPFjVp30hngAvnPVYn0hO8
	 ia8veqQ+zbJXQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE65BC44529
	for <ddprobe@lists.linux.dev>; Tue, 21 Jul 2026 14:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178464351370.10554.15185291616534513115.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bb7c5ba889ff01f160530ca0f2ba52b8d7f565ff0e9ad7d5562c737431f55491
Date: Tue, 21 Jul 2026 14:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784643513
