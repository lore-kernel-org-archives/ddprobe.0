Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2509284A2B
	for <ddprobe@lists.linux.dev>; Mon, 30 Jun 2025 10:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751280594; cv=none; b=igpBV12P5vMU8Lx/2LPhwbZHwBG9Vld4PfynIu4WG4oCCFPeAv0RenwYZ6MHdqv5MINDCQG7ZoXNP7P26VjSwPsnQkZPJm7Yf1kU03C40FapC9STqzI23GlWv6/i9Mnt0KiS8kadhXjKswMT8FtzZnE4nhqIH4aeEXc4m2GUcvo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751280594; c=relaxed/simple;
	bh=MTds192RVPgdHO3q1JGYpnTsBFxm7GJyyiLU/8xncgg=;
	h=To:Subject:From:Message-Id:Date; b=ruEM6gdwcb5UQoi9TelVqmLg5DxZNyHALUg2CvhlwY+bLdFFtaQJP9lE6FoAFWL6Cjg/kZyFoahrXUSaxJUfsXU9iaiJ/G7NtkOxst4zEuJOLgiH3WZy+v0hPPAnVNOxRBHlbdqtquYYyx/SIedv1Atka6o/pJy1mvgtv2YZAYM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TS4qqvy5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TS4qqvy5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1E9CC4CEEB
	for <ddprobe@lists.linux.dev>; Mon, 30 Jun 2025 10:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751280593;
	bh=MTds192RVPgdHO3q1JGYpnTsBFxm7GJyyiLU/8xncgg=;
	h=To:Subject:From:Date:From;
	b=TS4qqvy5BgzDjB72Uu7rLkLP8jysZOedt/FEUM5WlVbaj82PFkpPMZkfGYNprVpqc
	 P9hOOeukmUj1sTYbUQ5JLOUXjW9Gfou5uz5VPxwQlLBfemCc8VYBN3EOtOmZZv8RHO
	 d6c7L9yx6wbfS3JPljcP2UDZURZY7oovYb5TMQpzj25YOdMIA7yXeHHjmc+dRP9wwR
	 nwkEU9HVt8RFqqSDLQR8KyaT6PcRX4sUjW0r3LqB9jYoyCwrkU+wfGpnReCSsMuy1Z
	 oMH3uO+CBmfr7M9XcS2CKGtBUAlJHC4bKdQCnZHSMdpEcVbfGYXGXYH4A4ca4dsySW
	 9W9snj9cMLzfg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90E77C7EE39
	for <ddprobe@lists.linux.dev>; Mon, 30 Jun 2025 10:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175128059357.28082.13665383128478012157.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a367d596f055a6789a7d54ff8736020507a2fd9ac41af2564685aee79173bdf9
Date: Mon, 30 Jun 2025 10:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751280593
