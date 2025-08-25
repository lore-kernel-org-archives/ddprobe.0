Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 355052797A1
	for <ddprobe@lists.linux.dev>; Mon, 25 Aug 2025 06:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756105194; cv=none; b=N9tRThQJdux5sHE7VgBJvziUejqghmX7t4Ula4aSsaqFfg1f70/i+SQ/ml/nP6SIw2bztnRCVfHaDw0xM+j5kz2rqQVn09c13EG9GWbGS1sftTiYp9Gt9IIzUIa4U6oxYAp5N3CnuDNA5KIPTyfVCawnj4lfBBBhyr2crUooL4A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756105194; c=relaxed/simple;
	bh=1NCTyUSgFvYKOeCuJrzF2um0Tj6jpi/FlaI3UtCll78=;
	h=To:Subject:From:Message-Id:Date; b=uFXMy9twghBEhyuFkD3MvPXwuQTATlIEG5cdqbZXndpKAMJHzgO532uKbLcOhdbTPlhPlVW7oT2nw15FIFjfYdlTokMnHtN5p3pmvsQ9qpxpAXAfBsvaQNCS5eOTTRSEcU0OYdIXMX259plg57BFM2rxaNCZHLZuYsOa+aTlm5o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=M423xhfd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="M423xhfd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5B1EC4CEED
	for <ddprobe@lists.linux.dev>; Mon, 25 Aug 2025 06:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756105193;
	bh=1NCTyUSgFvYKOeCuJrzF2um0Tj6jpi/FlaI3UtCll78=;
	h=To:Subject:From:Date:From;
	b=M423xhfdveIUx4Bj2URR/qpSip6tOHNc0f1DFR6XVdUEp5OgY14kZmOJQoLWxOX/d
	 wW3e2VEW8e2Sy5xzyO/VXh/2b6IMoRfDzK8tUeGF7CGYSdDrpYNHXZD7ApNA2BP4B7
	 7yOdO/nJ+V3ru7aPFpwuKd3+UvbGQvUsY/D4cg/YJNc2pOyzYc+h2NAK5k/tyQjg1x
	 nk51dyk86qPJkRediV0Q0Z4JdVygs5gNlyxxaG9iGNYKguHbuW1BmEZdO+AKlvWTyR
	 cLUfk0svwwnpNeOSSiY8B3aeU850AKu6Wvq7QkRIy3GqzdfBkS6cM9CiYJoEhfPMC5
	 NKwqh68INly3w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91486CA0FE1
	for <ddprobe@lists.linux.dev>; Mon, 25 Aug 2025 06:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175610519357.13008.2909634309193979342.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 59f9c4c0cdfa3a3fccd51d2ec600d01d0f54366f4ef658412a540508df23c332
Date: Mon, 25 Aug 2025 06:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756105193
