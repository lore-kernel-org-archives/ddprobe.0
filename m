Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 418DD83A1E
	for <ddprobe@lists.linux.dev>; Wed, 24 Apr 2024 03:00:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713927623; cv=none; b=hjnFUhXldTBDiDW/50ODctsb4KrsnOy9dYFj83VFy6rTl37TivpNtFsXDLohkQiKPtKtvip9rjy/djARuiwgGyGJxI49M+rp5QR5UF2JFsZii9PzCaT8iyGsfrbjFMl5qtcPan+ZfG6yEIWfaW7c7JM7Mput9wS3VV//W84PSX0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713927623; c=relaxed/simple;
	bh=YpSv94Hb4wlsrxMAVQTMzlbc/ow72I029qmHwRxJE7s=;
	h=To:Subject:From:Message-Id:Date; b=sbVx4QUANCLwekKGYz/TqS3KH9DaryJRAlb9I/tPvH68Po2Q4R95baXaQDtgQ/J6aKszXuSPfASNfPWU1RqXGHWeX6G/Ah3LGFQLw5SLLNU6Lb/huxBTFgLaleItKI1ySijR+p1jrLB6KY4Dfu4/8Ju7gzmGRd8QiqCyZoQ+/Zw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=o34O+yLT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="o34O+yLT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5A47C116B1
	for <ddprobe@lists.linux.dev>; Wed, 24 Apr 2024 03:00:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713927622;
	bh=YpSv94Hb4wlsrxMAVQTMzlbc/ow72I029qmHwRxJE7s=;
	h=To:Subject:From:Date:From;
	b=o34O+yLTkYqvGnDmHdevKtNDS1dTyvs0c2Jy0PAHV/V2Dde8LC20Y9fyGJ0AxVoa8
	 oshxERhibTC5Qv4+k7RDG3kXbR2F3/v1HM0p1ciZaKQGyFeLg7JfUkTr4YdQsG3Fu9
	 PSs5edpAp1xzET1vM31UJAj8ojsX81w3jcIhr2B3mYiXuNeBAOLRd0dLN1gAB0SHqq
	 Z3vaY7nOiQQrXTxFBMxyN8PMRm7S5Rdr7KPGTO4ttqaS1z16W3m4qcJWce0YX+ITcM
	 utJcd4KcHHYMy5NKjsBa56MWQqcD4Bw+bSUhCywhzerFXLTUw/zc/WyHAun7CknqYg
	 FAX0+ZyaKXidw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0D20C4345F
	for <ddprobe@lists.linux.dev>; Wed, 24 Apr 2024 03:00:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171392762278.14621.2440744653182427594.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bb543e64624cbfa97affcd821c94d604ba48a61f8860d90fbaa56b5616974852
Date: Wed, 24 Apr 2024 03:00:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713927622
