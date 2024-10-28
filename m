Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 10675A59
	for <ddprobe@lists.linux.dev>; Mon, 28 Oct 2024 09:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730108754; cv=none; b=nRY/IBbJGyhF8m/wi5XSbGp6IePRp/m39uznd/vLBj0LXf+zn3P0K35WfdZPPzPtC5fjBpSbtJeWsAASEhHQZiFgh/chVn+4w2xhmHwvw8PuRe87KoDL22tClnhXVIAwP94qJ5eFDPp2LNhptJMEcLPkJljPTLAh2DlKm0di5fQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730108754; c=relaxed/simple;
	bh=MngpsmCLlMipSE1WH+YxZa6VTDUytcw72ieAfqOtQAA=;
	h=To:Subject:From:Message-Id:Date; b=lgDmbSUGTVqZU5P7OAIstOSdsJznD3/lpIC/CoqPRLYSYQRIltijEOhAlAhB1UvJ+PveGcw+b+k5eO+HZt9+Z0RO7bT7b/euA2tmTpAlBkbuw+40aD+IqLxw780Nx+I1d+XJtJf5kv1P5fvcOAw8skFG/yLA6Zox7863IY/W+xE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VJC02MSi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VJC02MSi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4D2FC4CEC3
	for <ddprobe@lists.linux.dev>; Mon, 28 Oct 2024 09:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730108753;
	bh=MngpsmCLlMipSE1WH+YxZa6VTDUytcw72ieAfqOtQAA=;
	h=To:Subject:From:Date:From;
	b=VJC02MSiPSmHvca9UqRCwp4TixVcZGEBgBo7ZdBdyuplRvTsN3c7w4+tAm8/Tqxu8
	 MKEIkFJ8BoO0CfqMA6ft/PrQ7MhtY/qCYhHEnT6FwbmSScN01yMbpGIEQdUqYSRxgJ
	 zWuvWhl2wZs10D2udW1DIWkxcYBUH/u2VSN+l7qCCwmhruuRyuZ1dG87frQ35JEAhE
	 tDW44wblQAc1hGWF5FLurXFIHg7k3VmpH2y3Kb6Q7keJcdVj0DSPwC2meoO8JTPO93
	 LV77wtE+OkSLae8RqIJZnZZK5EVOlFEYZOvOoI2PyEmQNiVYhpPHAe6RxkGdUS6CbF
	 8ybhZWe9pwndg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9446BD13570
	for <ddprobe@lists.linux.dev>; Mon, 28 Oct 2024 09:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173010875360.4537.10532877979143065409.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6c4452b632e95da4c298e74745aa2cb455862642b25d447996703b53c6ea3298
Date: Mon, 28 Oct 2024 09:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1730108753
