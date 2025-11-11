Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 110F92FD67A
	for <ddprobe@lists.linux.dev>; Tue, 11 Nov 2025 03:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762833594; cv=none; b=p28DV+6eyg4b9+JLB4p0gytSm9N2kz+ajfAwetCSPxDVN+baYv53MMhXhl7KZAL4remlWDMbcmbKp0ytc7vZ/QgCb3hmHH2u9Mzn+AxHqKlM90d6gX0oti2OCfwKWLRgopnp2Q/fWNN4Bk9TWC1GTZEDvdwN/CK58muKDDdC488=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762833594; c=relaxed/simple;
	bh=ds1KUkmKB2dUm+Sd4AsinNq1QmNn9HkGdbY43soPrn0=;
	h=To:Subject:From:Message-Id:Date; b=W0r4AeXB5ZXdxWtkTDLN2GzByQAoWdA7w8spDulBt13o4wQ1PjH3pC3KFurbg6qfIU+Qyi5+3w3EO0KM216jAUpZYfeZceS+sWcT+5s6NEsIhVo6Sj7Obe4QFve+8hJwGdcg1tUViEXo7B9NbzeKwq3ojjyol6zB+umPIB0qNz8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XujyTbtF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XujyTbtF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6F3CC116B1
	for <ddprobe@lists.linux.dev>; Tue, 11 Nov 2025 03:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762833593;
	bh=ds1KUkmKB2dUm+Sd4AsinNq1QmNn9HkGdbY43soPrn0=;
	h=To:Subject:From:Date:From;
	b=XujyTbtFI46YwGMULBy6wAFsBCzsvqUvpg3FRDINMIMPSEfDG98Os3YboMHDls9Kj
	 9akuh+TcCRJ2gI0Io9bRfmFfS3nUuAI0mFiA8DuTl042dkaG0e8Zu6u8oBAR3IKyof
	 WlpzgCOJHNvAvg9rmEXm7uBZ5JPPKldKD0Hjd6mDgUo9vaoNx1jTSjdvyU8eEpqP0R
	 uppmUTf0lvsU0f903+8mEobxyPRHhqiAITSohFQ1g/mjNIjMJeHeNLGX0VRNFU7fC6
	 XtwwO5VAjOhIp5zKWLXjT5Yre3SoeVitFYtbb8AC1BiuiVEA7nbsuv3eiZXXOk8Kbr
	 jivZ7BP0+TA+w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98BBACCFA18
	for <ddprobe@lists.linux.dev>; Tue, 11 Nov 2025 03:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176283359361.30622.15772406010891110183.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cb745ed79c74b6989c63236f65ad4d0affa579cee46ee67faed15bcaa1aa752d
Date: Tue, 11 Nov 2025 03:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762833593
