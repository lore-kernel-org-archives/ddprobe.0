Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C70D239570
	for <ddprobe@lists.linux.dev>; Sat, 31 May 2025 11:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748691594; cv=none; b=DtA4o0QbML+jlrhee4F9I+EWbI3MyKvEEF1e9uWNaVwLKuD4z8l2suU/nZ46MD1JS2LwQQwFOSNCaot6Iultg7GEPd77YsSSWUNm5qJ1J73+70Is+PVCbUa4NfhrKScWnXEaCkz/+Gru8kfTINbTW6VT9vixSEFgGvl4NCZAN3s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748691594; c=relaxed/simple;
	bh=b8ExCGZgdAUzcTZpAk7pT06PgC6zkRIvW4wRfYXUk5w=;
	h=To:Subject:From:Message-Id:Date; b=gNKu8FEfFoqOp4W1J2IRjJAqbXu/lqMUIB2FuE/H3txHiv9vixVirDSuBG7YWBPeLnF3FI0zqPkbH/wplCure3j7ERjodXlwp3u/tULNH7pGzhb2UVIhYC5tYr/jDMTikckoIHy/65ht7YlabuEGWxvbyKxz+FZTJdunKEEOXZ8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=J1X4yujY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="J1X4yujY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA8BFC4CEE3
	for <ddprobe@lists.linux.dev>; Sat, 31 May 2025 11:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748691593;
	bh=b8ExCGZgdAUzcTZpAk7pT06PgC6zkRIvW4wRfYXUk5w=;
	h=To:Subject:From:Date:From;
	b=J1X4yujYHk30RO40l+BNHJiXGZCH2eieeJYCR7grQlyQa3ushZPKDmIp0mpJAwnSv
	 fcfxOyRf/zbKvDQW01XfpweyGPDofsbeblAHpkA49Vg1sdo1GxvWuI7y2PUYQieMh3
	 BlmDAwZtoJp8+jec1g8YsDl/0OKEGRv8qB3C8DA3rkvAQQ2c8aZVVJHJFKfBPlqwqO
	 C/Af/sr/ItQoLOGiRh82ldjkfk7KC6qh3A9bTG+o5lkvmCdfKQwh3AjyST/Td5m43I
	 HjQ/0yGyLAasJHDoGxK5rwCiklazxAVOBsuHqJlT6IleArnmChBU4xKeMlgIEaChMy
	 ekHcRXtP9GdFw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 988DFC5AE59
	for <ddprobe@lists.linux.dev>; Sat, 31 May 2025 11:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174869159359.4602.12908371530872393754.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cadfa0f6c50bc96f60c319dd9d64cde13bc546104c91e95619b259f892aa173f
Date: Sat, 31 May 2025 11:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748691593
