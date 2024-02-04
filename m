Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AEE1318E12
	for <ddprobe@lists.linux.dev>; Sun,  4 Feb 2024 09:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707038896; cv=none; b=OlvDPCmjHwpggENfMqTRACHd7rkpPnBNXxIrn1XApWJXI2fI/xrPecSaFQu+Rok+NGSnkuQnJNQ5uFxJaPyKsLX4bNbFxsxT1+EbmZJK7SwVFpeflYZ316/OyMvuU40Rq60P68Na+O6c9MYLmT4AWHveFZ45mI+e5A3KcPiwPrs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707038896; c=relaxed/simple;
	bh=o63lYcZ7fR+OzowDS8r9dfHTC36BZPoP5NV0BapDudA=;
	h=To:Subject:From:Message-Id:Date; b=Iu0l/X+JXR5p103wJRg6WwfOxtOsUgM5mT5GfuWK9NKyu3gV4T6tIhvg0hdjPsXD7cnj+0xS32kI3HvRIsBQsJtC60hR/qJ29BdW/DYPFx7aq8bhU3TEd8/WFDCtj+KfcyESd9vo1EGcjwzB2/OkRu96gs7lqQNJ1RctZ0Fg2b0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XDlXKeax; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XDlXKeax"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 821A6C433C7
	for <ddprobe@lists.linux.dev>; Sun,  4 Feb 2024 09:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1707038896;
	bh=o63lYcZ7fR+OzowDS8r9dfHTC36BZPoP5NV0BapDudA=;
	h=To:Subject:From:Date:From;
	b=XDlXKeaxiSwVEEry9yX6ArA/6nnfaLh9PPmm5DPsQ0gCpHi/UnHPYfoFPvbnaa100
	 jMyTPu3ekpU/9tRLGJw2UVOQL2edygexedZWPinMCV4jONH6RJepZzxNlRviBZQboK
	 HUt59A3IuuMoMkOKMlqhcsdaFt8Wn+25HjNoaz7gg2P6QcmKhFX2ZhZg8UsIP9/fRF
	 kK3mWIg3nqz2e/qD7CC9hZZVAupVmRjRKjZn6ihahFj3IqwtsU4pkIqh4gsY+SXjRB
	 gVIeJOBGaCaCe3CYxnsyr93iUKxMeP3NVjYYqIU/5p77n13CJzML9YOWOnkXTa+OXk
	 mkFywFy/XbdMg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6647CC48286
	for <ddprobe@lists.linux.dev>; Sun,  4 Feb 2024 09:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170703889638.7382.9042132087472651003.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b41541abc6a5060207a3af7f211db64d8ccf37d411170c41f497d19dcd3648e1
Date: Sun, 04 Feb 2024 09:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1707038896
