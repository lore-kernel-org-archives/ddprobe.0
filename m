Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32FBA2F7AD0
	for <ddprobe@lists.linux.dev>; Fri,  5 Sep 2025 15:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757085594; cv=none; b=OLR4248UbohxBgvX5GXA52kBRcrBSKJCTfidtXXnRoeqyZPTl6AXjbIM+0YkCBGNcEBOBLmMWS9nYsQFRtDUJxH/G3LYQSI9rr/QUznFQejIlWZ/jRtuQAxD9accxDAA+Sm0pacT6forrk9UXY8gYMfQ9wyQf97nQTka2vkdHWw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757085594; c=relaxed/simple;
	bh=538kHHiMFgaL0OE25tqcqwfpaSMIZet+SFytrplCGeA=;
	h=To:Subject:From:Message-Id:Date; b=My2rc4gf0AY5ucaPaAhoJSImRViIYosSf7v3wFOSOVVjZZ86yFaR4quPFmZpOmW6xEzZHAMCEpR2xuTWaVYkBRDb27gj+rABOJjU5ygu8yCxYRIfsC9Ma3ogHCgl4Qz157nf6YZ8Np7cDSlQEx42zyzc7pRZkKY748yIEMY1X7s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rZTXfQQ6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rZTXfQQ6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A142FC4CEF4
	for <ddprobe@lists.linux.dev>; Fri,  5 Sep 2025 15:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757085593;
	bh=538kHHiMFgaL0OE25tqcqwfpaSMIZet+SFytrplCGeA=;
	h=To:Subject:From:Date:From;
	b=rZTXfQQ6e1a8poEnfR4Rpu7t5GdvvqUpBeg9byBgk8VInVXJTLh00XeBQNSvdWHqH
	 pYsN6hlBVP+5KcL1Sepe3tDDQeVYw5Clg34oOixoF/MQg4ZAxj6rxj6bRsmVaOkl2F
	 aJGBEjhNGmJtYYHKCQNjPnjns4LApXtaZVIS5BTOP2uf71V+NqBssPXrjK3Z2FKNfl
	 +SdyDSlRC0EDwS+Kya/ju/CzUuyjueXpgdT8cdCmsAhnj/FuARAo+h1/wHMddFHfTd
	 C1fyd6HROKcV0obD2GDh8D90Z0mWaY2tNkce2/AABICER99AMfUrKlKdiFPqXle0CT
	 MR7PZXd+27T+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 904E9CA1010
	for <ddprobe@lists.linux.dev>; Fri,  5 Sep 2025 15:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175708559358.31318.15752913559919823903.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6a4eb61dfcd03549a59263665fa5749048eb741ea7e2fc05151b48715fb9b247
Date: Fri, 05 Sep 2025 15:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757085593
