Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5DCB6257D
	for <ddprobe@lists.linux.dev>; Wed, 12 Jun 2024 04:08:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718165303; cv=none; b=D5iiWatPhiaIC05Lf3c5UDsPYUGJk75iel5sAUFF/RJV+Zz0TNyYKGTwMfQcDDg25r4W5z5C0IMZ861NpcLz1jg5WOag4uNvfJHSZUAJET6zZx+/XIrqs6koRf531zwz2SQr7EVHlq5h2KQQ6umZqenWvuOyPyAXLFGHoH8dGFg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718165303; c=relaxed/simple;
	bh=0e1r7LU0Xc5BlijPPMwbstUsYO1e5G7Iqs8hNaDnO4w=;
	h=To:Subject:From:Message-Id:Date; b=KBGMKklT+1ITHV1KXZbUjVzTWT7yCa2AxXG6IuV0GLmhw7Sw8DZCsn53YqnWeOkyp5lJu8vmUj8sb4eZ5pkI0LS2LUBERwYC3U9/wsZppxFau2sBQCsjkhOd9YtZ2lXNdChq5e3CwrGZqlEYwjg8I34Uq9HJUvuRYA5iOujNa54=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=epP/20Yr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="epP/20Yr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E011CC32786
	for <ddprobe@lists.linux.dev>; Wed, 12 Jun 2024 04:08:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718165302;
	bh=0e1r7LU0Xc5BlijPPMwbstUsYO1e5G7Iqs8hNaDnO4w=;
	h=To:Subject:From:Date:From;
	b=epP/20YryCJS+s10D+k2Hph7OTpyADHze9LRfhfNOxrJg38S1QHW7pXWSV9sf6B8C
	 vCvJKx+bqEMUjXkY3eG/pVoLQfo+QNFXA3FZxk+VB4bM3Nq6t2cUGQL6o6JcHJwdYd
	 /B/NXLv6T50TeGlq/JUgFWzV1Vr7pwwCVmCnta7GCcj3B42QU4sDP03uHSLjLpDABp
	 PAG/6aHaUqujYFawlJ0DwoL95b2GsDOg0L3VL2RMAN+MTfqSMigBpPshhM0YKVw9fe
	 Bg0OTeH/4c2rBV5sY1GaITlzSspcOD8RX8nSyFqRypY64zn6gv9wPHXU91q+rsotYt
	 ++mzGwGFB+sDQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C917FC27C53
	for <ddprobe@lists.linux.dev>; Wed, 12 Jun 2024 04:08:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171816530277.8737.1591446854198660619.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1c58d850e822f95db0995fc8a397e870a7ee319bbabe5862eab1e855ad03286a
Date: Wed, 12 Jun 2024 04:08:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718165302
