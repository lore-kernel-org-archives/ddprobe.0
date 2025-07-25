Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1050C291C0C
	for <ddprobe@lists.linux.dev>; Fri, 25 Jul 2025 07:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753427994; cv=none; b=qAj2x0PeHfngP4ivB2SYhutX4f32JlnZicWxVvyf6m2A5TtOTlyMCjMh0Xt/S+B7bca21/t3hvDX3zG2YHl5XaTts2wjhq9CbQvskLDSkVjZXIo/ETBKxIs3+Es68mwBCKq0i0cj67IlV64HbAYTYBRVm2XFvSQa+bOMI3d8e9Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753427994; c=relaxed/simple;
	bh=jE0Mw84OXfNTxc958PpYjVbk6Q+64KB7d2fUcjXFPmA=;
	h=To:Subject:From:Message-Id:Date; b=JbtVAkX+n2vha04AcHuiluA0f7/6FmvDoF6lfaBxbc1sCRI83ifI6jYs8I7ydJ57bZ1vfNSFtzhGQTrghiDpTM6QNznDM9oaNlFg1qsDcbQwgjke13VJHEfBPyOGfCTdpF1lOGmFWvcQBJfF1gFMCgsZneZ441Sbk/TXHB6+WoE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SYMRc7mb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SYMRc7mb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E217C4CEE7
	for <ddprobe@lists.linux.dev>; Fri, 25 Jul 2025 07:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753427993;
	bh=jE0Mw84OXfNTxc958PpYjVbk6Q+64KB7d2fUcjXFPmA=;
	h=To:Subject:From:Date:From;
	b=SYMRc7mbeCbr1ZpXR5VABH0pWVvcrklo1MZhRmWpDZYATeJtrxc6FwGe3KBcM0Fj7
	 CPgqC90LE5/Y7oHdThcFuLJ3RKzbmm6tCcnsns1JLUUiRBrGDpND98ySxnE5Jqr1Yf
	 a6HeqtH6Thjklqae9C/sW81U8ZeMqWYrBJeL7DlaaCV9LPSz1JHOQfvXO4bD7WjshA
	 hEjwBTXwh5JehdzulImAuU2mg8GP2YRNYr3FVvWQa6RtTNbVnDlVrAQrNwjxBgY31B
	 BQO/OqYVVlHHfleVtGLMOEK7147XYSnKB7LZUVjXw2YPy1Tw9ldytPsb+lwFDoASk8
	 t27kqBypNIUqQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FB64C87FCA
	for <ddprobe@lists.linux.dev>; Fri, 25 Jul 2025 07:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175342799357.31372.15062372779927671036.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5fbb791ac0e8b6316133a1446ba1b3d8b9d7793337b9c4964edd59442c24338e
Date: Fri, 25 Jul 2025 07:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753427993
