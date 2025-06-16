Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23314188734
	for <ddprobe@lists.linux.dev>; Mon, 16 Jun 2025 20:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750105194; cv=none; b=knr0CwM8hxotFHHzXRxuG9SOhcGNHYUfq8PiF8kgPSNzOIRkdPacoAX2VLNgnTuuWwosikLjXpdjA/YtHOJhOzabgmhYpeZnlYjM3546+NmoOQyxWKd0NACJcZ8gYgyH5xTkM6UTegxfrq1xNKpvnE1Eb32UvcUGxnnwpzm7q1g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750105194; c=relaxed/simple;
	bh=Wnjcdw3cNmFSR8yi2AzNXQwO5us3TkQTDPSPk9E9V4o=;
	h=To:Subject:From:Message-Id:Date; b=PYl+3B1ks/np5G0RniXIbihcIqq18BMQfWxnw6elxU2BF0Lw+5MpGtbxs+eH073l8SDvNp/OIooVoXLiV5IjyvFYLmAVoIqEIoh1NKiOKCcG3F1DzRV/r9zhwXkOWfO9JiScRIb1IQXbxksqhf3bcnICnikOpJeNrTj/JI2NFpA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Cv/DmlrI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Cv/DmlrI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4EB4C4CEEA
	for <ddprobe@lists.linux.dev>; Mon, 16 Jun 2025 20:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750105193;
	bh=Wnjcdw3cNmFSR8yi2AzNXQwO5us3TkQTDPSPk9E9V4o=;
	h=To:Subject:From:Date:From;
	b=Cv/DmlrIaKPGY1MNz8PjuLuqM5WUthBepOJGkcsus1kJ0Uk76qBuQY3SUwEweF6lK
	 1h+IeWULBVFD/bOMy4AljhBKtWY5XZ2M2lTjQckJ1EkzSxjmBy/pT1Z3/8qCNqzisu
	 bIr+hfSRUgnswalnCVRs8FAfM5ruc0Pdt9OIHaI5WKr/L/5oLopDwsYVThc6U1IdJV
	 LOZm+GwIdjJqlnbvyX5sNCeIL8yPue4lDTGg0uCX7BdpQtvs0AyseE8K6aouzhMLds
	 xV7GEsnenDyVwQ6ebuOjko8TsO8nZrUEHvoNoXBwTaAkd/grWvsF93/vQLuqWCyWHv
	 WqRLizXSNVhCw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 949A9C71159
	for <ddprobe@lists.linux.dev>; Mon, 16 Jun 2025 20:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175010519360.11534.945242437254882111.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e0f7627ff2bba398a4d5cce1c60b577ceef66e813bd9dddde72588cdd9298cad
Date: Mon, 16 Jun 2025 20:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750105193
