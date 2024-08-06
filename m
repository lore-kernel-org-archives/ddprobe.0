Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 380716F06D
	for <ddprobe@lists.linux.dev>; Tue,  6 Aug 2024 17:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722966954; cv=none; b=uqRXJ3/opQ9QeiodzmZ2tmaMoWTNoHGRQsXACpUblr/UUoL4FrKiCqHJ3rzcj6i2X6q5AJZnTco73qiWjJNy6n+K5uzKd1WHg/P+x2XOZ/D+ToGiXcxZhNYIsYGwowdkAQfCUYQt57BqwgSctsP5hDXkI21XzPc0+UNIhsOMTvo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722966954; c=relaxed/simple;
	bh=E37WDAPjFwfnBRknqL69eVPCd5adBLXT1bblJyYyLlY=;
	h=To:Subject:From:Message-Id:Date; b=qF53fZmI/J9zmrDLDEOPvOuVZCLUkhu+Bp0SqqmDMcCHttrnoEp4E3korihEEus6u/ZP8l0kgGYJ+ln5jS8NChRGmqK6mxxipgjxmPPQPhlGSoqko0bGPOVsw3lcLUzQ4tGvmZVKbJGq+m5Jmg3nVLqG98fYKrswSCY7V/IFhgY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LT9O1zOF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LT9O1zOF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A62E9C4AF0C
	for <ddprobe@lists.linux.dev>; Tue,  6 Aug 2024 17:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722966953;
	bh=E37WDAPjFwfnBRknqL69eVPCd5adBLXT1bblJyYyLlY=;
	h=To:Subject:From:Date:From;
	b=LT9O1zOFqkBwJNdOilxE51V9QPLrEs5roTgsSijrsfEK4N4lGRMvqOdymuqNxHd9M
	 9wXau28Tu7lSEC8YbuWrB90wffiB6Mmz0S6XX9QtbC8gdjLslRjmWCxcJHKmpNCnY5
	 uEkAezAD+Bs5CCN7MbtpNMyNnd9xoHfROZXYv68z5dHjdgHsI1j4oGgXNyvwWpzB2j
	 j/4L5uw7VTqZXkTpMQ48/jrIpTm7H1j+BoedP5m3cCnAEBS9+0GR0Rar8VKD75cSgH
	 KKGthNcz5pzibsJj3jSacS4gqRHyneVGVoddg+TzJd6Ly3OTOoSR+J4UPIJv55O44c
	 JsE3SEtlX7ZvA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95CCCC52D70
	for <ddprobe@lists.linux.dev>; Tue,  6 Aug 2024 17:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172296695360.29143.11413814176040878947.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e419410e30f00b49f9d352164f487cd37db81a1f0067e5ab96b8000f68375a8a
Date: Tue, 06 Aug 2024 17:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722966953
