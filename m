Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48ED021D3C2
	for <ddprobe@lists.linux.dev>; Thu, 13 Feb 2025 11:18:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739445534; cv=none; b=gR39qHAiToMS13IxLuLbgjB5O6ifMF+MrIRUREHvNVSuW9865ZloD7Eq8nXXGSPI0Vi0p/xDwnVQ929uETmFiLnBPgdAhMmjzh5AWBlB8kio2TXJdPpTwT0pwOytxzlN9SSwW/Ews1fznuWvCDX9QBsWVGHvp7D54wDl1SIo+L0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739445534; c=relaxed/simple;
	bh=VYPhrJ62Gr4qHT07X0k0txjBTlv8IvHIjnHToafaykI=;
	h=To:Subject:From:Message-Id:Date; b=HxHz1y617NFTPKZ//fVEZ0+kEDUUHN327oQOnO9CE9GJeOh8Jq0t81NpiuBWMG97LY6jLXPjTeseS/VV7uiZ74lYYH6HhHELDNFM84u5MxLg4bQn0GqmoDOnAtrBwWw4OkCk76iXDQHBsLDocWSV0XMyGXmTaWRLlVNUGUlE7Ns=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rvWP3n9G; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rvWP3n9G"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C5331C4CEE7
	for <ddprobe@lists.linux.dev>; Thu, 13 Feb 2025 11:18:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739445533;
	bh=VYPhrJ62Gr4qHT07X0k0txjBTlv8IvHIjnHToafaykI=;
	h=To:Subject:From:Date:From;
	b=rvWP3n9GGoa6MmqFZKK8JBerolKh31bIsAiW2Yhq4b6ywZKyvvuTzB+aVVo//kVZG
	 5Ex/BFLHeAcNVjcYI35duwjEIuNe4N7jtVtFvioASsWNzqfVrqydx5kE8EIyTZTV1i
	 eLFSA2kLUPAebEY7aZVCpae64PDqD5QRwhoBvsSHI0OWEx3fLycpxzbgDAaqUfb5dO
	 YeRoYm6XdUispD3FJeeZDKoOjeDP406vvxSDUDl+aSU71X2Gh18o3igutAyZA75c3M
	 rhk7nBcqx9ZMe26972SXSbBY42ANzZkZthZw32FpcDbkqcib/kkF4IjALSgZTZUAhl
	 t56dwM42qKWJg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD3AFC021A0
	for <ddprobe@lists.linux.dev>; Thu, 13 Feb 2025 11:18:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173944553369.31225.4225617768612871963.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ac127d0c11816c037d16b3fc4ef38f0ff510bf42da1d5973f40c41667f73ca5d
Date: Thu, 13 Feb 2025 11:18:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739445533
