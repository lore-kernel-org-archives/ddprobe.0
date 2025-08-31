Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3267838DF9
	for <ddprobe@lists.linux.dev>; Sun, 31 Aug 2025 02:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756606194; cv=none; b=cUMvivMP9s9tlEcTsWDEGqRIXL5bcd514lIu4qXmw+ZUWJt2ngoI8eV6qe9bPrOAy0hWqU5jU92cxxNwSxhbyjQ1B51pjn/0xnpQeSlg3YceZs1ueV/Y9PgT12aVaFJYXjWDq31DMueb8rDjgIps2qSylX/5pJh/wT9RWkCtpcI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756606194; c=relaxed/simple;
	bh=WSns9xkuGR5xAhVDUMTHhJAO+n3lurEEzgiPtzznbWU=;
	h=To:Subject:From:Message-Id:Date; b=YssCfdQCe/WAZM22wc/8VMXh5JWcLSiHW2i+mQwJX8Q+antm8LRWE8SjvLDJc03z24rq4/HslnltH7h+P+UHBEQ/S1J/p7mAZjjs+E/ohr0eNW/8M8EDwZTivRvd9BOHGOtN8X5msgEMEKzrUC71lXSEDgHIZRip273ay6Be46U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FaCliRjh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FaCliRjh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A52AFC4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 31 Aug 2025 02:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756606193;
	bh=WSns9xkuGR5xAhVDUMTHhJAO+n3lurEEzgiPtzznbWU=;
	h=To:Subject:From:Date:From;
	b=FaCliRjhiakg2fDfipST4QX4VkNODKgG/ySGqcOgLhUA+HkYcfQL7RyJiT0QKcXqn
	 +7oHWfbZp/EySLZ91GT77RO43XqJAIu0h+eGeSaejqY+EMOcQAq8NGbhRmX8f+RR+O
	 O2FGWEPEq+IO/Vs4B3O3K8NAC5eNQF4BeWhxVu/IV6L3pxeoS1G3ia2tFtiNmJH3d2
	 b1YCCXycaGrNUluOBhZKZJ+8vbfTAXaBuH/uQB2CWQad1MP9xuAs7oDbwLRHKgUh2a
	 kKPTkCtXfQoSjU0f/B5Ucvso4/wNkrjgqw3qp9voD/vyyf714/bQnllOM+JUBV2Ps9
	 nbh375cEwtUVg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90FBECA0EFF
	for <ddprobe@lists.linux.dev>; Sun, 31 Aug 2025 02:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175660619357.14063.15414610999233855724.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3459a76c1c06cd277b0d5f479e47591d2f6e641f5c510ca5fb57bb3cce6a77ce
Date: Sun, 31 Aug 2025 02:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756606193
