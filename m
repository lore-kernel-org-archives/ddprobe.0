Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F283818FDDC
	for <ddprobe@lists.linux.dev>; Mon, 23 Dec 2024 12:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734957354; cv=none; b=B3sp1A7kxClDvgKSCw+a9hMyxXE7d+UZIJe/gW1hn8RXGRo5fVh6LeIAFnYeDygqFaNtlnmUJmVgOm+vrUMNH8CdlM0FxUxFBtQmijQIB0WGN696u648FbPIpT0GMp2sgzPJV7w4S95qN/eaybZUBGOhrVJAUsjeZtocPIuwRPw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734957354; c=relaxed/simple;
	bh=Mp0E0xCj2C01vbJD50TDLl/iJo5AYG6LnTOhqD64x2E=;
	h=To:Subject:From:Message-Id:Date; b=kIeyX1IGFbLhHTnd92mq/VJa4cKmRNb9ww/T58VWTd1kssQm3UIoYJe0PDjLvZNEe8Swcnt48qTBPAAgPjl6eKzSgSScUH8EuK9NXpYJZWWJ9c+6J1b6yB7p8UHj3ZOdyk86SkYDMkyccNB0Cpn6zeZ2aB6Jrp1caczzMe29Ncw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uZTpjkgR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uZTpjkgR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B39B7C4CED3
	for <ddprobe@lists.linux.dev>; Mon, 23 Dec 2024 12:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734957353;
	bh=Mp0E0xCj2C01vbJD50TDLl/iJo5AYG6LnTOhqD64x2E=;
	h=To:Subject:From:Date:From;
	b=uZTpjkgRF5/jeiXgsFYjZ/JuvmEq/nFGiLXJWic4Nt9BmbZa5rIj1WiPxUbjlyTG2
	 nj7PMTYcrFqs/CElWQhc3x7cn8Ig0iYGDeK4oWpTQ6lkJE5iOWschNQNNTY1c99l+G
	 5i2mU5oIZBMzJ1vIWVJhiQErafrjUHUxDzeOmVKm3lZtqX94FxNPs2p02WJZhygZ2X
	 56toolapNYBut21Z4I0kBy3kkGl8yB/fLD6fK+xXVb8j+MUDNuP7S5ZQ0UnOwFe0tI
	 CvcIwzzjCg3Qs98QU6I/j1wdM9jYYpHKgv5lKemPZ8Nds3yDD00boj8kyHOmIAM8i7
	 DwM2KyBFv2idA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E214E7718B
	for <ddprobe@lists.linux.dev>; Mon, 23 Dec 2024 12:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173495735361.16303.7003330276151302879.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0eed7356351cb0a1b19636f39580e79a2e3a16d762d8925383e1d57e28ba6fcd
Date: Mon, 23 Dec 2024 12:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734957353
