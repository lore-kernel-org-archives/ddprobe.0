Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D720E10A0C
	for <ddprobe@lists.linux.dev>; Sun, 21 Jul 2024 23:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721603153; cv=none; b=EZHspbw0sFIXla9VHraPbjDsAteDm5hObgTBuNhrgx/6BH2DxbqrT8w37btAkLMzIc1jd5xpkxTR0onGvWQLdrg9mDM3VyQZlOrrS/T5E2wujJujPTvK5KbgkXmB/ggePaWOOBYuhqQy5bboIfBQJd7ANLBQerEnlA/V73mHJdQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721603153; c=relaxed/simple;
	bh=gtNVRYvM8hU1LbxjGr0mL03TQNzN7fWjTqnuWdyusxM=;
	h=To:Subject:From:Message-Id:Date; b=UNmdlcO9msAzJWdSevv4oa5amh9oBADiRvTRP2D8blDwXSHvbj6nvKP2jIUC0QXI2aRNTYZpvhrYry8D7EIEWuKOo7axuGgCSZzMzZLAM8b/IFpRDNNvk3XzkSh741AKOeSMIPcoRmPy8gdZ5FU83TolAlkg8prJQnB6yvEqUYw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MuNy6ibN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MuNy6ibN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2602C116B1
	for <ddprobe@lists.linux.dev>; Sun, 21 Jul 2024 23:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721603153;
	bh=gtNVRYvM8hU1LbxjGr0mL03TQNzN7fWjTqnuWdyusxM=;
	h=To:Subject:From:Date:From;
	b=MuNy6ibNS8BXIk9D9g/fd0bpmsdaGFErnZvkemlPhYyFm85zJbu9pz9fFeRfU/fR7
	 /KAu3w9AO6q25WbFM0no2dhgpxwX4gcyyLe/ePCNFpJawy6TVd2G/lVTm5BX9msAVO
	 JeNWhFemCrgZcnc2jcIQpv0TzIBiihrklH+U+qjylrwSCLKGVrNqShS0ANPxshV2Yy
	 cbcqEV1PtjYvAs45A6nYetteoHsLs0lJ4QMOTBBaZxhylAbn1TebQ38cedsV1lMZwU
	 V+1jCmxuuLamNZ641av9xWxHQVYz+SilZeh2ku/EeXXL2tLkE1TlTQz6gedlAFrKqi
	 WXU4h/WxFJzzw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B1EEC3DA5D
	for <ddprobe@lists.linux.dev>; Sun, 21 Jul 2024 23:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172160315360.28784.10857659811896285699.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: edba2b8f715491f9a8ac0364c2d2c63b1fdc6f1d324916e6e07f3af97e358f4e
Date: Sun, 21 Jul 2024 23:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721603153
