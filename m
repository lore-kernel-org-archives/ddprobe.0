Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D98B36C
	for <ddprobe@lists.linux.dev>; Wed, 25 Dec 2024 19:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735156554; cv=none; b=XKlKYxfJKJixQtr3NnVFnK+st/Cf7GuCr/mRDNYiiy1uEWX5XMD6RChVwu03g3F+vbchc4QITgb3fyUeiIZrX+JOk8+JK53OlUMvhMMVAFcZ73Zvj2BzKY1YYH2OZgnUvu6PFpvn6sxdAfLpfWQiVd2dE36s7C0UqMGqGohuBKs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735156554; c=relaxed/simple;
	bh=KpGHH5U2cMDdiMY73wUCcFuPiL9NPwGAmlS1VQqNob4=;
	h=To:Subject:From:Message-Id:Date; b=WBwO679Ao+6m5JYIEBfIA05K4AuuGGqQsIThVt5CaQIk7tNWh/qlewcUPOztbTlRK8+txgCCEBNxfieGssW2w423gkGw/1lJO5b5bXuqbOuJS35WCUelgYgK4JpP6dyYqp1rCIy/oxqCO9/Nz4pVBk5h7wscE1lR36s7DPpc6OI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ui0PRpUs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ui0PRpUs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB872C4CECD
	for <ddprobe@lists.linux.dev>; Wed, 25 Dec 2024 19:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735156553;
	bh=KpGHH5U2cMDdiMY73wUCcFuPiL9NPwGAmlS1VQqNob4=;
	h=To:Subject:From:Date:From;
	b=ui0PRpUsEwu0+1zRFoJnkFP7sHVdVLgNQ7nGhRbT3TcaYPrT56NrjsEsXKrxuFW3w
	 ZuwfJkvDGWG7F79nXz/6nTFC2Vk929/72nqB2kZCfzIvsweQkfGa83mNrP8neAhQae
	 HRlBsYcY4nM62IIa2vE677qeiu1dIycG6XTw1EhWo/WLh+aoEOSeGkIRZVD7G83fEa
	 dGDR0w7n2erqi9IqBqXBZkLW0IqUjy5ln0q11f3MHM/sI+waONmgI4NzPZbb2KsVmS
	 pZXpv8uelZ/KPrIORvrVpzF8w7prA8ZoswI/ghZVc1VZz92FWwNnLJbcGryCdUDC+a
	 tUBqYaNt93L3Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 989D4E7718B
	for <ddprobe@lists.linux.dev>; Wed, 25 Dec 2024 19:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173515655359.6110.6194425728426300008.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4250f6e1157de2c5e901ba048381d38acf3f2e4037c44f21f5d632e908744edb
Date: Wed, 25 Dec 2024 19:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735156553
