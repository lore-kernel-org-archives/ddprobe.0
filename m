Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44C1315A872
	for <ddprobe@lists.linux.dev>; Wed, 29 May 2024 01:44:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716947063; cv=none; b=b5oa/Mo5FiBLVqXRKVQQ9gI7KorrJI8rfWcJujnEoqaORHKZ4h5srEsNOj3TBi3AtR7Bgw7ETc7zSRqF/DVQ+xv7AfabCudjUBYKVjRXLmk041GxYbV50+eoS0mlJwsY73GMP4vkcxXv7GSDKcErJsgjFIq6kok1nRE3vvXb13s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716947063; c=relaxed/simple;
	bh=idWthZLw1gtNN7OykCTRPtAr3xm8MSkXQ20FL8YI5KA=;
	h=To:Subject:From:Message-Id:Date; b=CSVjdnYHHvEUZ/nZoS36IbpGHB3AeuYPJwXZ92fBxmk0Wier5uAd/Gs8glCVWEXspE2TfqmselEzU2fEhvJAlTAE3E6LxYs1UZ82kWK4Plx0hMb4DDQ5MnRYcmM4XiZ4VOlS0EvuL/Duf/y44TkcxUbm6k+5KvZhEYm20ANkgAA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jEtaKSng; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jEtaKSng"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7C1BC3277B
	for <ddprobe@lists.linux.dev>; Wed, 29 May 2024 01:44:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716947062;
	bh=idWthZLw1gtNN7OykCTRPtAr3xm8MSkXQ20FL8YI5KA=;
	h=To:Subject:From:Date:From;
	b=jEtaKSngTUig1EdDh8e5rQK0POBnFp7rOH55n7HYXYQ1am9YR1Y+jngDgetomoMuy
	 0sUilpU1oKa7tyj9RXR1QbYDCQSJnzZ3Vmk0Kw/m5beSLjmiilRUpLfuNMg2iGRCIQ
	 SsjCUqZ5LNBZFZVV0VXxV6Sd+zxWrQ5F2JsTIcDk7dGdWJM2RydSoM8qZNtUsZQcbT
	 k7dzCkESCbSoHdxpSF7Tp50YMITiEOAW9TKQPdeV+yajgzD7wmuQsw9ScybZLwvUX0
	 lMwYf0+onRxWTUYFvitcELqmOJqK2tdCE8K3oHEx4Bd92s0Dkx2vJlUD1qUBh9/Nvf
	 J1KwbqYro++cg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C7DC7C25B78
	for <ddprobe@lists.linux.dev>; Wed, 29 May 2024 01:44:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171694706278.7008.8440981773586796010.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 989ae6ea197d51348f53b1ae05c0b1f42cb5688aea115dcd75bd839e9f1ce05e
Date: Wed, 29 May 2024 01:44:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716947062
