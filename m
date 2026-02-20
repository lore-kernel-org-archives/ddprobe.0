Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1473A246BC5
	for <ddprobe@lists.linux.dev>; Fri, 20 Feb 2026 03:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771558494; cv=none; b=MCwAfXrAr/dfJZSY9m2Gt7WSutmCFtK8S47yh+IwfCCe/hMwATWjusvs8fbeiOU+0Q0YcdCAwlpV6Im4CkKlNLdlIMkV8/otQjvdh3C1XcF9Vt5iE7ULzQE0eKvUb+SRxC2fsUBv1emq8VQzhmSIefTHArs2ShyL4WVpSVc5nak=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771558494; c=relaxed/simple;
	bh=WQkXIt8hQbv7xgUh9bTpW37KJ6O1atrU826bssGNKK0=;
	h=To:Subject:From:Message-Id:Date; b=UtxPIg2ymsPxkkup6yYMgC0hmIZDuhI6UXf5VuW2enrcAFdlRAi0JhVuvv4NK9g2b5qgknrhqImahWdCl862Rx3TEt+3wWxJajY0n/lTCIU6QdvB2wMZejdUZjjvBodQodss7yTZIy4cqJ0wu/K+dZ3PTut9Jsyu9DX+Y0HZujM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=R79Q3QBj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="R79Q3QBj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4703C19421
	for <ddprobe@lists.linux.dev>; Fri, 20 Feb 2026 03:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771558493;
	bh=WQkXIt8hQbv7xgUh9bTpW37KJ6O1atrU826bssGNKK0=;
	h=To:Subject:From:Date:From;
	b=R79Q3QBjXbniZ+SqF94TcvpHH1tCr3Bj6KmH+6cPLsKlV3/2r4KjymqaIAvM6/+kk
	 oBQEAaFbo7JEbPST3TpdPk2T716YsBKOen8ZqHSe/KGk9ZhGZL1PZQtGlBn8njNiKK
	 Oip/efWB2dusKbcu4/ETRx+R4ZQRk4DyW2u82Jz0dTuV8Vg839vYs9vzWPZT3LeXXF
	 X61U1g2IMNclgzvcRQBHbimvpZbB4BvyU1fsf1ZGzeXQA+Y8r4Fsamjnvaa0xtcc+M
	 OtAnZEUQJffrjLAgtc04kb7FjwdmoQHUAFqS1wEgNhCc8I1WZXn6OqxHa0V71GmxPZ
	 rmS5o4ToYPtmw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 941D4C531F8
	for <ddprobe@lists.linux.dev>; Fri, 20 Feb 2026 03:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177155849359.4951.12607977859391407914.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 167214a00063ac6a8e1bfb9a3f025e7d893978ce9475cc7049012ec75017831b
Date: Fri, 20 Feb 2026 03:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771558493
