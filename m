Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21D8825F984
	for <ddprobe@lists.linux.dev>; Thu, 28 May 2026 07:52:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779954754; cv=none; b=Q61vOdpeESrRU7srszPfi5x+l6T2A/b+Tt1PpZh8PvzhY9NDs4hH9gJOr7M7Asw+0du1YRUA+QYgiWw8rsy4m6hFSY+FMT6VkIFn5MyaIvjb2HSMS/r/RpfvkwKzuz0dTAncBJTVVz/z+2+UN26qsJiOZ4y8o/Z1ranPooq9pUA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779954754; c=relaxed/simple;
	bh=olJhDNnfocFV5l/qusxAeIv8mfghLV/N1UrZVYjD1O0=;
	h=To:Subject:From:Message-Id:Date; b=dJtxYrXg0UpJTY2CYLeCeGJ7CmjRIBa6kV/bSpoIhgtrfr/YWWILMqk7kv7+wM41qTbA0C9HQl78XjvCmv+A8afaHZhucjAkBC+ifZ8+IGXvjf2A/jcJdeUk4unjIcKl0jB9kc09shLP0di5cLeqLFdn4HhYw80w+tAaRGK9kdc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lnAhNI2F; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lnAhNI2F"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C4277C2BCB4
	for <ddprobe@lists.linux.dev>; Thu, 28 May 2026 07:52:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779954753;
	bh=olJhDNnfocFV5l/qusxAeIv8mfghLV/N1UrZVYjD1O0=;
	h=To:Subject:From:Date:From;
	b=lnAhNI2F4b7C/UualxWzJB/fLsUFOjg19mGa9SeMpQi74xE/Xx9cyhPENgHp7Vgec
	 9QcmkxOymCEeeowDf0kN6C9OL7cMjHssWz55UWXdRnEoGfVoYcXlI7VnzXpQboihx1
	 PLvIbBvQacf1casnhD4H0UuKdIBZ9LPhjg0P3GmASs6nSbH1IpjsQHyw44CdaC3vW7
	 VQCt9PtkeP+/ei/NxC+hdsnVBGuQJ49UIuMUI2HT39mna/7ovV2PfxadjYPuZbBCLg
	 P31PgFwP8CSt2nZhNpmSSamM4YEI2qdZfTLbyNRFxJezGgjeg1fbBocKd0vejKsb1H
	 DzGQVyu4iBujQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A82A7CD5BD1
	for <ddprobe@lists.linux.dev>; Thu, 28 May 2026 07:52:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177995475368.11785.539750589812877358.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d8847556d35428c2a47ac1232bdf75b200e98e427f6a2dc63009b4284360f87a
Date: Thu, 28 May 2026 07:52:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779954753
