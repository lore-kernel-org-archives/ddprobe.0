Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F4210329E5A
	for <ddprobe@lists.linux.dev>; Fri, 27 Mar 2026 16:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774629894; cv=none; b=jmHr0GztYtyVvTRuSHkpf478obiWqBduA/mEjmJGdc1idh5Rb5sQW4VcWBuz7YY2+O+OVM42J/XXBQXKG5oXocQP9TNWblx6cIFQMwu5bT3jvGKLEHWCyjhNkok6xihYgm6E8sjRUkHlJjzLkhm5BYUU62pgPET8e2CgodHOzoU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774629894; c=relaxed/simple;
	bh=3Y3tmRrXCGlG4487ntVRW2RxHiyyUV/mCgxlMiEnlRc=;
	h=To:Subject:From:Message-Id:Date; b=FgQ+OE/6T1K+Hjsk5FSJwNpapgeB3Tq53mITD7C5pghPJjd59Mn9L2lZhPGHm+kcIJe2bPPncF53g5OL2qWzXpMseFqMtDwpW1e0PfBquqH60ZOfr6YiSDOHImKgcXaYgbzuGBv1NNF2VPNlJiRRU8sYRcjbJJTpecZ5ep4uH/U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ryKGImwY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ryKGImwY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EF42C19423
	for <ddprobe@lists.linux.dev>; Fri, 27 Mar 2026 16:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774629893;
	bh=3Y3tmRrXCGlG4487ntVRW2RxHiyyUV/mCgxlMiEnlRc=;
	h=To:Subject:From:Date:From;
	b=ryKGImwYq8tBRQOURiGnUbIP5pDyRZWRETd+5KUsTiO8LBwdT2QQOCKo0eGUSHVrc
	 23YODtYHaY4ul7bjwpGzlZGjeBURRtV81MbWsYjIemJFnB0+dw5JFUXliwoCwjmXQ0
	 UgaEbs0ei2wRqfqMXOt/MeaaFQlBpxVwx386PqSJlGutVpw4kodVt0DcaxjK9IRYyC
	 lXuac0b/Xp4D9hfSjt5QyOTSys4ltJyAotIYwzstgYxf8IqMktYHbdpudOAviZdtOz
	 d11bjQyfvwzyqYEe8cP1Ld6S53e23UVXsFyOoskF0KRxPj9NT/U21e77akSgckzLn/
	 2T7rU7i8oL6Vw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9055B10F284E
	for <ddprobe@lists.linux.dev>; Fri, 27 Mar 2026 16:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177462989358.17682.7897091405112236370.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9ea56f795c837d20eacd38ec29a259833ac75806929341d710931d6e35d76fc5
Date: Fri, 27 Mar 2026 16:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774629893
