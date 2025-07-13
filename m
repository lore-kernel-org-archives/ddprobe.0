Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 258C920311
	for <ddprobe@lists.linux.dev>; Sun, 13 Jul 2025 07:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752390594; cv=none; b=ddwhqtHTM2Ku7VXNoAqXf2QbOiQT8jDRJaxj7yvoTev/Bi/4SM2PF3kYzk/PZdmZUEO4KGHRdP99vzu/sNf2JbHEydSXU9nQ9zlE2asmjFi9PtU+mAm0l3F+vSgfOyws7A92tWH6H1I1dk+DQRgGSwlFEDsT337zAY5xNkK09oc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752390594; c=relaxed/simple;
	bh=ofLGpiOFkd1UAtXtzVbasT2bRys8Wc5TQ7S6DQ3T7EA=;
	h=To:Subject:From:Message-Id:Date; b=TwfRSanOCt6LDewylCdJkaHoL8/TxEQ0mAgbnlF/iwo98LRSb/KpoSA5tF1XkMdomHXJ7z0n7H8lB5K/PDhXROLoiJB+N0uNR0Oq8FEZceowSvgQ9fcUI+yJ3aHH5mT61Zh6F/+FkflNDnTShJsFu/qoNJHfy/81WNakm0Y4QPE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cC3n8d2A; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cC3n8d2A"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0029C4CEE3
	for <ddprobe@lists.linux.dev>; Sun, 13 Jul 2025 07:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752390593;
	bh=ofLGpiOFkd1UAtXtzVbasT2bRys8Wc5TQ7S6DQ3T7EA=;
	h=To:Subject:From:Date:From;
	b=cC3n8d2A7AaINqoPTZeBrQbVmBeT/HFBHNDTWqH//pJs1YJDStGnkD8LCFLZQJC1W
	 da+o6Pz842PaoJrgv9goEyjNPq2jWE3wN9rpgkY/R+fnkVD3V3u9IobwbXCiUaz3ft
	 7/DJgpBn7CGP69IVKcrKqcE8q6yRmFKbAtaEiI5qEb/+VPVe7BiuoZa8mmgFMFnGKY
	 bbboA8ms/4QIGeexfXDo4S2xrhU0kQ75lMvs6A3ZMTevTenJbdpMpGOxGedx/qVEFq
	 2EoyL/ICyNbV+bvYymj61gVnG9ZrC41I3cW/VnbMXkUJ6b24kI7Fu88V83k56/CAPT
	 D0+SWm47jGaLw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E5C0C83F1D
	for <ddprobe@lists.linux.dev>; Sun, 13 Jul 2025 07:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175239059357.32208.13794414787404305957.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2725bfb37045f88641355e58bd0c76dbc29557aa5cb65a088e945ea4bb18ab48
Date: Sun, 13 Jul 2025 07:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752390593
