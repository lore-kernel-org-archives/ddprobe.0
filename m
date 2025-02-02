Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A9DD1FBC87
	for <ddprobe@lists.linux.dev>; Sun,  2 Feb 2025 18:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738520755; cv=none; b=h00SYbPMyCpDPc1QB/lvShB4IwN2DNi9hv1o/964rVSkTmIbS4RMFXc5HvLkpiofsnF/8toBoXbnbOPxdOCC47A8DeJ3T6gQHACJDOQ2Tc+tpFnNKxDbOuDrPF/OHmamIWNfhDyNDC88uqGO4kpZ5zIpxcWhOo9FLWV4pmmKXMc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738520755; c=relaxed/simple;
	bh=UKhDQ9DsNPGr3LXCXQA60of7rEfrtN1iAOd6hQuecTY=;
	h=To:Subject:From:Message-Id:Date; b=Fn83/ChjJLQa/j+GA9dLhVgTbDe7GOMdVK818tuA3MdFw1T9koeCZ7BD2Q4aG4yi2vlR53r9oJZAjkZ5FrGco0QoqMqQyjR0FbFPC5+a50ofHbqRNTbHrafDqKXT1Vk4WdtVCtebJRyNgfVAdxhtV7shrI2vZ8AWckiJYwNWyx4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LifCs+as; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LifCs+as"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADBAEC4CED1
	for <ddprobe@lists.linux.dev>; Sun,  2 Feb 2025 18:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738520753;
	bh=UKhDQ9DsNPGr3LXCXQA60of7rEfrtN1iAOd6hQuecTY=;
	h=To:Subject:From:Date:From;
	b=LifCs+asYl6TOAtVBWdgmYjCQ84iOFGJmiU6akhuVBuLlTfrubOf7OF2qVcmdT3Vc
	 aD8XovAjx0cl8322Lv4hVZ0yP4vgGqF36S0wsVonQMVsHo4Gkudh1lIYOLuQejN1Xt
	 OAzieq6ulEdsGxjCDj1vb5N5ty+rw14Z0gr6Wq41VxOG8dWvq0PEv3BX17uA35kBi0
	 C5xBEwG6oXGYJUnCxFs5MVxTczMxxHM7cdWg6K4ZtQoIbWBuW8oX5Mb2DmU71isAdS
	 oJ4XczjIdaPTgSeFkpPPYVLtn56o0TictBNk7VJXBWt14gbXTILrZqlqQq/inWbzsG
	 SRc0uEz9UfxaQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9451BC0218F
	for <ddprobe@lists.linux.dev>; Sun,  2 Feb 2025 18:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173852075358.24229.6608746850086755146.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f0cfdd8ce1baa9f6b85ed2cb1638c247cc842176d3fffc7dedbf0caa6a8c9ad3
Date: Sun, 02 Feb 2025 18:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738520753
