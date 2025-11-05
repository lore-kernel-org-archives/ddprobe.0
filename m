Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0CDA62FA0DD
	for <ddprobe@lists.linux.dev>; Wed,  5 Nov 2025 11:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762343394; cv=none; b=Z9vkdZGCFIAtcc6LjypchTeR2YzwYhArrlwExEnwSeZ3f7VmXRyCdLK+AonuiDYlEw7hojHHTlQWV3wZQUWLkfdjkfOOiHo0YwiMpmETIeUKf1tbvh0vjz8+m3vdgMNW4bhWuUSjbtkPBwcUHqo+/Qj3PuAdgF56H5KaVL11gEY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762343394; c=relaxed/simple;
	bh=qppwGk5zv9dukWyIKn9gx2gnHmHYpYEphawRTsArW/w=;
	h=To:Subject:From:Message-Id:Date; b=I76uCFHNSq5fAstaJM3j96FbB3YvsBnFD/DV6LQgJXHk2bb21jXDVqZf9hOfLqOjpfEjNm1KDnEUv9c5NReGDX3oFQn2tOP7O1Bj9OKbZaC2UC1EPyVAqVEi2+acUrBlorh9zOY6sfHrGpkpePAXTil8lMk7j558izJLvgB7GS0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kN2z/eI0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kN2z/eI0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C903C4CEFB
	for <ddprobe@lists.linux.dev>; Wed,  5 Nov 2025 11:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762343393;
	bh=qppwGk5zv9dukWyIKn9gx2gnHmHYpYEphawRTsArW/w=;
	h=To:Subject:From:Date:From;
	b=kN2z/eI0x3eSFw2ocYgOGbC8fUKm3bfWRAkC+cx7qCtXWHvZGD6Q/2DqZFzeeC65z
	 aQscvlbr6E91HQfh6Gya4QJVEmUXkU+Qa7JpmhUlSuneWPuPaM9vHIKqJcf5M/Qr73
	 xMfg9VZEjlTOBJ9ISQqd/5WkGD/KdzRPuArXhZmZ/rNW/ALEPEFq7QW0Lhr6e6U4tO
	 M4C3JBzyQYCEOTuMEeZ+HewpCqUsfQYSEHIe8KxYk8O+BgSPPBUHOcU3lyHWNRoFeL
	 Sbg/PGh31KecII6RIsrFFI6ZT41KKA/dvP2H8O0nDg4JLThjOgCwdlRfBvjZpw8BTY
	 UJO5H84Dy/U4g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F805CCF9F8
	for <ddprobe@lists.linux.dev>; Wed,  5 Nov 2025 11:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176234339357.17591.8813095458705936508.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2c28fab848c97b39042a97de044aa61532822d67b5a1d6ff990c8e730db8da15
Date: Wed, 05 Nov 2025 11:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762343393
