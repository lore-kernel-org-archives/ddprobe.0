Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CBA6629A2
	for <ddprobe@lists.linux.dev>; Fri, 12 Dec 2025 23:12:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765581173; cv=none; b=m3+UGq/98ZeLiaxU7mcL08MWTw5KWle11xK3C1z7kkie+t2A8nsk9RA3A8zvQQJtdOwYXBIyJHiyhuSKqmZDjoi9/25X0h1bCcaWnxy0m79dxs1sfbsJqoT6iSuV4KHuIE8nN6vulmypQlMOIHMObL7S2SYVN92mUUw9jJyXneU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765581173; c=relaxed/simple;
	bh=I0but0NwaEA4TrxGFiy2KpLyHzsER+8nrJj7JzFletM=;
	h=To:Subject:From:Message-Id:Date; b=hu1O5LL4rq6jKkTRqdf6QFieQ3KuM3pZp5Qtl/A9cT9VWqODdJRzZGzqZxYeYQ5gj03qm5xrQHhW2baknrfh50V5IFiTqLd0Hr8eeb2Luy5cNvJAiukl3YBXWrb3SGXI43Qewh4KQx/gjg0UfudH45jiueXYYUfaxh3TZ6VDs9Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=M0MAfuvd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="M0MAfuvd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8656C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 12 Dec 2025 23:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765581173;
	bh=I0but0NwaEA4TrxGFiy2KpLyHzsER+8nrJj7JzFletM=;
	h=To:Subject:From:Date:From;
	b=M0MAfuvdAQrP3eHZ2S9YxiFNwK70Y/S4Rz3yVJZXgzsZ6Ziq3Z0ylnbNa70+rNWo8
	 YMoo2WLlRAG638gx6n6Q7PUzccRC+VQCP3SkAylUcu795PSrv23yWzTWRDrNhEikkV
	 8NcUQgI6VbgNdKDx/hLctDhshPCzcUMlB2l+w+fSax2DAPaBC6UWKqE3cgEvLj/Ahv
	 NmLofLCgEft7O7lLli9lJwc1UrWUu6zUOPm3waX2rbzN1VvLQ4lBlV9JuJS746L/77
	 w8GIzlXRzUliDHBlTlBGCTO3YJ2Naedgg1TUIaBK1ezKRLM2gLIumk3hKEQbuMQJAo
	 VC410HWmp0/0w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96BA6D59F52
	for <ddprobe@lists.linux.dev>; Fri, 12 Dec 2025 23:12:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176558117360.13328.9074747870550181483.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b467f25f21ad57ba6f8621b4b15004f12134769a8278f9d76e7f137f449cfe6b
Date: Fri, 12 Dec 2025 23:12:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765581173
