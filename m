Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 341AE1BC41
	for <ddprobe@lists.linux.dev>; Wed, 24 Jul 2024 03:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721792754; cv=none; b=Y1HR0nJEDvI+gYHV7GfZ2hK5VyjSLv/l85MYFXShfQYpf8aC7O24zT6djgB9qNs9leZWK9CZQ1SYZznBlHDAwTLtAIpmmy5EK1+4Oc5LSuhFy8vxeCrOHq4C5EoHMeYHtTLjuFvyjJRFNgCH1V/fSmtd/oxGzn6BhPXijI++a9E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721792754; c=relaxed/simple;
	bh=AnzlY9qR8eAMXYyAQTjNk2DIbgvri4abCWjR70jyyVA=;
	h=To:Subject:From:Message-Id:Date; b=hyLjqlaLYqlOgNe8N+3wHpXO19s4QDF/ih6YKpNi7r5LmZyaNsyLVTxYBlYJZp6tWlLG8a31S8OCKKewIpNH+YZOLDd6MJ0TlZ0EVWyJv/TlSi0UT8h8DAf2rjmm77gfaGV1LlbSgg0pQp9NZWBfl5EKdfR4LHS5QpadBwh0evI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RMaUt1NW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RMaUt1NW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AFBA6C32782
	for <ddprobe@lists.linux.dev>; Wed, 24 Jul 2024 03:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721792753;
	bh=AnzlY9qR8eAMXYyAQTjNk2DIbgvri4abCWjR70jyyVA=;
	h=To:Subject:From:Date:From;
	b=RMaUt1NWe7zgKpuA+rC2X/NrhZtp4MzGR8WFo+HJfkkxvTEeOosYKIrsKk3u21Y2z
	 mzEtA6CZ6X3kyDYyIg54WIQUx/GrBDRxZGwmjv2oKAplX/fULE3Yu6s8iT82JmeZDR
	 yt3SIYS34Xf6qe8BrkWiyERon5aWm9dlS6YrLdzmsXYnw3smw5g12lSj6aCDgUs99h
	 wzZen8JZc/VypYrXFofifYPg+uSrLluKRGeCKPsHXOnV2G844Tt/14aG3g7Ayk2DnK
	 1w2UFRguBnC25WkDtwyx7WKH0DalT9ZOZ3hTGbwljbbZ7CcIBNUQTaaqFf8I40Z22y
	 G5fMSr5ItFJVg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98167C3DA49
	for <ddprobe@lists.linux.dev>; Wed, 24 Jul 2024 03:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172179275358.16932.11698799669650351099.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a1eeb5da9456e0a904d49b5a73a20fbab668e1e5cb5030be6c16d4d560e523c8
Date: Wed, 24 Jul 2024 03:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721792753
