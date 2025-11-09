Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C31D1494C3
	for <ddprobe@lists.linux.dev>; Sun,  9 Nov 2025 03:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762660194; cv=none; b=QMBqOSGvj4mYzemeZQlwNHS8mQ8J9bgSPaehflxXusGAmockDDrl8i58JAHejiEpBf7KnRw9492VqCgtMBT+tJ3WJBTjDlpVn0EYdyelNEgWfpQ57U0lIg0xoLDzQA3kgnGoKVOOaG8hzv6g2WksYBsjerJC4qBQgPAbNGDQMjg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762660194; c=relaxed/simple;
	bh=r/zMb22qwXlDi/dTtd8bvrluO5L31bVdlFN1cooDbas=;
	h=To:Subject:From:Message-Id:Date; b=fuAHWZgTD+eoFLtkbBRFLMiRFJ2wjD/I6P7mPGgig3mzsAT2lTVZNNaxT/47DtJIJ1aPUyhPS/tbMEIsoVLNUgiOt2LMHrDSPkcqbTvL17FwSGxP0znPg4LnccGWzE65cQJWyvZsoxO4Vxks8XLO58uHa678N8/OF1ZZBd+AIYI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qveZDbfk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qveZDbfk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A51C8C113D0
	for <ddprobe@lists.linux.dev>; Sun,  9 Nov 2025 03:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762660193;
	bh=r/zMb22qwXlDi/dTtd8bvrluO5L31bVdlFN1cooDbas=;
	h=To:Subject:From:Date:From;
	b=qveZDbfkIlqoFEqYpgDCYnKZ3I3PFc5ycnfDhbLa1snD5vzbAsvy+RoMHHyjkzmFK
	 IfYWPlvR/Yr1nffQz/qENhtwSQ30KEs5vIAlvyTdVzKlsLGCD/fPngrznpA/LtDFU0
	 WUAkh4eJBdo0r6cPxss9PC7qictlO9Vquu3ItvFF/Sj371lAwcK1SXllwMYUdWgQ9a
	 G37YGQ1vxOM0//oXdyGe6vH5UdqDdjMXRsQrEvpCj5GXjxC7p6F/qwh6ow+Yn2msku
	 cNyM45NezW0W6/S2IEjQJ+JfHIsg4VheUdz2zFEgErq8EWCoUwO9/iy5oW9uuPl9+Z
	 ry+OJcboPVXTw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95D58CCF9F8
	for <ddprobe@lists.linux.dev>; Sun,  9 Nov 2025 03:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176266019358.23550.16861056106502919136.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ce77adfd9ffe90952b361b89d373bf694f79769f0ce5a237dfc63762bffdcd0b
Date: Sun, 09 Nov 2025 03:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762660193
