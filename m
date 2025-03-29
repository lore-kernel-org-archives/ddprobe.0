Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43133190470
	for <ddprobe@lists.linux.dev>; Sat, 29 Mar 2025 15:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743261594; cv=none; b=uemMIWKPpALl3Q0riZcn006Uu15MDz6mf51VaBe/REOpf2iRjOlHWmjc73yxhdQJae4OPT+maRhHCkB5h5m0QsTQG2OsE2JFAUKzE5eml1cUBetChnE4ARcB0+VAZ6BzY3YiH1cVtbsl1ZojQZrsECQ0aAXXzpTfQoZKGJ1l12o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743261594; c=relaxed/simple;
	bh=JWHlDLiWt+camRhUmVuabsOz6XVYQZRqyHP3/QCZ4II=;
	h=To:Subject:From:Message-Id:Date; b=nRDRxmaiEgVR+IfG9IQQ3JZKvmo98RvI2W7wSv2g2lQTZJ48Vfhe8mMMsJ84EOqeECkf+ciI0GH5mcGXeUn7MB7zwWou+vlOC61tj9vGnrtT2fT3IqzNGtuAk+ZAGz/KNysoEwCLQyvMgqYaXSVC6BYA9t0728yCW4CkHX1KEGQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=b58R2w4c; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="b58R2w4c"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1223C4CEE2
	for <ddprobe@lists.linux.dev>; Sat, 29 Mar 2025 15:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743261593;
	bh=JWHlDLiWt+camRhUmVuabsOz6XVYQZRqyHP3/QCZ4II=;
	h=To:Subject:From:Date:From;
	b=b58R2w4cLBSmqVRtsjlzCAOnr9u1QeUKgGIHRUCXMjlDKUwscOPDnJGlhQQyZbPCl
	 hlzmFFXUjxA9gT3uht5foUleieKEsPkgSbgukn7XE57F0lqh7AUejKeNrRp3RlCLWd
	 IM2fcl5jo2PGLUzwpJSQgp+rSfKUnwxFKo+fBq6RAmHtG44s9rOp0z+sr19otDPeXf
	 PAlqSWGIqfTCdM/6HoHkNo6GBLdGHsYgiNC2h9uyDxFMIf0I0knK+fn5tjIBwbq7rR
	 cKeZOq524am6Jr72h77vDGmZ8AsrrmLHxMSg0rBbhvXsrfNOz7ZEwrZShTeRzvYOar
	 MvUeONiSP3Qyw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94A0DC3600C
	for <ddprobe@lists.linux.dev>; Sat, 29 Mar 2025 15:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174326159359.10352.13489733758222435357.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f5c29f984511fd5411d4403334a2344a1b9a1b915f692468154b5c418849073e
Date: Sat, 29 Mar 2025 15:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743261593
