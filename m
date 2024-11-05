Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 279B1185952
	for <ddprobe@lists.linux.dev>; Tue,  5 Nov 2024 08:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730795754; cv=none; b=B0Tau2BjSY/+ddCDugp/Kzha9abHgSmOxDtIKpUL7ZguTwi0Gb4LA+mnvSj/gnGNSVAqJ9J1l2F+Ku6qaFJmXHa9YVKo8TfxiT94/3KNhAOQsqecwrcuI8ctsUDemGlVCyfRtYgSAQq9LLWrt9SkekNe0wHmvlVgmT3FuyUmcws=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730795754; c=relaxed/simple;
	bh=UtXfNzQXVl9XCOrZuDLN0XbXvarHolcNYT+mKWufVYY=;
	h=To:Subject:From:Message-Id:Date; b=CB0PfP38Df/E+xEk0CQHMNdAU31sYfXLWhYnVFWYDSseqRxiidA9HjETsLIsiz79rtogNfQUMNbbqfKAUwMkCFw4lXZnUvz98qxT3b8cv87b8WV0USlPC6K35wvUTOBc7V57J/NMoyEY0fGp0OLA0s3IpQWC4fvQ9ao11yUeHJg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kR6xWxGK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kR6xWxGK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2D15C4CECF
	for <ddprobe@lists.linux.dev>; Tue,  5 Nov 2024 08:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730795753;
	bh=UtXfNzQXVl9XCOrZuDLN0XbXvarHolcNYT+mKWufVYY=;
	h=To:Subject:From:Date:From;
	b=kR6xWxGKtMNhJCI2Vl+L963dzA2NqHn8Yb2h4aLxxHMb39XSuMXknMwrOuUSVV7n7
	 oGRSiEEMs0oRcBp6HhjMuVSnWm25AFaYmKcijpiSaNJonN52Y6B6U/wIj4vaVaN0G3
	 x+9jLKlIB9eqcCA7LW5EM/8iQGlYJRzmd8mQ91PyCcf3yrMrZXDTfRVXfzwRDexqmi
	 xC3uFm0JG00dY6o5O8rWQt/CXO+IS8Clo2GIK01Q9vbtNiWqVdPNunpwomPJPU3AB0
	 4gDig3W/rfRk/KligE8NgY/w3ADn1trYKKihezRcskuXAw2MQUKgPCyM1QVUpIXjh0
	 qUCcfq4ZDKbjQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9AF51D12663
	for <ddprobe@lists.linux.dev>; Tue,  5 Nov 2024 08:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173079575361.26155.12516584811675109841.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 90bb66239ecd954c21792b3d3fdc683fbc9efd71d55a73d7fe32c4ccedc7ca60
Date: Tue, 05 Nov 2024 08:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1730795753
