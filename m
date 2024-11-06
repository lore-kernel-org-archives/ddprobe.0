Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17C6924B26
	for <ddprobe@lists.linux.dev>; Wed,  6 Nov 2024 03:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730865354; cv=none; b=txvK7SYsT19M/EJmD+xGXadJv3EEEiPwZVMs2H6SFWHmvpXZ2JUwHWrsKeaRPtMoC2JXbpanLctSwAwHD3JetyGx0edaIEq27X+e2Zh5A2D+Qxv56dgr1FSXUwwyPQyHMTKFFwJncl119ouodsQZKHb8HrIoPkhCJ/Tskp1Giv8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730865354; c=relaxed/simple;
	bh=sfrLraNWCbN4FFctClDagMzfF1Qz6yeQkvN68dam39k=;
	h=To:Subject:From:Message-Id:Date; b=t/UjgNvowUqJU9q4ZVzVOsgQYCk5R0gWQlTOkm6znLq2sD/xUWL3Uj17f/aod3KLQm6l6z7MXLCqe/VJEuBzDiR8FVdE9pWSaEBBcQqk6tCjwARICqf8a1CJxV3KyeVIfHNuZe9Kjx+VWeBbPGGfi0NeIA0BJiJKk46Ai4oHa9U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=T/1xcsqi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="T/1xcsqi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA008C4CED1
	for <ddprobe@lists.linux.dev>; Wed,  6 Nov 2024 03:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730865353;
	bh=sfrLraNWCbN4FFctClDagMzfF1Qz6yeQkvN68dam39k=;
	h=To:Subject:From:Date:From;
	b=T/1xcsqikixms/WbfXO/wb0IlxZna32LwkVnuA0V7drhWz3WOGSNlJ/DqUr+JLUpH
	 7Qd8U2JNqTz5oof+vlSGsjN/RLn+fuSeWN4AI9z0ahb+FO7s3aj0ReE4wyWJT9pTb+
	 1ELe99Vj7NR6QFzuqnGEtyFbNu9ow/tv/iOyJs+yldAOERfAy7PlC/iIxlPVALAKmk
	 zWNHQgffeuLGlgEFFrWSrhdn5UW6oTLZOkRnOd9ZhuFAl6yourseSHLUDP7JsQh3wN
	 onrW8GiWZbvZumxWPsp51BdhouNNooNN3iAO/EwR5d4+GMoHLP3q8To1LT6zZ6Q7xK
	 wbMX0ftv/gyLg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98428D3E789
	for <ddprobe@lists.linux.dev>; Wed,  6 Nov 2024 03:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173086535361.19825.9601667191612130575.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c2618c9442765f0754d48fcb19841c1b56ac28a2b4fa6a662e2bfcbe5d0c07d9
Date: Wed, 06 Nov 2024 03:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1730865353
