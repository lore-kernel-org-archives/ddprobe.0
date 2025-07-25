Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 086D92E54D9
	for <ddprobe@lists.linux.dev>; Fri, 25 Jul 2025 11:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753441797; cv=none; b=PvKsUnC7l6EpOHfEXS2uIXIc6Ew1ALB9pq5iM5lgXDq+K1RAntDVQpgfBEU175QLwHkrxDIooHorUgfR0yJUQ4SNdBbTqgwx3+bRonYkGz2hjb9jJOmjtHngAif1j9LjCPnSttBCTbcx1YJIKiXJJ0fxGwJG7JIZcGEJ9rWL8Sg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753441797; c=relaxed/simple;
	bh=k1pGQLYzVyJfLvhlzeYaDG4QY5e76UZndAe51GoMV2c=;
	h=To:Subject:From:Message-Id:Date; b=gK7zGQ6agB51Ej+tig0WdjLmVHU6mSz73mcvGk4Hza7uP4y4djIYI8X2UdWRhviSWC2HIZF1J0Hn62KyE2go0CMA9XzxqmxFAiXHkCmL6pO2hKyFOA4z058mArC1vn6nEwwTtv21v+ihnblH1IOO9sK1jDLWguUOn9fue55CPLo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nDkvwgiA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nDkvwgiA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9B64BC4CEE7
	for <ddprobe@lists.linux.dev>; Fri, 25 Jul 2025 11:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753441793;
	bh=k1pGQLYzVyJfLvhlzeYaDG4QY5e76UZndAe51GoMV2c=;
	h=To:Subject:From:Date:From;
	b=nDkvwgiATV2aIRxnOcVlGpp/hjDHgmA8Hl+idUIW6nlgfaiI4UkLbkuPZiG0XFWkG
	 DXzijzOKOwyJ4ehoeF1XP/RCO52xizJBBYTde8C9DPpmNfupiLx1zBLxDpAYVVT+6p
	 bXMSr6p2E4SOHo5gM3ItZujDRMjW547PBvhX7+xV6NHSpCKlJ61YxYBpE8v/MsdNxb
	 J55cNfCsP4nVtCFO0lsapdADCWJNdJUTtHV2y9AMApHdUeAQbTHwGVGO0npC9S0W7X
	 PmwaTrciYwZbsygI/X5peejn7uK+pJxYI+0l0pptEjyHM5rCmHqZsyagqur1IwQdsq
	 SJlOFZWTCKUDQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93F07C87FCA
	for <ddprobe@lists.linux.dev>; Fri, 25 Jul 2025 11:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175344179359.4168.16531262986721575247.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f6302f67da885e94af6ea1ad1c17c2587c4367a109981a36e7b2c342c199524a
Date: Fri, 25 Jul 2025 11:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753441793
