Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45A211494CA
	for <ddprobe@lists.linux.dev>; Tue,  4 Jun 2024 19:06:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717527983; cv=none; b=LI4uY8za0MGgFsh2Avi9fkF9pEvj8aKCaU5TDDVl4yf0tmPpXm5Te/Y7EpqNVqsEZSmDhU94fsmnmzcOtgNV3oeiZCeH5gaFFyNCfnxTDdIi++XlX3u+bjZdG93NPQ+ywvjqWptcondG9XDp6yt2p8HayYgy+McUZIeJAnRcWLU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717527983; c=relaxed/simple;
	bh=gGfrEp1VWji4Tw6iYuj1qyhSjR8YB6zCdzc+9zF/4MQ=;
	h=To:Subject:From:Message-Id:Date; b=Mh6AagXs7ZTL2d+Hqg4mrXDSS9oGy5K2mXlZHa6IQ1MuRvMdyk5WbZVq+BJiAZhGKOJhsC8io2japOmVxb2Qhf65u4+mENIqXPJ1hcSrf0O3ZG/5FzgauzA9zVWtm6Mr5LPL39VwKOZF6NUSBLnqjHgFULMQhCPKddiRzpzsl7A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=czLU/YOP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="czLU/YOP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCB41C4AF0A
	for <ddprobe@lists.linux.dev>; Tue,  4 Jun 2024 19:06:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717527982;
	bh=gGfrEp1VWji4Tw6iYuj1qyhSjR8YB6zCdzc+9zF/4MQ=;
	h=To:Subject:From:Date:From;
	b=czLU/YOPG/RTDPqZ3zdsFt3nY2HBOeknihDXjBk49tZK2H36vvMGBiaA71bFYLGd6
	 AjXhczYmG18eJLMIPK4dQvJuzgFeLKKuAvabjF/t4FXgDwf4vFrhDil3WPckE6M7QJ
	 egYAOQnERpbAtErfiy26VRn8UzFc594odEYA67tCRqVPUw08Mg0GuxAfwRM7HMSPWH
	 eRRCuJPDuy+N6C6i5kJ0boUpS8zrYD6o2Q0SWlXQJOw8n1vZ1v0IgJGsugQvA0pr1Z
	 eFfOZJeQKpPiJRpp2sYeIhKwwLFN6iHpHzUm761BChInmXSVqukfPhiqRByIiWLoM0
	 /FRfxjaJrW/hw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BCFAAC27C53
	for <ddprobe@lists.linux.dev>; Tue,  4 Jun 2024 19:06:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171752798276.7156.11988468421815409008.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 54d173a00a995f055d6dbdb5be4654101681f7406a2e02d32469245d492042dc
Date: Tue, 04 Jun 2024 19:06:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717527982
