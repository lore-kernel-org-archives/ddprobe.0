Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 438712957C6
	for <ddprobe@lists.linux.dev>; Tue, 29 Jul 2025 15:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753803594; cv=none; b=osewSZCgZXVuF4ekDCqmFgndmLv6y2fpR3X5csDAso5h1D5V7BKlm1ByaWLnYPbf6Pb9NdRnouB9z4y9FWHf8RPJXjfG438sDVbXl32jZuWLhr5m01zSEDO9B+aoRM1B2knA7lS9cSdETapdGwmBWJLjGH05fvImP0V2BQKj36s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753803594; c=relaxed/simple;
	bh=5SXAUwKbNrQ6DbpSieDUmW2QPtRJX8Vzm80Ib1xYfUc=;
	h=To:Subject:From:Message-Id:Date; b=mTfHr4fQikiUKeC5j2dBjy9qoVRbQbd27hGgFeoz9EBfMMi0PTeda3NY85wmm0kugP1WmZGhDVVxQIDlQtzfNJmbemw5KzovgXMLb5EeX4uUTcnDur85AtGOixTShbOLvcOJ82yhWnH2P44F8GBuA9DqYMyqJwZaaHWRLZrMMpc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OnUS8pan; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OnUS8pan"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A96EEC4CEEF
	for <ddprobe@lists.linux.dev>; Tue, 29 Jul 2025 15:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753803593;
	bh=5SXAUwKbNrQ6DbpSieDUmW2QPtRJX8Vzm80Ib1xYfUc=;
	h=To:Subject:From:Date:From;
	b=OnUS8panMIcRf/eDbNKBYTJJakiLgdw878tkFpLPsBCBqu0XSjTQ7DnU3Y9pr6Tp5
	 990gDNufLteTG5DMYn4hhuahaIRDIQXvsSmiUZFUyYF6YttJzVImISGlBbpxcY98lU
	 r/+Iem0Y0UjMNr151HnwBYF+ZRIIoaBWxVYItmvOXLpn9qeMQquceRfVHIcPnW7oFH
	 tTOh51nV1SPCi9qyOz34ZxwJNJ+3qAQnf2RjkxCDAUtXxtEoqxtEFspJ3t0uppTtg2
	 grv67LqP2Vl3D4Mu3f/PwPPM72Q1gXZx7r3d+/N9PcA7ApPQlbAzqkJDZvIcyhCM9G
	 P4zS+AaHE3Y+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98731C87FCA
	for <ddprobe@lists.linux.dev>; Tue, 29 Jul 2025 15:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175380359361.27680.11856663259781948279.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 372a50d1d0fb343d3b00dc5511e576fe73252edbf154f11748d88261688a49a7
Date: Tue, 29 Jul 2025 15:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753803593
