Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5DF54375AB5
	for <ddprobe@lists.linux.dev>; Sun, 20 Sep 2026 09:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789896634; cv=none; b=fB6dAz1yJMDDNkAxTVF3eYfB15duUDL6UrDgeCjLYPOaUOSxkEb63WsZtpnVaDgyqlII6/17H4RpFfIsK5TtULiaLTnt0bgvOe/QlPLDn7JtB0FAduAeSeVwdsVD3sssc3hH2TRFLUQo6jsCBiIYJzyZOx8JltTA/HK6gUq22MI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789896634; c=relaxed/simple;
	bh=PU35jMIlvHzNPtD/7M/4+tIQn5PgLyjrADnIl3AsYOo=;
	h=To:Subject:From:Message-Id:Date; b=H6T/9h7RJrLQIRWapVFRBtrkH/4yj1MgG1SxpSkqdjEkENmt6In6pxHEOhZjwfN0v+/GoWrHLRLJev+PAbuvxOJvCqem6lG4p6fYWurGnjUXAl0Vf6PRXTOY9XiwwB1wqSkTaT/6EhQbom0isiAjKZNph4gRCTKMXD5o2vVhuVg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HAul/luD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HAul/luD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD331C2BCB3
	for <ddprobe@lists.linux.dev>; Sun, 20 Sep 2026 09:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789896633;
	bh=PU35jMIlvHzNPtD/7M/4+tIQn5PgLyjrADnIl3AsYOo=;
	h=To:Subject:From:Date:From;
	b=HAul/luDbi985nEtXgFT6xXOr/zVcmrfq/Z9+4kCcOogRRJjCW7qIAZND064Ccim8
	 kzWWxa12gq9PFjh30Y7uhJW4JtoEFlw1AB3UZzieqO2nrOfVfPd+J8wsaO41tQZ8Ax
	 /SR8Lm9jas9uk9zeBDGNg8jhFLmkOXarEuRrM+JOppgKAXDsy5MYhhQK4fdhE05P1B
	 26wouaVDKSF6/OflCfT6Tj5yoVgcTG/UaFK/hRc1Sxn+GhMIKCM5WRGyWQvIWLI5/N
	 GkdqgX/243qiRzo7j7f8BirKcbb06gc2/J1tiIaxYwwKoEZ3zDuvQnf7XRYg1iCFLv
	 aGj7p6CVxdQYA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9FBBC982D0
	for <ddprobe@lists.linux.dev>; Sun, 20 Sep 2026 09:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178989663368.26434.16991303619635146729.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5206e951f6d57c767a712f1f0f37b038872beb157be41192bd0760345fd206df
Date: Sun, 20 Sep 2026 09:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789896633
