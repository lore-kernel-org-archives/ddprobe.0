Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33A2F1BE849
	for <ddprobe@lists.linux.dev>; Tue,  2 Jul 2024 18:25:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719944723; cv=none; b=TaVVkT0JXht6+haIryvhcWF5Uf1qSF8r5gXo97ZUHcWzSABxm3zi12QINuCwDlf3Eq+WCxPkY0aWD9pMmwQ8BbBKyXTxHVdP7WqHyjng5v5Ov9kCeECSEsiF2xYMcbwrhjdhNZNriAs2xon4H3qDIMuFDJ1khIu5Fd5KgGIjmTg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719944723; c=relaxed/simple;
	bh=OIjd8UrETbkmXB3l5hgPsp6X6DGJLwxOeSrHIInRqZw=;
	h=To:Subject:From:Message-Id:Date; b=I2zc2jSIL+qQZGScQq10P/wiHAowr5cTm3vV1v5nJyk1/gTClcD6BmKIB8urBGHom3PUmJEN9J/9kwFifPBNBpgyEu2C0iFnrvpvSgS4KyVv26ScZ07vJQge0YBF6cWZ5nLv6BjuJgeyIUDeVZpSI4qZyc1MFzZnW5QUKLt/k1c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dQdEepH9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dQdEepH9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD20FC116B1
	for <ddprobe@lists.linux.dev>; Tue,  2 Jul 2024 18:25:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719944722;
	bh=OIjd8UrETbkmXB3l5hgPsp6X6DGJLwxOeSrHIInRqZw=;
	h=To:Subject:From:Date:From;
	b=dQdEepH9t/GSQdtawHsYt/wcVlodN2ivo3vHNLNNKTAnOQGRipsJZdQUd1AEnfHhj
	 ctthLwvMU8mEL/UyyY9k7PckRM4a8mlUbiLG3VkHPIOsFJjl+oGe34gUUorv4G8BZB
	 e/HLg6i4PxM0ir6RGBwaP0jSZE/UxPGo6RJW2h0dnpt1MALwePkcjsexFyJYlXLXC8
	 nPHiR+0VW922yFbWVLFlaMMiCU2dc7nprPSQAe4IZYCOVHijuc9Gdgsrs3xx9QSHXz
	 Gy8O2sNW1Y1JgoQeJ/Ovtr2DJ5IQzb5X0IdDrxWf00JuTM/+HmF7tYjyfPbGzdTAYS
	 0xqKB38kSgjtw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BCDD4C30658
	for <ddprobe@lists.linux.dev>; Tue,  2 Jul 2024 18:25:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171994472276.12617.4635693091357633394.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4b198fc420ebc963dedb428bb404e0abbe8d1b92a47623f49d4c4baffd73d224
Date: Tue, 02 Jul 2024 18:25:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719944722
