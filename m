Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A7332C08AD
	for <ddprobe@lists.linux.dev>; Mon,  1 Dec 2025 14:22:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764598974; cv=none; b=JrKxYONzg08vhlQ4pMg4koJZKe6vE6urI/Cc8v/z+/iLalvCgEI5SVFRlG+KCeiBRUeRu/N7QR4xArfhBPpZu7PdATCCoxTGUiH6JDj5eBALWHAOfL4vpAYhGqM/gLsmDLZXqRbpQOBZWTnWVV4GU/zWKDbbChs43WFXDg7CN9g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764598974; c=relaxed/simple;
	bh=6jdYAPsTRUlBZaOy9vvU2fbDFQ2hf2qZNi2+mC8ePUo=;
	h=To:Subject:From:Message-Id:Date; b=sQQax4QZ34WZTeNuQFYFZhgqbXefSKXDPGHtPE0T7992ZoHPAUBpowlioMbZzlmgMh0+yn5E60f4wgwWJNJOBI8oOWfojXXV+oHqgff19OTy2uazegFNKCWXUQ8dRaGtOSfB7HnY/woWJwE/1UyHvoEYuoPhwIbOPNor57bt69A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GDJ2xhKH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GDJ2xhKH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB843C4CEF1
	for <ddprobe@lists.linux.dev>; Mon,  1 Dec 2025 14:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764598973;
	bh=6jdYAPsTRUlBZaOy9vvU2fbDFQ2hf2qZNi2+mC8ePUo=;
	h=To:Subject:From:Date:From;
	b=GDJ2xhKHqnwbsysFqEQAR1aohF0EVcAA430IxelReKdzsgK8zI1/i9xvjPSZVb2Op
	 SBl8a/+tvvRPgna4bAOusmU2gcPTwY1uCzq25DAOh+mI3Q8L3Ub+OtPmmbnDAv/AQo
	 GER9iM0HEPa4xvdeoCd9qMmtGXv5L2KlwnIUlaVHID4+n1UT+U5PMCmOYoORr1x+ha
	 Y0nFNY8F8yosngmBcQnllEbNI1debLPiIrrMtczSwkTpi/C0yRzWjgMUfNSVpp3nAV
	 gRhFH3scobz4+1QwzQ78U38wzq9wpK4ayI7dO5UykGgQCYkdZzbfoLg7I3NrceXKoS
	 RbnhJ33UIH7Zg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97F11D116F3
	for <ddprobe@lists.linux.dev>; Mon,  1 Dec 2025 14:22:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176459897361.3821.8174448022508628026.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bacb7e9ca267a9fde2741005079f3cddbaeb051ac52df58a21cc90ba344a1992
Date: Mon, 01 Dec 2025 14:22:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764598973
