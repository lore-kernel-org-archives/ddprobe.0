Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D2143B4EAC
	for <ddprobe@lists.linux.dev>; Sun,  4 Oct 2026 11:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791112834; cv=none; b=c6xPwWkQXX6Aw56rcvV0nfB/S8o2EB6aExoqp3XD8lub2IofOo81/RcIWCBV7bNfI5p6T1qgy2XouZbLWAZ0HOIfz1xizKbYgS/F5ctdY4U9GAhoj5lE5inpqEVUsf11bjhI/Yt2bFlH8ZxvabNE9wdtq3G9v3qhAXxdbjJ/Bg0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791112834; c=relaxed/simple;
	bh=FCc7eAL8teD6QRDXDLm2wzr495zMyd8gT5CdB25WLiI=;
	h=To:Subject:From:Message-Id:Date; b=lZjaYfZRUSjemIWDQ2SgUrQI2IoyG3JbGbvdt1Zh0i+QtzluTA2KGxE/YA53sNmEm6pN1DDCjHquTg6sN25lPpjMsMVvvVKndIGQJKE2AwcrYVYlk1KzhzBd+5TR2B+puokMvFG8pLPGZIgMakg3rdntJRg6luaEIjjivuMPgX8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UAvElnpB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UAvElnpB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CBC39C2BCF4
	for <ddprobe@lists.linux.dev>; Sun,  4 Oct 2026 11:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791112833;
	bh=FCc7eAL8teD6QRDXDLm2wzr495zMyd8gT5CdB25WLiI=;
	h=To:Subject:From:Date:From;
	b=UAvElnpBq/JGXnV0jwFdcGryAkyuTlVvQs3YrpYqy4N+GO1rgy/uKaHt0pC8IC8gS
	 B5YDV0EK/uyf5TLO3gz+6z0/ArdO+8jq6LWivrBaxStysTHiflTto0bNzq7kVM6gIR
	 qpKcraI8ZBzhR9AB2zj7Y5GminIIiLZ307ok4tm7/2MsdFw4U3ie2WOHrOwih/xlvf
	 VnG/OljbMcTLDyeK5KCMnSfH4p/QBngFwiwsUA0YGKeF9/aEOkOMkIPwHKovtqLOQQ
	 O5LhtpPzzQtPaA1E0DmciIAAAOO/5PKBUUbUcbBwrI6OYOWEHPJ4ulHj+TqNHIhcXU
	 BQlOh1nYmdCow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAA6FCA5FE6
	for <ddprobe@lists.linux.dev>; Sun,  4 Oct 2026 11:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179111283368.14419.14763855627889473880.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 75a02fba7af15ab658e1163643c75260d7d87bbf0705094c0cface25c7f645ee
Date: Sun, 04 Oct 2026 11:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791112833
