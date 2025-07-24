Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 12064255240
	for <ddprobe@lists.linux.dev>; Thu, 24 Jul 2025 15:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753369794; cv=none; b=p1M8pMoIgl7tg9ColTWzstX5XlsLlXorEzYA5GrjE6f1aJuHzu0wsrxFDmdNCMoKX+FRZv65rl8ZwR00Y8Kpvw0n/dfI3Nnbc6cKuhZQBN8BwpvvR5RrUd+G8m1XJxr66tsUUVy+eeOrEf599FvMLkrO0PbuvEVZRam+/+pSqdU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753369794; c=relaxed/simple;
	bh=LJH/CJRxIHIISWqryTzMoyECvTDGzXDJq424Bsx1h7w=;
	h=To:Subject:From:Message-Id:Date; b=U0i18DsSESuXKNS4QvtCTmJLNgECmeSGEU+3aUbjP52GJuqxT9J0SmaCZpAZUnMyCsaLvbotlcICkXAR28NenjzCwdlcDKrUN2zBPv6sQCf3gVzSbUYglr9G86Zd5v0zBOhozdVe3+t/i/jxwrXWPK30lyfM8eIawpu2J4SP5vs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tNZjeS7O; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tNZjeS7O"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1D73C4CEED
	for <ddprobe@lists.linux.dev>; Thu, 24 Jul 2025 15:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753369793;
	bh=LJH/CJRxIHIISWqryTzMoyECvTDGzXDJq424Bsx1h7w=;
	h=To:Subject:From:Date:From;
	b=tNZjeS7OMtTFkZBlI1R1wNzlY4GadgWOzPZtNL0zRv7Jkc2m/pOwTOx8T/l866FAZ
	 IbuUHInJf3P0BoZlD8S735NO5AzVcUp/gzO+xI9ysJWGyM9DDMR0csE+3F5JZexUcO
	 4+fsZi8Qbz0t9QCY7zjZ9rVwhiT1Gj1GjIe70wOHiqF9t4aGUAluf+o7Oz4DkEbhz7
	 Bb5dbpl7GDIQm/GSt5+oCrNiN6Q98uLm6+mhxRQcW4RuU1gvcYdzf8En5hdrvMrr1b
	 By44r6QvCbSvlDJfm2TylZ7E2UnXRm7g4CiicE1czs1uhCLMQPMvgfjtw0mfS1hQXS
	 EU44jga4ilJhQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 900CDC83F26
	for <ddprobe@lists.linux.dev>; Thu, 24 Jul 2025 15:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175336979358.23665.17414071782719953164.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 193e8c259bb409ae801afc9224978b36a8a317668bc7a44a13f7d79df098b5f9
Date: Thu, 24 Jul 2025 15:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753369793
