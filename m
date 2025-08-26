Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28E9D2BEC2A
	for <ddprobe@lists.linux.dev>; Tue, 26 Aug 2025 10:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756204194; cv=none; b=WK7ayobEI4S06IcIZuahHg5rNGxmEhb9FXHLWJEd9pUxouPTGLiks0J7ZHq3g/YS0DU/ywNWK2WdnUe8vyDE1oTemwT9XKs0ZlMszfIsqcQk36A0+4HXYGJP5lH7mc3jKBXOmCtC2fwMWuqNsbg9btHLemJxB0xgQQ9ROsq8+VI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756204194; c=relaxed/simple;
	bh=odpOHY4LXtwcsrUcH1g0O/IDWDfzBqkg5D0A0d3Meeg=;
	h=To:Subject:From:Message-Id:Date; b=LrEv9/Rh1icU+7gXCfzB5usbRmFdzBCCUA078XJj30rSeIF/N92DW04+K8AoWS1uMyr92Dk38tDJfkOv2oBML6R47lDNjjURHd9Zr/7NxsRJWGCpkVQn3jW/9fCDzTQtyGq+pHEmEYz17YCL3U70b92tBSB2/SNAa6HcZe8mMrI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FSlXELbO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FSlXELbO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1BA3C4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 26 Aug 2025 10:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756204193;
	bh=odpOHY4LXtwcsrUcH1g0O/IDWDfzBqkg5D0A0d3Meeg=;
	h=To:Subject:From:Date:From;
	b=FSlXELbO0nmRvRVlAfiW7bG7CdVHz1jHjL+d0XZmJwHQsPKt4qNVBrsGPqLhX/jiv
	 6SGApVKuQkmXJQeLZPFvCzOWl+coTIgzdIvqu3sPwNitcJ0L1vkmUSC/fMQ4UiHIpn
	 D9Ikj7XiO8ritU1gc64Ml3ugUF8PfIdTGoT9zxoYv11ThxJcTVP8v06Z94XGhf02oW
	 zqXiMF86Xfx33PnQK6rKAjNM3OunCMvp6x/j1YLuO0ePLs8ZfNdvceHX+h5TFTgJVx
	 PGZYHuENjeQ3GvII1e4YRdXsUzHjCC9IEpzzRxIhZB8hUBuf2DJsZXn5DyESEAzG9q
	 C4mzzfcK7PjUg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F3E2CA0EFA
	for <ddprobe@lists.linux.dev>; Tue, 26 Aug 2025 10:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175620419357.15980.14377624744282986623.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 615cf9f1f77e87ab9256f623824b8a09b1e4e21f1b9463e4ef260151d9e0c801
Date: Tue, 26 Aug 2025 10:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756204193
