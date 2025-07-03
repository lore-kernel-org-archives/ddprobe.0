Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C9782D77E8
	for <ddprobe@lists.linux.dev>; Thu,  3 Jul 2025 09:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751534994; cv=none; b=TDAWTsLGITIKdSl4UNygz6tcnHIsSEC/kptEPnQU0rs5XdkUM+d6eB5jU44k72ZsCmRq+yno8OtnbzX2Wh71AQg6HUT5V2D4yML03btEnccIDmUMuntD74b9QXDvF0JGcK+ocK8S4kb+nVOUUR9HTd/gHsOk1CVGYVNTkGNHjYs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751534994; c=relaxed/simple;
	bh=ARkurbbmjcB45rePH06dUnpyF3k2O5n5h0yQfTVhs9I=;
	h=To:Subject:From:Message-Id:Date; b=KAnDbgPXL7h7SCNRGSM2enUacsN6lHIuS/o3/INfatHk45afsBeKSq9+ZeIRDPGComu0c8Sz0wriKlrGE27/k+YOzxg8XxHBQgJzpogNMQWsXglzzIwYJR5x7ga5/KauytOEt6sz9rkUpGhs3bxvRD2OGg3WTGo6KApOMR8pMAY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fDg1IQMF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fDg1IQMF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A08BDC4CEE3
	for <ddprobe@lists.linux.dev>; Thu,  3 Jul 2025 09:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751534993;
	bh=ARkurbbmjcB45rePH06dUnpyF3k2O5n5h0yQfTVhs9I=;
	h=To:Subject:From:Date:From;
	b=fDg1IQMFiyjGaQ7iOSlWK4Ian71MiE+prHogPBYLZG5UoLITqVqK5V3TY7I7Upn9k
	 4zhYNDCvGKsTGYB8grk32+KefsLc8O3Tne7r9J794Ra1EvF5PA/P3fAt8jXQ78Tqjg
	 AIy57spd+EamMD/yAD4TiXztO7XezwnmTAIsCpqnfnn7SP4r/bOD5Ceugh9Rhn9euj
	 JVPekT2qBHsJSx+ni7Af13uJtG7bcO7J25nbXXnSAh8+oNQU5G3luxIu2p0znzP4Sr
	 l+xXQAlrtzIZy8GdcKe8kmLR6vS85qrUQNa2Pia/mDEI7Nyg6gjuYk+79b2BU+CXE4
	 XDXzJlCj61XyA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90D25C77B7C
	for <ddprobe@lists.linux.dev>; Thu,  3 Jul 2025 09:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175153499358.17598.2904413726174109776.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3e59ad3db407ccfda5a0daa6e6d2b47f4957e714cf8601c47045051a945be751
Date: Thu, 03 Jul 2025 09:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751534993
