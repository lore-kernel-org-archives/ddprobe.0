Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C0A339D6DD
	for <ddprobe@lists.linux.dev>; Fri,  2 Oct 2026 18:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790966434; cv=none; b=fx1xMismKazXwQ0P/XNAPczOiE6+8nyXv6JQr5kSZT80z8aGe61R3TdgJmNFyS1ye6g6rAHdA7X44z1CFMTbbPz8b0Q2hpYxPBPmc+vsY9E3dlaQPVxgZ7woFJSxojzELKzgA0V/URUTUZaaOj2LzYyPk5gZBEUVESLsObue3TA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790966434; c=relaxed/simple;
	bh=DDOsJwTw3EcKDLRv22CzVXsdcq5LFFY0CyLTaqHNrdE=;
	h=To:Subject:From:Message-Id:Date; b=Fk8aQ2oNYaj4Zl3ZD7o2Sw0WB0Oxtrexm7H7sjnlOK/BTyFw0kjEIj0tGuNFHBnMwQ/1nAWv9qhLvmxn3CL6XvLv0Y1jlUAQx3sod9bvumRiuSalYS6FD0TQFRGXl9TNnw8lrChVfoTBM3YMIKt7NBarMl1rg8llNTLBOhv7TGs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TAaBBYq/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TAaBBYq/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D79F3C2BCF4
	for <ddprobe@lists.linux.dev>; Fri,  2 Oct 2026 18:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790966433;
	bh=DDOsJwTw3EcKDLRv22CzVXsdcq5LFFY0CyLTaqHNrdE=;
	h=To:Subject:From:Date:From;
	b=TAaBBYq/sP9zarDSW6amP+1ilGwV7ItSqPnWCVQCGRCi2YHdsWJ+uj9fm9K4Q/PgX
	 c64WOzvYSzKnHMETE5lQo5RE9zE7od1NlcR0au4Ft9gX3k7NKLEI1c1jqNo8He+MTC
	 Pqb0zN8eO73sfWrfKoijbGf1wrk2S4MxQ4NcbQIBIcj3UsiNDZeEhvTom4nyGBSt2v
	 nTU6KxTMwECUQY94sqlJzlrHcNt562tdnMp3arDjeGNj4u3pnwP7PhKi4e3HsP75xA
	 GXUKaTUjwfbmc5w1Tijbl923cUORvp4JVJ2QbGykAekU8YkDKOvjtUqKs/ijQMbezB
	 MUVcA3AZJP+zg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B23DDCA5FDD
	for <ddprobe@lists.linux.dev>; Fri,  2 Oct 2026 18:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179096643369.9646.9536181666409088681.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d52378a69aa8dfa70a5378c1b29e7138c7e80789ae4ee95b5cc5f5a7f8d9723f
Date: Fri, 02 Oct 2026 18:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790966433
