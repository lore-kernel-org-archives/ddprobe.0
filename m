Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1875519C566
	for <ddprobe@lists.linux.dev>; Sat, 20 Sep 2025 17:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758389394; cv=none; b=NatMIutUiBkkYN3zb3/Um3E4SuCd/azNgnG3QGT+fBQmFIXkirRzNvo/jFL39UMyNMs5DeXy3shZBy13jcuME8/wHBxoffTL6wIBj6MqC5snBPoP6G1UKzyzEOcleWiQ4XV+XQGTYqE4lvR0TT/cm+eWOA2l3N70dMAejsw+y9k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758389394; c=relaxed/simple;
	bh=sesUEtcdcdciPNYZr4u3Dc1Trkzg2nOmVKO3IhpXVX4=;
	h=To:Subject:From:Message-Id:Date; b=fnwVENRiCP+s0CcHZWDv62uBMWRfEcMdq5D0JGXyKe53M6lj8KXVlZbnSk+5Fqfs+31vORkpinoKRDNLY8ihbS+XQuJNt9xOSBnhzOhco+8JP1rY68i9XyZFetO1VuLmvb0TshJGTmJzo8d5uWDPrXmTXvXc4j5HRzv2iK0R5iU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SSltmedb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SSltmedb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5139C4CEEB
	for <ddprobe@lists.linux.dev>; Sat, 20 Sep 2025 17:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758389393;
	bh=sesUEtcdcdciPNYZr4u3Dc1Trkzg2nOmVKO3IhpXVX4=;
	h=To:Subject:From:Date:From;
	b=SSltmedb5mm/qOHx4NVlnIBoR6sUcc6jYQN4VlxakEAtS517QvCW7kcjCD3FXNk7S
	 jpMb9hK9dzvDqMmFM8t8jrPhLTLpGWM7OxwRAi5ArF2+lZdqMGcjC6Aye7ZCbmVhtq
	 NnpoOnCknXEwVm2K66xiwM8WaGo/8IEzENjrUCx1YzcrqGt1TENBLasW7gTN5Xa9kE
	 F77ZpkMMBeLT8KncBNbDyKVze5MYKvomVn9ubBIEvIWrHB5cnbFIZ005lt4Xj6VIuE
	 ruB2g8MBXf1ik79P1xrlsQJqhrZyZbN1IduZXtH10rwn21gzPWJu2qMo1FF8fBB4Jw
	 kZNfSYAN+AHbA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94E49CAC5A5
	for <ddprobe@lists.linux.dev>; Sat, 20 Sep 2025 17:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175838939357.2482.3836427010394387217.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 572e285d6bddf991af8ab7a74a01720f66330cc9283af638bfd004685fdff2ae
Date: Sat, 20 Sep 2025 17:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758389393
