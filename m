Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3037429A33E
	for <ddprobe@lists.linux.dev>; Mon, 16 Feb 2026 09:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771235094; cv=none; b=QAIGXIV4GVfiz5y4tXCifSe9g9tF4J2cnP5mbxk5A/DKwm7YP1/vd1YMZ16ttIIYhiId1nwyZKCDYBSbaqOeHsty2AwInrEHAq1fTXhtXP2ukojX6u00wuciO+Bv1fvH1VcEGDH+UkrdIpujpEBkED2JvSUoawfPEOy+5WIHPlc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771235094; c=relaxed/simple;
	bh=VnXkdA8Mlzperr+9IByUjRfOjxgbdipe2O7nedOlno4=;
	h=To:Subject:From:Message-Id:Date; b=qH7KTk/j+5cKGyaa/C9ol7tXMVBA0kOTpCyh43+6ksn9vuzSHFk/C+A2Tk4bSZppQlTMn79YBasIHPSJ8PewIs+uUhftibtJ2NUVjqnKKM8hX28DFs8ceo46KVLggCQ6HluQsCYfJRmFgsa9rSArr5bjA7YcXQQZQ1+CSB0ggeM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CvEj6zoz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CvEj6zoz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8C3AC116C6
	for <ddprobe@lists.linux.dev>; Mon, 16 Feb 2026 09:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771235093;
	bh=VnXkdA8Mlzperr+9IByUjRfOjxgbdipe2O7nedOlno4=;
	h=To:Subject:From:Date:From;
	b=CvEj6zozpogVcp57F3itOB3CjMJhbOM2U31vCnl0tPNiCXRoqGJEBK7L+tBIs6h7v
	 9aiC8edlbdye4Z2oVVchJhcUIZqpDOAjCBIOvtSSuI9G7z0m1hdDTfMFgPDhu4cjy2
	 zC27ST5Sv3ctKJEKqK93xa+6yBSO5II0wBr2rZFXoG7ZUc7LMSNTWVwkg7scGLVw3o
	 /s6r3vjsPkhxMGWo0oAr0/pBp0Jr9Ix2hhL5Qe40i3VrnLlPbwprKLTdfNlKaIvnPM
	 OECG3XE2FuB0IWIu48OVQUFaEBfCRFPl4nSMwaC7rHjH/yN5OWjnapLw+x2hNZpVW0
	 MVzdGiQXXu5TA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9FE93EF5871
	for <ddprobe@lists.linux.dev>; Mon, 16 Feb 2026 09:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177123509364.12803.12201132307210839508.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 55aab1f72acdae15860ca067574e357747be277b58565f500c5bb30202e8c9a2
Date: Mon, 16 Feb 2026 09:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771235093
