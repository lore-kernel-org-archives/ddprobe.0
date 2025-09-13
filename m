Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 146FB1D2F42
	for <ddprobe@lists.linux.dev>; Sat, 13 Sep 2025 14:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757774394; cv=none; b=n2xEZcrHacNLmfYXxrN52/0CBlZuAOJrJrCnX3c5Hv790KYEXhqN+iS7KVBPKwmSpOFnLXZTM+f9kjg55miM6q0A51K6LcYZD/Nh7OJCvyp5Z8bhtmmoTeNwzhmD+u5lwK5Y8j1mXC3mFlF70RfnISdJ703QfsblpxlkeSpYPlQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757774394; c=relaxed/simple;
	bh=pQ2jfuE5SJQwerLf+c8j/ue9J2Cq8CEY+pSkTvyCfG4=;
	h=To:Subject:From:Message-Id:Date; b=iwOI24Dh+BlbpRggMT/IWxe8WweCrHdN4Ci4Z/zAfXbMwGxOgB7yYiSb1Y7o6/46IUuKH855o3rQohwlYcJvaA2BnUfmcncYtFY47kdupTZRrhLKS2/Uk8RygDGiD+RqAj5HsdxJsSJxBnXIlUCi2YwCxytlZEceoKKzvdMRDnI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=R85QRVKA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="R85QRVKA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EBBEC4CEEB
	for <ddprobe@lists.linux.dev>; Sat, 13 Sep 2025 14:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757774393;
	bh=pQ2jfuE5SJQwerLf+c8j/ue9J2Cq8CEY+pSkTvyCfG4=;
	h=To:Subject:From:Date:From;
	b=R85QRVKAoPNE51SM7BK5mqfk8XTaBqPbDf0rtsFI5d8UCRgpfIq0HRJD4w7sOlgUs
	 /PnIwEdwstmJ1Lao2cHJpcpTOv2PpW7jvOCsDpwtJJE947lKnfu7iOy2/z3oXKeo4i
	 J+SZdpffzopkyN038AyknEiUrAkryvhDv7CEDdi/97uuidUpADt6FVZLSeCw+9dAPm
	 yCIekuqe3OGZsaKn3lbUIzNa3Kf1iZ9bRkz+C9896+/HmPzRhhE7Vi4Y8h09v2BqSL
	 BsNaYGKIHO5Z76lMvFvlH87/NarET0/IHG/JCEYE4+jXQX7eHet0CuTyERAr3iVdpr
	 1sFP5tdTlCjrg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93AA2CAC58E
	for <ddprobe@lists.linux.dev>; Sat, 13 Sep 2025 14:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175777439357.11875.11982088087125468834.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fc3ebe03c00a1c8e81d76ea8d38bcb494dc3c341ecba6dfe81fd8e6b7434b21a
Date: Sat, 13 Sep 2025 14:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757774393
