Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D2919146A66
	for <ddprobe@lists.linux.dev>; Sun, 19 Oct 2025 07:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760859593; cv=none; b=SeDrTmfmXO6kBCJnFW6plRryDb/Dp8mO8zhgpPngfArcGek4+Wyc7nMKtBTLnjY0BQ87FkSeb7R4kxnDiiz6qKuZ2NeTSyTaS7vmlCMlTy/G3TrJgLBIkveejcBCeb1WYtI11BtBf1s9ef10qXs5PmWxsQyXh+qhp4hKq/i+jBU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760859593; c=relaxed/simple;
	bh=8aDATjjd7TGWAOL5J8GB1xlFuOMalydZ/RDuRzt6mhU=;
	h=To:Subject:From:Message-Id:Date; b=BbEl6ANQb46N8Y7Vkb0cd7mBcLtg8Tqq3EOaLtz1AG2hbmNqWwxyv5vG77k95fP+JZpa3hDRSpX79pc8EyJNLMsgWYJVWa+olxuA9wnXvppmyWfbIhWp1T7txeNYzkKerwnKdOD3vh80aImEfvV4OtcIajwrxaYBcBSZEJYyyv8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gwgrpOyo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gwgrpOyo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B16FBC4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 19 Oct 2025 07:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760859593;
	bh=8aDATjjd7TGWAOL5J8GB1xlFuOMalydZ/RDuRzt6mhU=;
	h=To:Subject:From:Date:From;
	b=gwgrpOyoPSO0Yt2/luiZbrO/9+3g712v4q+fEKrhrfjX96ikTE1EKjTiqlDDRSaFK
	 ZeA3ZaFXoaYYU9BAa6Eahqx8Tzev4WQdtmeTZ+dSGzhVvgkU5JzllgYHUg0S6BskUm
	 hQftsQUAjWnSMhyaYviTrCsWA3ITpxlKEAcJlBKnwiTqu1ZFFZXSeiHssatkRSAyY7
	 pV7GwrS+1KBWGnrT8zMpTRYRoCczCnwl4+j/qLWQt5SYLsxz/riZXtTi/zrx1qBX2I
	 zMRi16LjoprdsFvrkgg6fwAMPj75MOfwU+lvKCEuuh/BL9T6ktEcAbJs7VzLEFgIDm
	 PrH5HCv6pgVyg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 999C0CCD184
	for <ddprobe@lists.linux.dev>; Sun, 19 Oct 2025 07:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176085959360.3843.4812216258433718829.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 85874d01f19856f9f0d7debf907a4a89f2a0c69a846c99b5e6a09f46bd7d020c
Date: Sun, 19 Oct 2025 07:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760859593
