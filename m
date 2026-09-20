Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A9353CE0A4
	for <ddprobe@lists.linux.dev>; Sun, 20 Sep 2026 16:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789921234; cv=none; b=haPOkz3adSKC31a5kg6CdXHqn/+pPe4JImjFX+rMvN0ZunXKM8EoJPiczCaVg+mieibjLnkp4Ng/tOnvwx/RTACkQ5EJsZhxsEs23z7S9X3h1jQGEMubGIyW9GDdg+XTifb0tellVR35Ya1Rzgh0mtWgwESVaN7QMe7Sq3buQBs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789921234; c=relaxed/simple;
	bh=p7Vv/hXxo5ycBvSFfXZ+S4cjSUYHgFp1H3dt3uY0JYo=;
	h=To:Subject:From:Message-Id:Date; b=GqbQ2KxfBGZLics3+XZYaBJgI+LR8PHrbIATPgYw8nhEQlw7n2vFXfWf2QxH6gbUes8LPLWzo2uyOqORWviO5n/az+PsB6uP1k79fSHS0hO8G4pPdlso2cxDHrQp+AtOIEWX6ISIpXiZ+5Plt82zvj1cBGu1WmG2hhUxm5Eqzyo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KTj55VO0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KTj55VO0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC6E2C2BCC7
	for <ddprobe@lists.linux.dev>; Sun, 20 Sep 2026 16:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789921233;
	bh=p7Vv/hXxo5ycBvSFfXZ+S4cjSUYHgFp1H3dt3uY0JYo=;
	h=To:Subject:From:Date:From;
	b=KTj55VO0aC4JnlAIDVdBHxpsKCFV1LLkbx5Bjxk75gsVjQ944fR/VsiyC9JIzurYt
	 UTp2nkyvUDdK3GKafi8fcNgNZC1ctC6nGnkXs1HMeWtmPQZYG7ZY6sAE3KLroTlHUa
	 F0+KOLuv/dEYOzwPgO6XQb8uUpH6DXmnTM2qSoDC01vJq1HqT9zx0HeEB1aPpVnpfI
	 m5gJIxzLFTseM14O0B0vVhq3B2Es6RU3b9a7UMgCugQOTfbsZuMWVrKFP0BNpvAuIY
	 mlPUSeXqNCkyFD3oM2pOSJIO8qNPjlvgbL974aaOX0FaeKK7w8llK42e5MDmIy4Dh5
	 QF3rHFTrxSHkA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B8314C982DA
	for <ddprobe@lists.linux.dev>; Sun, 20 Sep 2026 16:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178992123374.21855.17410111759418874551.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 28b2814ce9f7e73e974caf90fc7b62591e46af2e980a0afd26bf56fe6feea2fb
Date: Sun, 20 Sep 2026 16:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789921233
