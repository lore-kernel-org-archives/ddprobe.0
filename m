Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 144241862E
	for <ddprobe@lists.linux.dev>; Sun, 25 Feb 2024 17:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708882097; cv=none; b=oqxsdsTj43ofcbQx/tviV5kvz9QF1g8GpAT0CBgpdar7lr9iGg/C48lXRna42hZiHcvffTFTJDrNHZRZznssSt8z8MfmABm+YhsV24RphRFUrjOdV2WhCmq37HmXYXfwSkGMUpZr/1+ulajx3m7zlXyyFoHvXcWS3vu7WcdEc/U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708882097; c=relaxed/simple;
	bh=zQbPZoPQvBZAAw+HTkJhlpQCPAXFrK89j0pnxWYe5zo=;
	h=To:Subject:From:Message-Id:Date; b=ibnuDX3MaCjvUnuaadCS/rzB5D2G/ka/VBGfx7A/63a5wNOfIgRNjvGIRDnOMIXk8jBtt2X174bcvWAM9g3+xNgmaodIfk+FUk5rql/XgaZuHUkqEoOUz8+1Ble78hrdfrqy2nqwqJlPddTJyYGJCQ96ul5BHwxD8GuHiSsDh4I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=L98Zn3UV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="L98Zn3UV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 80FA9C433F1
	for <ddprobe@lists.linux.dev>; Sun, 25 Feb 2024 17:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1708882096;
	bh=zQbPZoPQvBZAAw+HTkJhlpQCPAXFrK89j0pnxWYe5zo=;
	h=To:Subject:From:Date:From;
	b=L98Zn3UVvtqaXytqjigKYEkbBYs4eqcBNv2qn7HhiFG4bIXPpvuZ8v0ESGzkVsWRi
	 HSkBonrd1Fmnyb5+MdtufL1QaQWMN95VqO3s0wN9RLIQwZjUr28xiEPKpA/tQqclfE
	 xl/UZ+GlbYo59BgAbt1QHN6HTjcwzpQdDeky57wG6ssKZ/2zSEGfIWHT7mwZHuFPtd
	 WDybY1GadpZvsm/xCaTFb8XWL5iS+1gavfWcK384aOPpTLgGRYryios4NI4x7wAlRd
	 LwDh4SbJ2gJfR+6SHd6VwV+54C8GvMeJBhiBnpPtwQMHFZNiq9gd8qgDJdlfPEK5gR
	 S/LXWvo1uB1Fg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 60872C47DD9
	for <ddprobe@lists.linux.dev>; Sun, 25 Feb 2024 17:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170888209637.17198.2504401632492435650.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f5bb82b50a9bb937754b8ad82098d7a26c17d26ae489785eba6b7fa0aa8e3134
Date: Sun, 25 Feb 2024 17:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1708882096
