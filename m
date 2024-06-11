Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 50A1A17D351
	for <ddprobe@lists.linux.dev>; Tue, 11 Jun 2024 13:58:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718114303; cv=none; b=nz5glX71nibNWPNhi3AoOiJn6QFVMJ7njLsBYIDipHXaRU31N8Ol9vANxNyjW7AU6DRZQ3C6OCIX8145WHAHI/CdAIFNG5YtLxYPY6DH+qKyfKkrYBWhNUsMatyRnIHl2TPuDVqCKgM7Jqc7h53TFhhCBFasEqFM1SQ2+JKBre0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718114303; c=relaxed/simple;
	bh=6aLFrkkde1RXVCKjzpVepg8Kgiin65/hb+bBLern3KU=;
	h=To:Subject:From:Message-Id:Date; b=m0Cs1JvIj2IxdxZY+NfyAmUAKsk227mGQmDeDh31/GJn8Q6dJ1T3ei64N0pCR782WU/jfJ7VKKLaN3JwdTGopyi3DhmZFT5OLzLKrE8en7LXAyozSOvk3y3/E3kdX4KtGmz2foKkHacPz4jRtLWd3gNfURcWME+YtTXRrrCME4M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sxhh/fhl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sxhh/fhl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE73CC2BD10
	for <ddprobe@lists.linux.dev>; Tue, 11 Jun 2024 13:58:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718114302;
	bh=6aLFrkkde1RXVCKjzpVepg8Kgiin65/hb+bBLern3KU=;
	h=To:Subject:From:Date:From;
	b=sxhh/fhl2Fiq+MGTPIIgiSNtHwiETFeaRkeXEx4pO+NAEkUxu5I5gW9j5OkMw7GVb
	 y0GkTRJtoz/Q0hJKYl0xaTbudQTfnly0wwiz82e0i0v5iAYbXnFkVGLTV1jJNvDkkT
	 fWCtx4uOebhcSk0wBJVvTijVu8pdIiTtdu6GJnn+cICcFPcqYpRCeEIS6tMHG9bYkp
	 kdrkmpUXBtXETgx/H+r3+ZeULkZmhBCvoXUXF/DeMYSqDz6NQKeBeoKxZC8FyMbwSv
	 96j+YQtcEX/dqzXAnM3ALWyI9aeSN+ot1U19+Z2fN9HhzbuERBlQDRzAADZLwfWkpt
	 Aj9QrDZv1vgjg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BFC90C27C5E
	for <ddprobe@lists.linux.dev>; Tue, 11 Jun 2024 13:58:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171811430277.14209.6385736738216446000.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9ba0034fa707af4e71f5baa15a79e82ed71b4c50dedb8361321bb654322aa2ca
Date: Tue, 11 Jun 2024 13:58:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718114302
