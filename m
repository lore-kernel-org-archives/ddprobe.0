Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6B7752FB2
	for <ddprobe@lists.linux.dev>; Tue, 28 May 2024 20:24:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716927863; cv=none; b=Q16l29GhpEE+x1z2mU9CdAPSTA5KkMJifRlPCj0GtJ0gIvnFMyd1uYmv70gGStS+u7+A7QKySdYfm6aclmXBvTA6y9dxYEjIiv0fWrI7R2xnQKHc41gyPFJtPaMPwQuT81wdTqaH8d7fscURvVMG/7YP1KefDOoFVnWBbha0XDc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716927863; c=relaxed/simple;
	bh=lDt+3z+l/N1Gz2tUMqU7GvKNmLSwqQlpZ8LhiCI1GgA=;
	h=To:Subject:From:Message-Id:Date; b=J0TJ17ObKH4zKOWX+wa/DSkjy2jMoKFPs+itzvwCfguXWh35Et5KdiYM4ifLOYAS1q/0PZ2vlL35c3a8nbo+bc0kwrTR+HvG5aMwEeWeQDzBG7hESx5mCjY0W85Rcleq8ckMDaUTf+7O6xZRvfp8m27ewrmANMPUbshQO8vkbxo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=prXNMsh8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="prXNMsh8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id F3C06C3277B
	for <ddprobe@lists.linux.dev>; Tue, 28 May 2024 20:24:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716927863;
	bh=lDt+3z+l/N1Gz2tUMqU7GvKNmLSwqQlpZ8LhiCI1GgA=;
	h=To:Subject:From:Date:From;
	b=prXNMsh8AoDA7Dlvc2NvoKKPeL+dH56eosxh/is/y/r1IMKnzjogOKi6C9OjlMNAu
	 ga8qLbcnM5w8NCJQOru3+BRzZAKKDHMcQrMm/kbzEAemaaF4T9W48u6f3U2j2qKyoH
	 UEwNYEPViEu7iXueWJGkV9PnkfazMI4HzQIW1Ogwqx3rfICKe1exuHuImIX1eU0Zw8
	 NpYBpDIKi8fhi/bzRVI+u+0DsaCQoVN43TWRnQ6Iec+pVICqb/rstrWPPzGZLJ2SYP
	 M2BlfJgKjPXqs24KKi8j0H64ai4NLa/z81JkSQPafzmCcync0bRlb/5rhin8BGwUDI
	 APYagbFsP177Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D6BE3C25B78
	for <ddprobe@lists.linux.dev>; Tue, 28 May 2024 20:24:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171692786286.12454.14856267003726430955.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1180f3dc8ea3c0c5051518005b650dfec263657aa35a7e9b077030beefbcfef9
Date: Tue, 28 May 2024 20:24:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716927862
