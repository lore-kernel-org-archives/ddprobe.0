Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E57853033EB
	for <ddprobe@lists.linux.dev>; Wed, 18 Feb 2026 11:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771412694; cv=none; b=rWRQrhWM7FwKLiN6BaRtALwaCqR7ljUf6+FSnZJBhy5G9QCHG/DWS880pqugWOWFCOfM9tbzvKcISeY0B2El062CAYYBIWQ6eDwwi5C1aUlHnmgu1C0edg9qOEV9dKSJWoQUh/jS0RBfMXGJNJLPH5XaysvrN5BipDtlWsUd+EQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771412694; c=relaxed/simple;
	bh=0HJDJq09mVVDnuVUbc638Qr/28u9X3V9dlgmkQrBKCw=;
	h=To:Subject:From:Message-Id:Date; b=GLdXOrFlS2RxA4MYLI225vm48cjDQfvaW0hFq/Sh7Juf0GKGnPFaUbeMwGRv4Q9iALzOCEupAsbzzwlT04j7JOpR5G0Hfm1mHXKaeQjxyzfTv1D8ldB9xvJJRjjYOuXnzjwmiHIIOkyWz5QstUT+lPOZh+VIvWSSaV7nvWbfHNs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Z9zUrnC7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Z9zUrnC7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A49ECC19421
	for <ddprobe@lists.linux.dev>; Wed, 18 Feb 2026 11:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771412693;
	bh=0HJDJq09mVVDnuVUbc638Qr/28u9X3V9dlgmkQrBKCw=;
	h=To:Subject:From:Date:From;
	b=Z9zUrnC7GfTZSxqhgwt1pFcS9w5oes0GUZqv99b8tDIT+52Rbj8C6VMkCIWH3NupJ
	 9cWtcUMk7pc+6+UwOttbScuJwulZmfMvbSN7RchrFvWUPmAzAnzm47FMfjMKU2ouVx
	 /tuXWMPbLUWSroN+wqdNtRHHYS0FZGjpdEU7spE42LAIy6lgTYWrl+2G68s7JRsJ5G
	 Z24vg5dvnJ6/tUZRFfznCKI+0aeiCG1CA/+KEvBcE+y9e3SrF7JJUTY7xrowfiQhD1
	 UOYm56D8/0G2TXa3LukB9w6wP7w0SmBuDwN7FprCfgXuDktCWt/oKpvAfV+elbBMlw
	 ieYkb1citmVcA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94021E9A03B
	for <ddprobe@lists.linux.dev>; Wed, 18 Feb 2026 11:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177141269358.9087.11859443608005592798.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 97bb43b857c5a3b0c86db00ba5e2eec8b2d838dac79f49507a61a28455ad68ed
Date: Wed, 18 Feb 2026 11:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771412693
