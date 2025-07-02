Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2868823B630
	for <ddprobe@lists.linux.dev>; Wed,  2 Jul 2025 22:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751495994; cv=none; b=SDLervMB8oiEmRgb56bg469V3J6fogc3XYdAiqjESKSQW4kjtMtn+QAxIVkH+7AmHwZ++KHcSxrR3L307Wh2Ii1YfrU7Rodr8HxlnS7300Li5gpZjoAS/Z4EJ+Ljj+FyokTbQwh+e7DewcPWAvmSejRZs5LQC8ytcf8oNrz0wYc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751495994; c=relaxed/simple;
	bh=Y1AOuRw9N+XwYgSzHTuJgLawjXCWjbmcO7EvagFYkuc=;
	h=To:Subject:From:Message-Id:Date; b=arY6CQRVsSdI2kHNgW8hlYE3A3/lwDNcMPQjQo+/a+4hZEwIrb+3LMZJyUDuMDTgwTsumqJ+MZI5PCBegM7YMQoCv3ChNk3tK5TrSLpvovjKG9b0+9wqQfAs6bVj0HYir+BxfSEM8nuNB5xxHiPNwqtSXUc4ib7IScApuCsmqTc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OC2kXgOX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OC2kXgOX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4539C4CEEE
	for <ddprobe@lists.linux.dev>; Wed,  2 Jul 2025 22:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751495993;
	bh=Y1AOuRw9N+XwYgSzHTuJgLawjXCWjbmcO7EvagFYkuc=;
	h=To:Subject:From:Date:From;
	b=OC2kXgOX5sPf+DiTAN06RTfQb+J+SwxKcEzwS2WCCldZVe+YaYyaYTBUSLedKh9aT
	 B0TfBMin6hYx3MQSrSLEDfoC6yDuFfRGiur4xi0Ri4kLPhUk/0d/mCDCh6QS8MS9F/
	 c8CbjJvU4j+E3g2jQu0KDNo5CoXXeg+qUELhceTUTlFMVB7+8RnDLt6rm9RE6IDLxK
	 1yqRE7kT489tHqyOgwndZAiV4DrgJkW8hFG9jYYSK0ff2AqHvU1OsTPk9EbTRU3yLD
	 8Td7/c/8tO+mezPhil2x/zu5tDhWQOD/KLGVtv8GETfXyf7/NfB7bxAtmO3tea1FT1
	 DgX2a8vOd3UpQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A37EDC83F03
	for <ddprobe@lists.linux.dev>; Wed,  2 Jul 2025 22:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175149599363.26363.9134662689392201153.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0d158a534305dfa5e1a2f50e8d929a32308ef6478e0ad8830c68f57ffda1fbe9
Date: Wed, 02 Jul 2025 22:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751495993
