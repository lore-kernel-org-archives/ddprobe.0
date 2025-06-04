Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E8FDA56B81
	for <ddprobe@lists.linux.dev>; Wed,  4 Jun 2025 10:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749032394; cv=none; b=BJMcyIInVaWHd7hIttvmT2b8IHtp7maabktZcSFb9oaI2UH/dYUNoiWsVDPlPpM4rhQc9ZqXGDqxRnMJqrundquPms0KuBoGm1ZUcBbG/YSyvl3EPsTqtwGrw9Kdia/1zn0Ar0nEmb0sbP+hkGVRYyMwwUpQW1+Fhz7HL5hyWt4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749032394; c=relaxed/simple;
	bh=4K5pR3SZwMJ27icZ4KvORRUbl4u+tXJbjaZBS+yLDzc=;
	h=To:Subject:From:Message-Id:Date; b=BkgC+R/RtGp54FWrjisQWsb1Ue9HmBEcPHnDSk4ZAGYDvwbXU+4fE468mWUQqAqrHSSt2PboSEulJcJiPvmy6usnbj7BscHL8jzyX1Xqv5+LPnTSMURNT9Pph5lomzWn5bbKBEiDQimmnp4bjkQ51/BmnbM/8JuSMcKISvt4kE8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JIjwDIvC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JIjwDIvC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1480C4CEE7
	for <ddprobe@lists.linux.dev>; Wed,  4 Jun 2025 10:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749032393;
	bh=4K5pR3SZwMJ27icZ4KvORRUbl4u+tXJbjaZBS+yLDzc=;
	h=To:Subject:From:Date:From;
	b=JIjwDIvC7lsNKoTGckYcAFxKrIHT/nWrzLx28zLiRjARm4oPBI39Dtu+9buVHZtht
	 hTR1bVK5NoFeK+t571Ro2WKuTjWoolbNT/RVfmJDZ9zwqhHe+K86XWbiGjEw4ytbi7
	 FmDyp6U6baPVVsAOhrn5dODPHXmxwTpwVQk0InZTUhnvUf/UiEH7nehRxzhWLzfNd8
	 eCwXKbodR3WArq8bmN0h0P3Gjj3XaJc3CkuDAKD8hfMJBTZKxnvLtOo4Vy2Oe3Ova7
	 rF4IErFuVKwX0a/TmeOMUovSogXAxeQFGSck9gR5oJdu1L1Ys2ieU81zJG4gWw+ciP
	 cqdq/GAqdfklQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90492C5B552
	for <ddprobe@lists.linux.dev>; Wed,  4 Jun 2025 10:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174903239358.31101.2223543925251571758.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ee60a59b498f303de7943f96beb95b40f7ab8a3fe0a4bd12510bacf9b5b443a4
Date: Wed, 04 Jun 2025 10:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749032393
