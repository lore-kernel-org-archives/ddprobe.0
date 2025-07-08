Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1ED322E36E2
	for <ddprobe@lists.linux.dev>; Tue,  8 Jul 2025 03:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751947194; cv=none; b=IvVfjJhPpqIFwD2af8vMiStPBg6nCLincJ0J4dbGtHdvi6s0clC7nuK3Hhp6XGzmXcLuhxiyVqiO/aIcpkyFQ49R0wIgp+vZ/zuB70r1339wd5an729elqOfr8fPf04VI05/UE5xZZMDwB6nQVSx0DI5rCL5ckKlGW2jnJq9Tx4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751947194; c=relaxed/simple;
	bh=04xwMeFSDHaVS0B+4+ZJ5lLt0WDheVvqWs4k20V9k80=;
	h=To:Subject:From:Message-Id:Date; b=rjNVUz0pSjyu9TBgiSvF94wjHLIqAPkeKjTHxU5u+Rh3U5rTFvNF9tgDsBwjwvShms+O4iQAYBcINP/7u4SrxeXxkzybiIV3Lt8Cj69+5J1lR9g6oJmkLJD8jmiI+Xqbr3XZDCScf9yIMz5iHxgHj1ekWr4t55aE/dh1cpNRyy8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ScagNx0s; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ScagNx0s"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2605C4CEED
	for <ddprobe@lists.linux.dev>; Tue,  8 Jul 2025 03:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751947193;
	bh=04xwMeFSDHaVS0B+4+ZJ5lLt0WDheVvqWs4k20V9k80=;
	h=To:Subject:From:Date:From;
	b=ScagNx0sXNM4Oug4TTFnG8TbHVIx0DBi0Yq3+9Vo95h3Olw3pa99x4AnaoQbsrDA0
	 u5bovzuPSPjL2IdeX92VyTyxvO/FzkBNDdjjRRhmOXEvUe2EUUs7IBEKrdpCZeIu1y
	 MCfdaAch4H9DYBpn6MBEZoyC6CoiRo5rL+Ns8Z4jv6jZ6Gs0gdyAuJPQXN0ZoN1ZgU
	 xGEYfdJYsQ40J0Ei4Ln+5Rd72mHsSzrRLVKKzBhXK78f0Uqlj8J0dpkdYKORUlj+Lw
	 oZZgnJRk2x2ijzTyuHiOsLeZerpGieeoZBaUkf5rWICRupEiaCBGBTXdnAkgpT0OOD
	 wp4ehqBXACQ+w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F76FC71130
	for <ddprobe@lists.linux.dev>; Tue,  8 Jul 2025 03:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175194719357.31691.7935045202908183245.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1913bee7ca07a44e4605d46969d957d71f0153b46268abffaa1f339c16a059dc
Date: Tue, 08 Jul 2025 03:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751947193
