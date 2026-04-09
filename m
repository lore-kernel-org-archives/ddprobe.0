Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7EC162E6CC0
	for <ddprobe@lists.linux.dev>; Thu,  9 Apr 2026 02:35:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775702134; cv=none; b=GBbLR7VbrdKPMlGm9FEbb3Kc0w/mZqdBnfHekHtQc/Npsf/innsRNSFqpXpqYN1ONVZQ4Q/OXClK5AJGw7T+xivkXe6X3VM7wdIQ3Sr3nNeKCI7wQRNcyX5nX2FNHETb2kMcEZYVXB8Dk1kcBcftOTgL9poS+Aa4hcvxEmCQNUs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775702134; c=relaxed/simple;
	bh=h23U6awjmg+G9HYCFCYuK13/xipBBIP23sxZZQx5GKk=;
	h=To:Subject:From:Message-Id:Date; b=p4pks0XnkGDH4qcfrs7Q0hYIn1LxPRmTimm1gf/J0adoJsIM73J3iO1m2aAVkofg94CbcTauxoIhBMZKp/hasTsPbmJ27Ry3W4Eh4lxabXJpS+thmsnnS9p31N3A0kEqhGzI04gXGKOBO76dzVN/7Ap6iddFB2y/Vg509x2LfSU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=r+qrUxhC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="r+qrUxhC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C437FC19421
	for <ddprobe@lists.linux.dev>; Thu,  9 Apr 2026 02:35:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775702133;
	bh=h23U6awjmg+G9HYCFCYuK13/xipBBIP23sxZZQx5GKk=;
	h=To:Subject:From:Date:From;
	b=r+qrUxhC4Pezic5ARzTznXDqQBVA4VZYvAeXQIDWJQtQD6GxuLOsxGr1JZcIL0Jn+
	 eduCohqFnebxv17RxpgMHdeT3siT8djeRtHipjMItEaoEswQ56lM2ai+pAvYvIj6d0
	 BdvbtN0D/LovOSPjji0rP6e1B81mTPNpy6XXphl2c3QXDF5s7vRB6t9dpbm9BEAQMQ
	 WbNrMbxF98VeGaazpqsuXj3ZF4qhU5fGm8fnW5CQq6l3QRYdgYvphS4X0gdBrmUKXu
	 eGZT2i917ro60OM72JKzgafBrNUTpDh/MVYY1rQG5Cckvthu1cRSq4Zo/fOKK1Qw2h
	 kS83LTx/85OOQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE02110FC456
	for <ddprobe@lists.linux.dev>; Thu,  9 Apr 2026 02:35:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177570213368.21994.10501879599993656181.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2c966bbe52e296d1732ecbcd6ffd8d82f9960190cb8807a82d8feca1a29cf414
Date: Thu, 09 Apr 2026 02:35:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775702133
