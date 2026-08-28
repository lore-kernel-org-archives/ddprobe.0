Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C9083AAF4D
	for <ddprobe@lists.linux.dev>; Fri, 28 Aug 2026 03:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787888434; cv=none; b=LjxbCfx7IEM6gA2qQfxhxEp6s9x1IefQIUCAdRMX1e6lUsa923uWYZdV26bT/6wV6y6nP2fyaOVSqQgeF0g7W5/5FCfKucJ5S8xU5cCoIhJGMuyQy9Buc9QxHbkeYT3Xhc9wq3EqmWU/Hv1mjrrc9jhEpSZxSt+IlN47K6XPLeo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787888434; c=relaxed/simple;
	bh=eBHfRJudBfxitk2krUET4gpWB9GY+DBP2s14Cerpk4U=;
	h=To:Subject:From:Message-Id:Date; b=JofsgsmzaDDkgojO4s1aPNVNzhbXkK25qnwbjSa2T2tq2qVfHgoCXEfdTnCXCtiNqQ/mjJoEQpfNqLUYdrq4QzvJp3C9d3wh2MDhSZ5PBOdDwhNx1ICIpv0fY3qt7/T1kvhKOkUexbj6jbNMUP1aCNHi0/9tL94V/ABzabBXKV4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rEdbrH/G; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rEdbrH/G"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CABF7C2BCB8
	for <ddprobe@lists.linux.dev>; Fri, 28 Aug 2026 03:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787888433;
	bh=eBHfRJudBfxitk2krUET4gpWB9GY+DBP2s14Cerpk4U=;
	h=To:Subject:From:Date:From;
	b=rEdbrH/GAnS2Zi/qHEActdqvmop9txytbYVxjgmkwfZrEsw0jCWaufLpIcT04cTIa
	 uuu2tnxyo1JquurlDR5TVLd+pqkzFcOi7WwXkYammFOkBprwksnJv2u79QDw1KYi34
	 y20seZ51YAwkGzoCGrtOASWrXVFnKQ2Z6BAqGPqdQJBDZTQJWkHqEo7O0oqvbll2Ln
	 4UZuVRxCw2oeWIfi3miAnqjz1Hh7yC1xWjjp22Pwdt8ZWEW7XPpjwCMDubjJ2hmcex
	 PQQ11FiCVI1FwHv4/M0afgiApJsH/pxfACIuEs8YdCI/DQl+IMtt6Sjgg7Wgopssyx
	 npqRMzQRH1L4Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB165C61DBD
	for <ddprobe@lists.linux.dev>; Fri, 28 Aug 2026 03:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178788843369.15781.6515242036347101895.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9b008c226e47ab91619134a304e9f20d2f4a6c37b60a83e16fb31a29bc39ee05
Date: Fri, 28 Aug 2026 03:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787888433
