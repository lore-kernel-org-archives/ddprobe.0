Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DCBD266EFB
	for <ddprobe@lists.linux.dev>; Fri, 27 Jun 2025 17:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751045394; cv=none; b=Dbt+di1nLdt8FkiBkSLRPii/PZVoVDS6TVAmc2VHGmgyNMMP3mXO3e7swO8LyCcipppjbU+md7vi8gNLsuqMGd4rGXonEisdOSqxJtznMQVKIWQUljDD+8JKrqo1ZTl6x0p1xlfKrUktH/yLaL456WR1Y0Zul6hTXl0DtoBQWYk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751045394; c=relaxed/simple;
	bh=KpyJyZLA0IugTS+PoLOEyKLPul1hUCCtHXr2bnbLvVc=;
	h=To:Subject:From:Message-Id:Date; b=QAKrF/53WFf10qaDclVO9pA52RBw6fbrlDMs/js5Ue2CuHOnKk04cBUWTqO326PXq6mRLYTR+zUr1hPvbVThVmL61E4Uvd0Ri32U+/JHeyfLkOiIlMPx5piej6AbqfhzFtOvUxcZeNUvV7zQJdvg0BeLzqkxYLh7es/A/7R1xeQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Es+QWZT1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Es+QWZT1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5B84C4CEE3
	for <ddprobe@lists.linux.dev>; Fri, 27 Jun 2025 17:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751045393;
	bh=KpyJyZLA0IugTS+PoLOEyKLPul1hUCCtHXr2bnbLvVc=;
	h=To:Subject:From:Date:From;
	b=Es+QWZT11o9KDk135L/cG8z90ra7qRhmwqUA/CooSboyyEJPmcAsIHqaCrI4lgV/M
	 cQdXPWbNOrSBRnHOLLUJyHlcZv3G5VPla9IOzGv+RStWqtArPji/H4W2MoUND8TA5w
	 QWrB02Ij1hgi6lHcXdEQkUkiNgLOdTYGTiHtsAqJrDA1Dj8iLOJTC3qxZtrCeYn0ev
	 BFPhOB21t85mgdnZgJOBa8B8d6ldu2kHsxmy3O9QnFOm7Q/IMK5jNT6wvxz3br0Iqj
	 lgCNnPh7jNi9xNWoYowTdf7QmASypw0K5HWXDWlgoo2tlo641w8G4e+pD8GoepHvyd
	 DWBFF5PaR7Wlg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90E54C77B7F
	for <ddprobe@lists.linux.dev>; Fri, 27 Jun 2025 17:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175104539358.3017.5906267654516519063.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f00c5fc025778527f441fb73d8c4d9bf0d6cf8d1ab0b7c8d8e015c1a987ce3cb
Date: Fri, 27 Jun 2025 17:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751045393
