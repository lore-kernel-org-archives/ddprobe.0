Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 301D52F5B
	for <ddprobe@lists.linux.dev>; Sat, 15 Nov 2025 14:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763218794; cv=none; b=atVArGZspFdnaMKKp5jvaMbZTep1VbLkXB+wX+hnpDoRaK8y3kK3MK+T+E8FVpVxdYYab1XCeVKzTZcxux7ko6SQv490y9OGD8eCL6Z5EvQ+nHPFkyRnj5neJfImBYXOresXHsDHf0FKdJN2be/1BsBj+Eei0Mki0zPXHsx4jqc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763218794; c=relaxed/simple;
	bh=8l4aYEfV/95gIRil9uQwYlSaUxCanDMIxJgiPfVXLNU=;
	h=To:Subject:From:Message-Id:Date; b=W/N4eYRqm9U+ncorLTs6Ljfey2rmkU6YceSHWsAlpMeqGhJJBUUbYkhWJrWWMRrPsZ2fFWJDU36QyhxMt9c8uW5VDKLEQv1JoKfP8HedX1W1Ie2OCyhlHrwZ4n80WxZeFTdCDr5H0QrWxkkHrpZLEIuyQ6FXXJnpbTEj2MADkCw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FS9CEUWx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FS9CEUWx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B257FC4CEF5
	for <ddprobe@lists.linux.dev>; Sat, 15 Nov 2025 14:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763218793;
	bh=8l4aYEfV/95gIRil9uQwYlSaUxCanDMIxJgiPfVXLNU=;
	h=To:Subject:From:Date:From;
	b=FS9CEUWxkcVJ2nclxJ37437gkEoV4ty7YhmEx8dAxoXgfCHrtp4bhZvcXQVIJmYO2
	 dvm5zDdAauM3PtGX/feXmIzSgG+cuN1GZLavo/Kbc2rf/63fD3w5WnhI0wnSq+0h0c
	 VAoBoYaLnzuVK9vMveLxYmeSRWIlkViX7c0gOX0t47ZQzJJyMYUVAkBvia4obWdTt/
	 ag5mNodNwiHqM600YrEuY3nDvhJVIsPtF7qNZ3g+v0ItfNbx0NdGum6Jze+tXvESDU
	 orQ4ihwVXxSQyWbEDlyOefFGkGerKNum0T7DQIwVUB3/Or2Ycsfx/Y0EItxbecr0JB
	 xI5PfnnpTLmlA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A3EC2CEB2DA
	for <ddprobe@lists.linux.dev>; Sat, 15 Nov 2025 14:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176321879358.30973.8143634127573973462.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 263924f0e99665ec5dc57c41a8fea2a5a653582a7d66255370094d417abd7564
Date: Sat, 15 Nov 2025 14:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763218793
