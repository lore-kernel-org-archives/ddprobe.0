Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CE501F151C
	for <ddprobe@lists.linux.dev>; Sun, 28 Sep 2025 14:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759070394; cv=none; b=o2C7qbZkO9kOPsBp8Uc2f6Jz4rdHapNW+MczryZ63nJEoTTwvtMIt1qdHPElrJCmAgOJ9UjJ32+4BD/dkd4PO7X9cDVpNLReSzuoj2SY+5GRnxzGmYDm6oE2Llm4ZnBMvmoVl33M54delrgxjCajI/5uNkWvhlWgamY1qr9KGy8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759070394; c=relaxed/simple;
	bh=JUNiAtopoWayUWBdzVxT66yBhL4rhVaBUYN/SkYvhFw=;
	h=To:Subject:From:Message-Id:Date; b=Z9UsglrSFIUmKDMnX56Fq2QZIKKY0khqijvOiCBB4uvRmXuA+aU2xqMWmDKCXcEUXAZQAtr53bk+4lxnSIw2FXWekbTu5srjLdXRi+cb1hZiTMjZSli+r9Uvu4Dhx4gdQpmlPgLrcx4WVOaLvfaccXUcoTxXI/eCrcPcb3RphXM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=e4lJShgk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="e4lJShgk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A776FC4CEF0
	for <ddprobe@lists.linux.dev>; Sun, 28 Sep 2025 14:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759070393;
	bh=JUNiAtopoWayUWBdzVxT66yBhL4rhVaBUYN/SkYvhFw=;
	h=To:Subject:From:Date:From;
	b=e4lJShgkh3YcUHl53XkGGhXKOx0xdkdSbDPO2EJnjP7l7JQBBJ5tpNfcIkixWtsga
	 4VSp/4tFKPZ14C0c3Wu7gEcEb5Ui4IX/sms5fqjm1hV7Ui3Io/xEVrGhzaVUV3KROS
	 quPF3KNI27JNUYO7Tt1mxyePjYi9LY4Felqo5WUxTPilN+BEFxwL4KiA3SflN4zrOl
	 ONPWerYitImxuTG9Dkny047dCuIOru4IWl+t+niuDfyoJiLArLat40G3FOXM8b1D44
	 AAYKK/PZjmC+BdkYmn/gxpsH2izcxDs1+eESiiBbPZA0srM5eglQP6PcjflMiJF4n+
	 lYHO029znzYvw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9308ECAC5BB
	for <ddprobe@lists.linux.dev>; Sun, 28 Sep 2025 14:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175907039359.5548.7668101734698723771.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a7d245537b929127a60becfcbe4214c0ac97e3f206563f81f03c25781858fdaf
Date: Sun, 28 Sep 2025 14:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759070393
