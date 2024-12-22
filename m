Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20CA517BCA
	for <ddprobe@lists.linux.dev>; Sun, 22 Dec 2024 03:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734836754; cv=none; b=sgE4XH4pkv8hM3aNkFHmJuw5PcdRIpeXMLtnNjZs1qRxc1IQdB2pDLirbh49y609/OeCKyhIZ5GUsTJKAQHdQSKT3N/6TO665mWik2FqVxkbZYkrJ334IGzE+meWAiSK6QOnd7ysKCDBhoSOfsO9P7GcdzZ+0cZCIGbgrP14BjE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734836754; c=relaxed/simple;
	bh=zR3ue7ndLCZOgxqFEmjg5SksS+UiOQaKc4aeEnCaMC4=;
	h=To:Subject:From:Message-Id:Date; b=otPTfmCYnG5rv8v35yzKanBerEddI7DL8qg17Z6cAH5SUJq5tgQurqFX6A/JRF/X396/zvwJvuzLQWX9V4jyh0Qpem4Jwos4WdNeIvUYimBtwbhgSUaNJSLbB2mHvV5BMySpA0Imypbm1CgqSW6elK1T+cKaA9oefJ61hBfp7Q4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Jxtfi3CF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Jxtfi3CF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A561CC4CEDC
	for <ddprobe@lists.linux.dev>; Sun, 22 Dec 2024 03:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734836753;
	bh=zR3ue7ndLCZOgxqFEmjg5SksS+UiOQaKc4aeEnCaMC4=;
	h=To:Subject:From:Date:From;
	b=Jxtfi3CFbxu7wZp0Yfw0Y+3k0k5QY0RuTbiokMnRKrMeWtwaXfspoRY3+Y26Y1wMN
	 MclbJAc+4NEYkIZBF9xvIRQRNak+pSRlSU+gh46M2SQ2xukC8jY4bDrn/CZnqZSUda
	 ++WOTltAGhXxkGSeUvLn3JTUtIcC88rYd9CziXETdCMLovqF3c4Ndp3Cm0SnpCRnrD
	 etlULolGauv//YehjoccEGZB+FZl7BlUGzf8l3YywSVUJoM4ZiTanwe2mSPglT0Prf
	 dWnmsmE6I/u+pZpNwfg5fVvdmAcoVlqoMaezdV7OnqyZLdjIANqEFaitwSReCp/NcJ
	 zmtoxKDKgIXkw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 924ABE7718B
	for <ddprobe@lists.linux.dev>; Sun, 22 Dec 2024 03:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173483675359.3720.14541583196502615227.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dccec951cd53934acb2d8892759132b9c1b86de87dec57b5b437ef906fa21848
Date: Sun, 22 Dec 2024 03:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734836753
