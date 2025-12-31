Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2962530DEA7
	for <ddprobe@lists.linux.dev>; Wed, 31 Dec 2025 20:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767213834; cv=none; b=FE/CFz6XBdTh+hbNSMNY4vGD1ZhjrjXNglCj+bJ0g+Qp8q7T6i0tMozZZ3z8VSOPxUuz15Y0xX3M9jJtNdeEG+iwD+kiN2ngsbSluJuev6ium32YKvaEUKRXPkJSirHBQDOGFNorLDRCkzMX8kUo0MGcJKXFOL8WHjPwfHqV6GY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767213834; c=relaxed/simple;
	bh=yfQnA0uC8DZ42FMh0p7JDikIUC5zGIrciPulSaEi7ac=;
	h=To:Subject:From:Message-Id:Date; b=P3xPB5q6ESOb86N9Q9YfC6Od3xArLtU1hnbosjEbBqZ5LBCWLpNCW5Gs7B//Evh4yNn9Gnz141Gfsd6tBe3oJ43vQPZIpFzxfdcHFyJIBTtObRjHgOjVD6BdIrOEkKbSLffR3BowuwfWj4TJXBN6m3q97Foic/BklZBJWAob5UI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FT4uG0Nn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FT4uG0Nn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A216BC113D0
	for <ddprobe@lists.linux.dev>; Wed, 31 Dec 2025 20:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767213833;
	bh=yfQnA0uC8DZ42FMh0p7JDikIUC5zGIrciPulSaEi7ac=;
	h=To:Subject:From:Date:From;
	b=FT4uG0NnFjLjS6/FSQgbTAjQKcVO5wQiaKhmx0/wYhV+QeKkAlnQH5X+GCigLoBLt
	 5DnsmiVLIwztI/BoswScEU0qkhZupsgg+g5W8BIP9HwVYHhvoPQF98D7vOs7w+1S8Q
	 w8qV1Uj4WlVmfihZmiDjci1xsvwqXS4w0cigoe7O1JwfUzdcFgYvwSRg0dgtmvtUPm
	 5+5C4ytnv/fJzws5DUYJACw0/Z62B8WhpDCCIpaKbLDufmKk6FhdQUHnTMROPI1i8h
	 wK8BVOOGMf5ueSxe2FuF/imDbK2/3P/h/O3b68gDqmq6GIbZdYoPhlkU9804pbhkuT
	 z2eZrH0rG3P6g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90333EE645A
	for <ddprobe@lists.linux.dev>; Wed, 31 Dec 2025 20:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176721383358.23993.17403702196959386811.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e2e362b0eec3e339653eb0c6a6c967fb49e33deebf2ad0b954e5bc364612d341
Date: Wed, 31 Dec 2025 20:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767213833
