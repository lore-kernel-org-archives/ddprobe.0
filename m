Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E3E248EBE4
	for <ddprobe@lists.linux.dev>; Thu, 24 Sep 2026 21:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790286034; cv=none; b=OwjDr9ivWFi2csd0FBOgmrvuiHh7I0PL/ZQrwPfXw0YPAt7LjyyYyrr4Gh4w32Zcs2PeR1jnlItgUP1x1DXyG5ash/sRsdRTfRpH5iOkhBaJIGPH+Szc9/k9C2P/AkbavhvBySdfc6OPY2p0gnDKMwr8FXh6IVySKPwpjA3RVbw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790286034; c=relaxed/simple;
	bh=kkCrZNK02csER4oVRXZ+RUoClu385Z8UW+tpYtZrO9A=;
	h=To:Subject:From:Message-Id:Date; b=BmsNNA/wTPv6NL+O0EvVa9jmb4ngvrs6wcbsLML0/fTOjes2mozdyTHcAkGUGA8sHW/ZY2sJIMD/EFMUL6E/4QXP80wgabpaYKlugqQRdVfRAHM5m/rBofIIxYa+WjlRQJ9SwLJA+DgtRiBIgIzV612OBRP/+Nd+0cPCPRGr5+s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=i690rq5i; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="i690rq5i"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E2A95C2BCB3
	for <ddprobe@lists.linux.dev>; Thu, 24 Sep 2026 21:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790286033;
	bh=kkCrZNK02csER4oVRXZ+RUoClu385Z8UW+tpYtZrO9A=;
	h=To:Subject:From:Date:From;
	b=i690rq5izBOmjy8bV2PM3Q1VUO30IOWVSu2CVSgUWK6LsLACiqelUSB4Xy3ElDRkF
	 6TdT5stCw7PwncSDbqLIscrbQ64nS9SB82OYOfmTC6vPtfGRd7xrTkTuyLdm9u2RWo
	 n50W+cgFyiI8RxPrl8DAFqrOA94VoiTykoaphVJgMguhosUMIqQub+RjGERj5wvZzZ
	 QDL4xqrTiOG2t8I0zHvHg7EGuGYQmaCClhgd2eBrSIiQP44/UQ12XNSJ/W5NrYNesD
	 4OM342+44NnDpfVRcI65Kp+FMqpUf0GBWrGwqCoMjLurjLcRLd59lhbUrCJGLnVh6j
	 m0d2NxovMMaxQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B7490C98318
	for <ddprobe@lists.linux.dev>; Thu, 24 Sep 2026 21:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179028603373.12101.11017279350133739459.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 737e9f6d95a432851f8b8a8dc4ef57cbcda1adefff810e495077154f34807842
Date: Thu, 24 Sep 2026 21:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790286033
