Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44D253939B1
	for <ddprobe@lists.linux.dev>; Thu, 26 Feb 2026 13:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772112894; cv=none; b=WPAWLHG9LhmH9zzqdA2SbKjy4vw0bIr6XcFC3BbO/2Hc+X4D0GbTwHZ8KEbEWnhVoG0tII/PCj11Ea/zUtMJxEaFtX+Aeu4dfWJMJkwbalqx21Erlt5ZL4ZYGIGm+4VQOgA5RNBS5OafxXhqfyfYbzYZf0S0O9gSe7tJoUVlAAw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772112894; c=relaxed/simple;
	bh=5I+iyKyEn85okd8i4a5n0f17BcJJY93BGMEQrhFhChM=;
	h=To:Subject:From:Message-Id:Date; b=anNTbeJdtYFKA61zUg7I44vmXOZ3QHgnIRNT6yPiUWZbD2hg1BeBWTJurP/tU9yoFlMzvgN/PXBmGsPwnb53AWKS8EmG9sk4B4frRVGMUHOgg0VEFkNv940Wi9KqVF2OyUVAmCgYLK3Z2eN3ppXRItBY6W3JNC4CAeSPXIq1lY8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=s6wD8WLN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="s6wD8WLN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA3B4C116C6
	for <ddprobe@lists.linux.dev>; Thu, 26 Feb 2026 13:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772112893;
	bh=5I+iyKyEn85okd8i4a5n0f17BcJJY93BGMEQrhFhChM=;
	h=To:Subject:From:Date:From;
	b=s6wD8WLNMF0xMSD5XoQZxPMDqHxphoBOpuAlEe/6uBrAy2amb6LXPUjm7J7lnQhEH
	 f5W1OH67w9/40knD5lxeVQaKFbzkXMSGBp/yM48prtaUItzfcUISQRufdjqv0yB/vG
	 87/sQVXOWMqLv6BgYNa9J99DzQnQwzbMDQBGq8EPdEovdaDO5yO3tBqNcVETNSHI/m
	 Wa3YHXuJdfdqdbmDANDLTV3+C5JBRzsr3jgM9E5Mc8KhJfjS2eHm0AAai1fix+uRk7
	 yRHTMD9nxXwhP+inR2BLeiR5P/hmaoSiMeafLF07PqZfTVbtl1mhoulLBPkQ6GptHq
	 tggzuRMXTourQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95A53FCE07E
	for <ddprobe@lists.linux.dev>; Thu, 26 Feb 2026 13:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177211289360.27641.11014610974659533895.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 81f7d5d99dc4e6811eaf72a8103c43acbfcade8adada296f0abc1fdc1275d74b
Date: Thu, 26 Feb 2026 13:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772112893
