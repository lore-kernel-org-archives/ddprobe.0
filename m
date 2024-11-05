Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22187213EEF
	for <ddprobe@lists.linux.dev>; Tue,  5 Nov 2024 19:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730835954; cv=none; b=QioVprCdcqtwQfLLuW7N0Ea8nu5hkxIAWXr2aswPHbIOxuIVeRjxDarEGmG6OeLbuUfpFa3uVJpweOY1OCv5srry0jlyz8kGFhfN1xA7S1qHihAxbonB43IY3C9+0XwbiGoQPXIEVp1AXNt8eVOsGLtzzTKEXTXFMZKXunKe4RE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730835954; c=relaxed/simple;
	bh=sOENHVtvQqJ59vX8m4pvwbjKePTadHqharNPy12u51w=;
	h=To:Subject:From:Message-Id:Date; b=tNjhbZgif3jH0gvTuo7K4ZK0+01kn0uj/XB4ElAMgT7S9Z+eWbt62eGCBgSTxgAKeTvA47jkVDhP7LVxe3C5QAy5EM8ytCIz2SdBesxzBXTWh3PEJyX926RP7cSWYI1iYEGKQjAf4mPAdkzNyHa+gU3qDMazdesfcSONwNhVDeg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kF2J6j99; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kF2J6j99"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A738AC4CECF
	for <ddprobe@lists.linux.dev>; Tue,  5 Nov 2024 19:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730835953;
	bh=sOENHVtvQqJ59vX8m4pvwbjKePTadHqharNPy12u51w=;
	h=To:Subject:From:Date:From;
	b=kF2J6j99U7B5Au9s5qaei4IF3v+IhyFQPu//9m/tyemspDclji7ZKeYuwT+Lj2JlI
	 53ihQFQTnBBTZma4vBL22icOtC1id16ln+Og7+vkQdehB6W72496Ksm+sJnEWDWLRG
	 kNJxdaACthnhn5XUoD7ZZSUZFerEjM9YEoDOqarlS20t24Yln+6k7xvlZwO/R+/F2E
	 vUip+nqQRNMnQcUeUqmuh3fZCfqiqEYG48YTw/oR5uauUxDUXu3RXG2RpdH7V9BHAV
	 OisO1HXjPcZtrGFjakh2zo/TbNZnaQvzuQGqhsnSRwvVRoMDYBoePm1iW+aMc33U1u
	 iGci0hHH8cDWg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91476D36119
	for <ddprobe@lists.linux.dev>; Tue,  5 Nov 2024 19:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173083595358.2268.17287397866669424127.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 01c6a619f34de39ce0f5e8858258d5b6eb3e19a56684efd34e20ea0c7b8e8cbc
Date: Tue, 05 Nov 2024 19:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1730835953
