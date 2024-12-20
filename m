Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 292581B85C5
	for <ddprobe@lists.linux.dev>; Fri, 20 Dec 2024 11:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734695154; cv=none; b=sM1Bw63B0PSaZ5WNhWtOniarK0OriIjIGNo+32t9FYcV/mMBNMyCcu26B8lnxNJURKByrsEdVvY4MtrDR9XV90Mh1PcvET5L0SZ0YcPNsQhLvuigZNhshSanLa7EunhH5B1qZpsogGSon9SHAxhjB+xwJYKKL13f8jfQtsunYiw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734695154; c=relaxed/simple;
	bh=k9mT9eMdycFruESToKz5H2h6MXo66M8DPPLJhlDsys4=;
	h=To:Subject:From:Message-Id:Date; b=Bu/6v6Ibg++spFUo6TEjn33T8aI+UXc9fVnngNzAPNwN/n48n3JhhC8iWpjjITsn/kezl319mtlps8nAme3IW6K6mDoB3i1ekOoo/tW1NfpAnLs920gku3wXoXL1ArVUbwQ3Wuheude+XaYJfEF3EzFGBHzkY/4pocmMtKr5FLE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NC5Ikz3H; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NC5Ikz3H"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABB2DC4CED4
	for <ddprobe@lists.linux.dev>; Fri, 20 Dec 2024 11:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734695153;
	bh=k9mT9eMdycFruESToKz5H2h6MXo66M8DPPLJhlDsys4=;
	h=To:Subject:From:Date:From;
	b=NC5Ikz3HXfLjd+optkD1zAVW/TAzY7jmuZ5yVjflTTSprjUoij1r9ohlCEDnsNRMJ
	 VCfLC26di/5hLQgDMSCyQ7dYhtZh2ApGmCa39a2jCE4xEOXyMMxOQlK+hGhKYAkUaV
	 OQWLSdtp/VviapIaVgMt21nsVUvYld7FYmOTAAKGs7FT936yfpgNkPn3ncp7uygral
	 THfMs+ldrt/NHZl9KRPBOIemT9aX82qkEzd+jworaT8Ia6tGAWiAoCGOS4bs7uE7GX
	 u0k6H29E4p/NsrLdb0QsJkfHSRK8/fZ0i+XyMThvsNAINvhbs+IydCx7CjtUXIfOU5
	 5PGQWCXmxbpeQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9862CE77188
	for <ddprobe@lists.linux.dev>; Fri, 20 Dec 2024 11:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173469515360.30401.7400019887271329342.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 38843a670594d33f52dec11921c64f78fc8f796713f01b019de600ba14522676
Date: Fri, 20 Dec 2024 11:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734695153
