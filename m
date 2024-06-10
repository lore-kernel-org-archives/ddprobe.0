Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5ADAA77F12
	for <ddprobe@lists.linux.dev>; Mon, 10 Jun 2024 13:57:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718027843; cv=none; b=RDtFsMNkdZG2QhposDNUwwPG1tFlarYsX5/M8R4gP4xZW7PcU8XhQyJfCQrnZzoe/EiIGPhnyWgSOLHkKI9pNruux3QvdCbiTPNbXeLt3oN0IdKMKYatDDqDNpeCSZ5RAUcin0/VVNwLoGTroHFPhaSjFI6CS0aMu1HidwyHDiQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718027843; c=relaxed/simple;
	bh=GYTOYShNuwJEIK/9UwDqAajbCFjMmhqL3yDSVkznNFQ=;
	h=To:Subject:From:Message-Id:Date; b=u9fnr7odysKRrP6jr6GYM0H2DqOLmKzhDFIIBoQz8Xyi5we5oBMwwN5VamLaRZi1Q7fcJmpz62Cb3m8NqL/07fJGXPtcdcgVm6eUMQkIwpYXOECA18/8d6I3mM/4rAMi0Yh15DRpKkPV5aVbhS0cM/jpPoPwRXeahdwni7uJ878=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=A5i2fMzC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="A5i2fMzC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2224C32786
	for <ddprobe@lists.linux.dev>; Mon, 10 Jun 2024 13:57:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718027842;
	bh=GYTOYShNuwJEIK/9UwDqAajbCFjMmhqL3yDSVkznNFQ=;
	h=To:Subject:From:Date:From;
	b=A5i2fMzC7Yx+80xLSEFQJBnLlZHAV7TlP8PGP99a6153SdU+ao9CWUpLYLouMgSaz
	 AQFq82mYPtD5MzTZliKgtyAl2ISuQZc65+ITF77p76xZ1WlNKUoOc/GSuyZ/8FDKzS
	 D8VBU3oRgU1zfETWsLOaRqp+cyXJtd1/ri7XfoL+We/6WG1gB2XHypV8MQSQ6aOFCI
	 MD409TyQDkI/CjwmyRMvLWcV4bO/AoYanIJndrNYvTbb23mE8xa++6NDgs8wFHXuP5
	 ovWxvGb2Jp8dod1FrW17lg/x8597dTn7mP48PlUbI/KwwdeXTKmXAoiZ7MQchrjg3V
	 V8XCD8wen4Y7g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C04D7C27C55
	for <ddprobe@lists.linux.dev>; Mon, 10 Jun 2024 13:57:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171802784277.30358.13756515867085608571.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 81229cdd0f7ed666f5741a23f7fc5844b9606add5e50298477e8f35a1f0dc51d
Date: Mon, 10 Jun 2024 13:57:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718027842
