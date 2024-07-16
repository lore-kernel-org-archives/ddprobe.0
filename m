Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 573B2757F3
	for <ddprobe@lists.linux.dev>; Tue, 16 Jul 2024 21:15:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721164523; cv=none; b=tnWEM8EE2NfVFQ8o3qE0hXFTzDdEqYAczam1C1ZUBI3LtcFNqnwoyJqaqURzyoOerh2rzsqS+VwxQRJz6uJr381PHZGD3xdSOf1l31eLn1khAnhnQsIawXpj3E/AdUqz/R0hZLLawMrOOYJcMb78ctn4nhyWz9eU039p0LEMMtw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721164523; c=relaxed/simple;
	bh=292XHI5o+c37NlAMCHEkiD5htxC0cDiV+X5ldXsmXNg=;
	h=To:Subject:From:Message-Id:Date; b=BwRttyJkFIanKndAENBnXaYj8qZT7LYciBHyI2R2PfyGyrkgU+UR+zl/Gd76ftS6lf37liHfm9LYrMyCIKbzUI0y7nw7+KTc8v27MtAiJnKTQVXiPEb9Q3Ir6JPKSovXch8CGrYW2s92vWXeIlgX/zheTjTPD9ae/oJE9CDaz1I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Im58tati; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Im58tati"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA79DC116B1
	for <ddprobe@lists.linux.dev>; Tue, 16 Jul 2024 21:15:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721164522;
	bh=292XHI5o+c37NlAMCHEkiD5htxC0cDiV+X5ldXsmXNg=;
	h=To:Subject:From:Date:From;
	b=Im58tatiNMSGP3t/qv6H8gJPGe9G/gxJLKljnBtHpmMkYmDwZJbhnr3mchox4v6Mh
	 ydDg03aSoqRsXjnAGjCt3rsel5CVGLUjCZig9KzvQpwInDdAxoVZn2au5CnvFj5Ejl
	 SwA1TpQMXbmY9khUfLpoqDzvRzsPcgNz4vb8PYKObl2AOvrGJQIYAbiFf5oCF7/OfB
	 JVxdz7+igSDROJwFigXPt/BRls03jLyA0D6/fjrRTdUdubBUpbqJ0DTJnN7pS8exOK
	 q8yTKP1XIK6nw+PQct24WVCRTH9jiCOEhxgDuo4Bi2Zz1sBPu/FlCIIRnR4+iXIpAF
	 qxDtWvKV18YJg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2CABC3DA59
	for <ddprobe@lists.linux.dev>; Tue, 16 Jul 2024 21:15:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172116452278.19731.13430007922680970153.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6800ed779b8a10103837c78b0af025730ac85fb86e154d8092ea99fa4df1236d
Date: Tue, 16 Jul 2024 21:15:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721164522
