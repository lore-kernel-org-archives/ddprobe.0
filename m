Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B2D330DD2C
	for <ddprobe@lists.linux.dev>; Wed, 18 Feb 2026 07:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771399494; cv=none; b=Fkgv38i/YKiwswh6NEzjR4qHv9mouv2rfzaPCopnOiQpYXup+4S0flPMM8tFs33UUgQvnopMSjTiLBeOy7F65QvbNDtpEj+HoR2Ffa26a58JINK4BsB3zzQqDIq4IVqLzjSW8hMscCjF77ptphYt9SIbq3Ou5WLwwc7RAzG/awU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771399494; c=relaxed/simple;
	bh=ZRgD2TzOZxiPzeM00CEgzXKi0kUcpmJlyKYxIYLPzTo=;
	h=To:Subject:From:Message-Id:Date; b=ggdkMC7XJ7ZEJqBpdfIRVzeeJBgrenTuR/QGBSVNDXO59n7SL41a1oNo3rqkUN495MbZQNDu3EPE07WgWgW/2xHS/KZWNVGmVpNdj5OElaR1dy9a40Fnc/pziQNYIE5YMrrtvLsFEKn0/xzgC9dhlUD9Ag0tG1udIVYayUvKPSs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=R+CS0jM+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="R+CS0jM+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8698C19421
	for <ddprobe@lists.linux.dev>; Wed, 18 Feb 2026 07:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771399493;
	bh=ZRgD2TzOZxiPzeM00CEgzXKi0kUcpmJlyKYxIYLPzTo=;
	h=To:Subject:From:Date:From;
	b=R+CS0jM+HYoyXzOJ5Qhq73eFh0zoOIAp0s2ajQXihVD6IhKxjNTivIf2CdCgca9RK
	 wRqDLXXEwb1j+qpsgtpYbrTgogZPQRgT+hLGQBuJQdSIupKTZyePBb1FccRh2hpjPQ
	 X0qfOK2iofbKOSqlkEdGyFbu+HOkAzZ0fmvLj38QFPlru3koWE6zB9Bb3NJI0etDzE
	 uYO6EKodklPd/+0txHSzc9zignDKI1MmsZYcec8uELXB2ovp8JQkLGxRxWYSg3I+Xk
	 Nk0nRjGsm56giPIBMhK0m80MpfVScoAyo8Cdjc2dH2/NO+J+zk6h6OerX2wKVotFaw
	 4so9YK5Uw3xGQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93EAAE9A03B
	for <ddprobe@lists.linux.dev>; Wed, 18 Feb 2026 07:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177139949359.9433.4825931769501514920.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8ce725b27264603005036e9180dfd15cc62847c9f563d8b58e6544769e5c90fd
Date: Wed, 18 Feb 2026 07:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771399493
