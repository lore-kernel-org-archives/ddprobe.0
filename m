Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22A6A224B10
	for <ddprobe@lists.linux.dev>; Thu, 12 Jun 2025 22:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749767394; cv=none; b=cMLa2kWv2WAE8T3XMMqCMNMet3s50ONvKBVFmx+4nfZWaijVreQi/MVbpDOuYsD+6M/Qs12WyuG7xWQRQ6Y2brnKrZrq6ycWRUIBCIjO2uJMUTNidKvOBd5JPFMseBGUpsJNTxeLniiOx73QFPTWE4g2FEhaE0ROEQDRBJ4wvM8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749767394; c=relaxed/simple;
	bh=bNDT0zi/3/mIIGUg3psRPgofkSzr9b6Cb0Qh4rPcW5o=;
	h=To:Subject:From:Message-Id:Date; b=r/dTs1YJSNlkN+K9rqHnx3RyXdVNKo79r5Upy4C1NfmQGckgi7ieaG0sF30e3PMBHNlnMCf67SE9+3Ulv0ooe1DnWUaZ9RDmCBYVBUR9j5rg8+YUC8St7KZC7ybJe1H+ObYbKqUH7qaGQClEKxyGchqXu4CNAjiO75C9kxyArM0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tca4Zmqw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tca4Zmqw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A871FC4CEEA
	for <ddprobe@lists.linux.dev>; Thu, 12 Jun 2025 22:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749767393;
	bh=bNDT0zi/3/mIIGUg3psRPgofkSzr9b6Cb0Qh4rPcW5o=;
	h=To:Subject:From:Date:From;
	b=tca4Zmqw16D+KRLkXRAd/6oSrPRSqUXITGJmKpcW22nu5+fDpNTBhS73qA+EcsjzT
	 4v3DOqKye77j4R5dqRt34hTEJgiSNZ2tpptQodacnJ4BOyV+nZDdnPna9c0UDD5LfA
	 A5RTTTdR8kUtfU2abIcdgky4kdIOv1+aHHrZx//01Za2hGZanY7EOHt8t/l3kTyhqC
	 SbuVv6KqEbQnU2Nfeh0tbgdam0fHyxljCisPEmWUeHkBUZ946TTss/HLnMH5oVEBSj
	 5G4FZ934c415zeu4CUhz8wCBMTC+MW4cARmnD7KcTM74rcfV6kTlXxaULMY8iyZywr
	 WNP2QJCzyVI+w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 955C8C61CE8
	for <ddprobe@lists.linux.dev>; Thu, 12 Jun 2025 22:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174976739357.13162.14872706568826293641.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 212ac39e4c471e24b65cd54abb465e1854e35c5e553880932de701e2d6be697c
Date: Thu, 12 Jun 2025 22:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749767393
