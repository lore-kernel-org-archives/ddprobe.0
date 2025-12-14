Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F38C19EEC2
	for <ddprobe@lists.linux.dev>; Sun, 14 Dec 2025 08:02:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765699374; cv=none; b=EA9v3tG3LYVMlhgR0BvQ9eNytzzo2DvGNlkxwhFe9tMn1iZfOm9i1zcp1yfh6ncBaxbULfe7dXkWPZR2r2RhE8PBXNhEQFX0krMj7yQ4ZrtQ6+yS2z4cDxmPF9ocimCdQnRtJ0boMT/WLDJiucQ7uIBnTWI1N74LWSrv8En1u/g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765699374; c=relaxed/simple;
	bh=l/J2hWX6vMOcEPeqXuqT6r6mbfbgw78dXvNAXmw4EJg=;
	h=To:Subject:From:Message-Id:Date; b=fZueEEqwUcrPqoF6EjLm6M/7B6C37kkTVF8Q0NrTc/jHxDYU+OBDEwMFY8KO9SE0Bz/aF6Xht46dCUdbC3sAjBNFLAhE80kPCBX+1fu5BIYZj8fesl2rsMuX1iibka6/whg6fUrRm0KnPsdoJ7ER6j2ffcgSYsavaYLv+bA8tiQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VnNjC2d1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VnNjC2d1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4116C4CEF1
	for <ddprobe@lists.linux.dev>; Sun, 14 Dec 2025 08:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765699373;
	bh=l/J2hWX6vMOcEPeqXuqT6r6mbfbgw78dXvNAXmw4EJg=;
	h=To:Subject:From:Date:From;
	b=VnNjC2d1oi7C1ErXQ9KrsACkXxQWF4vhNpOaj1WWWCFcNVAAR3FZZ8fyNCz064L32
	 SdMnNL5xv35uqNzDpWdEFw2MI0cp0Vw/QtgKzVCu1VMS2POAshkvRwtaIKt1RtUULb
	 3EkumtyWiYA+Y81QMkOmU1JBOo4ij0yf6SqPhx0LOHOuBGK0gGpLww3kNKIafhyImL
	 TrbkVatMicDfB09hJqpI3lBC1BF+/5s1Pb3pTsh0Tuqav/sbpzd43qcxUMUp3Weanq
	 rz/iOH1uEe1ypzh8ekcgZeK3uVqt1kBa6zU9N/s18x6qIBdpLPPdTf2l3QNRnclUMf
	 duW/Zo1iphzrQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9FD31D3E787
	for <ddprobe@lists.linux.dev>; Sun, 14 Dec 2025 08:02:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176569937363.17614.2829434154154547976.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6447f20e796ce5cbeea629969e48c8575da6a65f4f186704891b51c76210c69d
Date: Sun, 14 Dec 2025 08:02:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765699373
