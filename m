Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4ACA31B85D7
	for <ddprobe@lists.linux.dev>; Wed, 19 Feb 2025 07:58:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739951934; cv=none; b=ahaHtHTdnZ3qJhGMJ3ugk58T75N7mb+NCefsugk4+c+crmaAbBeHLJVEuG0yobzkLTKCul/PDZRGgOwZXnZisSHddoUKCAO63w/EHPAWdcavnVCbrHDeM8lDOHUFMZfBpcua8dfhKqLlln7Abpw/UMs8s+nN8PYIVi61cB8EwgM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739951934; c=relaxed/simple;
	bh=99J9ktc+OmmrMEGmNgMSE6Yzq02Dz6qoPBjjhCTCeKM=;
	h=To:Subject:From:Message-Id:Date; b=grur86YN186eyQz4dXsTzZe/KXsq13FzLVrv/u5J/fRqO7VjYCD7MDWf7mgMtFJlDAqgVA8Xh6DeV6jt4cGfC1INOGgdocpD91Ci/FR+XaZyqJtRG1JQj/lqNSmjDn1xo2dfmjLi9cPM6wYbSahcI1C4zTZ8DhW84YY8thGCCKM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ckz6P36p; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ckz6P36p"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2B61C4CEE6
	for <ddprobe@lists.linux.dev>; Wed, 19 Feb 2025 07:58:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739951933;
	bh=99J9ktc+OmmrMEGmNgMSE6Yzq02Dz6qoPBjjhCTCeKM=;
	h=To:Subject:From:Date:From;
	b=Ckz6P36pmTAcbQxSlq6cxHzOOtc8TPVas2CDOTfcBuQIjA2zZSDuur6NmIG885mc8
	 dW7ViURKBKxA4BYYB/PKfascI/s2m7EihAJLvEYTZAOvrT0eSSrIgU8Qb76xSkTY5O
	 bvDGXnaeQU8S/I9asOiNmHvyvUXJrL2U8cfZCoWcrw2+N3haCuqc84YMsFh5Sj4peY
	 80um0rMFmfEUceU92MNHiVuR9w/D1O6vmfc6hzRjON2qkczm6Lmzr8prLWSt5HNa9g
	 ES8YDi7YCv6by/rCtzSZ/2CvmNzwAmE6z+OaPYHZgorM1x3pXef3Q1yjQXSqVM/NJO
	 mrYpw8m+JarRg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D6EFC021AA
	for <ddprobe@lists.linux.dev>; Wed, 19 Feb 2025 07:58:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173995193363.21061.11863956339481673428.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7db7ccef42d47a06339ec4ada5bc64ad5c6337eb4218a58ef697b52c4ccc68da
Date: Wed, 19 Feb 2025 07:58:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739951933
