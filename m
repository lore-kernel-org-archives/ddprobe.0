Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32AAC2557C
	for <ddprobe@lists.linux.dev>; Mon,  3 Feb 2025 07:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738568154; cv=none; b=AO3gB9mVjZiD0JR515BPda2p90mrhFfXlLNw3UAv4PVb/FELWoOo17jeySDEgxpomKfAKsK9KKMVebb5fZpM+us4c2gcn6QX9HGN1GGvdnGte6eqF14LyJC0ACQW6QQ2iK/pZApLVydg5O8hFdmyL9b+IBEagkCHNO2GDCfj72o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738568154; c=relaxed/simple;
	bh=ewXsH36ZsDNRbYUOWNlayzm7pV4dX/ODi0ra9mIKTOY=;
	h=To:Subject:From:Message-Id:Date; b=o7BCyWcuv0PJjQdmDcSdygQUEr0soAT6ybDi72LtSlHtUChXJj/6wls+AgjbYCKuuKZj3OhB9u45jRST0f/2rAXpI1w34Brvuwe9hpC3awJ7r5iiZkfEmWu7hP8nG7KkRDRl6f+ePxpMoQXMDKtW6fa1TqwoEWCjMPb+bVdOmVA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ISQG0oud; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ISQG0oud"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A33BBC4CEE3
	for <ddprobe@lists.linux.dev>; Mon,  3 Feb 2025 07:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738568153;
	bh=ewXsH36ZsDNRbYUOWNlayzm7pV4dX/ODi0ra9mIKTOY=;
	h=To:Subject:From:Date:From;
	b=ISQG0oudzU5RsnHOItGkXMoWTqlVZmCAG2GQuGhZ9eIIg/GY/yY2cJ6iB4Oi8gBJd
	 AiStryV6xzCf6dSsAg2Dm6ers4EOW5UsQznjwmKHUHzvtxCuqXRjyI7CPFg7hEdYdr
	 iEJCpweqVVhb+be6dyO0r4dBFS4B4Xs1ncrIOhx4XsfAe6IMgFsIHiiBNW0YRncviK
	 wUxH9yZGvwNbUOyar5KxZtTlmvBo0cBNMfVsdax1RKRYfiDRbkNbMwiccSf5cOVF/R
	 4xEl2g5/WzNPBkgZ66hPO2bqm4VqOIplDheS1jNtx2Uetyk9O6gsu0AB3K9o/uAWMR
	 9vkOJfiqrt/RA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 935A5C02193
	for <ddprobe@lists.linux.dev>; Mon,  3 Feb 2025 07:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173856815359.26648.12272854052244283783.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 97cc8a38f8b5957bc540ed83b65cb8a8aa0f497d239d8b58593c20d0049bdb39
Date: Mon, 03 Feb 2025 07:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738568153
