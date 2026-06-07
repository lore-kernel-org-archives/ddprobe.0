Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3866D30D405
	for <ddprobe@lists.linux.dev>; Sun,  7 Jun 2026 11:14:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780830874; cv=none; b=ae9VuHXlK73irbsiStjt7QX4JLnMQPATjJrG7MM0L59SZRKnx+BI9tGdMKvb8Xg0XTOfi0CVKojxnVaVwskN6VknvLNs6R9BNv3GaKqp0ngZPYpiK7Xw9NbrAsiE6jGdlHBuneWAjE6pPP/2cf0X0Eknx3eRC5XwkbSJNV8Xw8o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780830874; c=relaxed/simple;
	bh=OmATgaytIPth7rvX7DpD8M8LRR2hSqSGsfZ80naM5FA=;
	h=To:Subject:From:Message-Id:Date; b=enZ747SyPi1Z/xnApv2h9DSi6lhobDv24RSxd60xF2AHAxT3ZEYQsz9q6gEahIIi8ndlnFDGt16/ipu/F8W3Zcrhk+LZWxxba/rLlmQqaFP9gfQqaolgCugrWX7879vmhwAHf/UkRa3YGOcDte2vi0F/YSvDJZpiFI0XqBeeYyI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=g1Hz6u/T; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="g1Hz6u/T"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C7425C2BCB4
	for <ddprobe@lists.linux.dev>; Sun,  7 Jun 2026 11:14:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780830873;
	bh=OmATgaytIPth7rvX7DpD8M8LRR2hSqSGsfZ80naM5FA=;
	h=To:Subject:From:Date:From;
	b=g1Hz6u/TTvsz/4XJCNVlo3rqmI6PVMdhMxzeQD0fzf2vmz8eeixZb5X/sfKD0y7/i
	 Dz/f5+qIxoFj5JQYjT/R14q/vOBg6hmrorPLHMC1cKYCW8KWvQNGNfNm5IiFycghgF
	 xXWDo+UYXWymwcdMjUga3nyeAHELZmELuRS/H/Cp7hdY4lZ2uI300y2U9t2dOvpkmQ
	 ChV14pL7yazYOI3MoE8q8knFRTVzszq1rIexUamBW5uvhUa8qqwOAZTz+aaDGHRpoi
	 K+jC45qqDPDNeMIP/EUGtwNNB/n7cAO3PGZZamDsxIzqwBUPvTHFta7Kru+3urKOuJ
	 rVGqNl9eTGi0A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABDA6CD8C8C
	for <ddprobe@lists.linux.dev>; Sun,  7 Jun 2026 11:14:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178083087368.31625.7634057138087115051.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a5dfa0e28d0a5840f4ccd2b146f0c78d74c9e5def63432879b5d4f8078c6c6aa
Date: Sun, 07 Jun 2026 11:14:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780830873
