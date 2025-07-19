Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A3FE1DF974
	for <ddprobe@lists.linux.dev>; Sat, 19 Jul 2025 22:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752962994; cv=none; b=bqAbHfGZHTifRz7QTIkpyYtU0vodqsonXUl+Mp6HMdO5oL5Scj8YKkb+FCCb8aRmS5X8UF9MKqgBPbemMqyt/08030pAJ044N/ZmAS14pLMX4bw4B96HdN5mDIXqXj6r9PfEznoSQp31g8WWu5ELl4+YNWNtthDQi/vPE/fcoW0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752962994; c=relaxed/simple;
	bh=jgarFQIfO0YKAtlJuPsDuhHlwKskBYirpClIZoeo9Vg=;
	h=To:Subject:From:Message-Id:Date; b=MwwIJIyhRaUpQRrFRTVHv9qAw1oHfTNSHj0IKyKpQM4mTAeoVKZu6sr81uwKGmMx8cVsSNtJ12tA6ZHBCz4OjPSMBgsG8N+22vIEjUJYbDNOVrR5ESn4q8cyQuAd22+TXyZzDl0fCj4TVE0b0AXo/joWN/xr6XTSRIE3CLOuOxU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=u5IvQSRJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="u5IvQSRJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6CEBC4CEE3
	for <ddprobe@lists.linux.dev>; Sat, 19 Jul 2025 22:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752962993;
	bh=jgarFQIfO0YKAtlJuPsDuhHlwKskBYirpClIZoeo9Vg=;
	h=To:Subject:From:Date:From;
	b=u5IvQSRJ89ssWpVPiHkCVNfpn3Bd1Cwy0kyzQpLPvanhz3NFHveBYChpXWtJVze1/
	 PwKnglSXDObZyEmT1qb5pqyjQU3mvPkyvwhmwZnXq/BUsxTkPhB/xmU89E/w464015
	 gUNrqElQBPRl8gpwIacBvrAQrNrdkG5pW4bJLh/SBB82U5licOBg7AZCpE2DpwRV/0
	 w5gIHll1+YUxDmMvC3T6ZvVA67Y0EynJUjZAahRX86HJY+CvYpUEs8D2jbtHGkxN7/
	 OTJLNf9ogmlqoS2r9DbvlkN7UFG04sMW9WkTThzRkojiR9rNml5X5WxcNcL0g8L9QJ
	 wd8mZwP51Kjyw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94742C83F27
	for <ddprobe@lists.linux.dev>; Sat, 19 Jul 2025 22:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175296299357.6876.12463720141733872658.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a16fc83dd3e2b9fbbca5bed61e0797f980ebb0436582c5b3743f97f87e01ef87
Date: Sat, 19 Jul 2025 22:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752962993
