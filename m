Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D40F19E97B
	for <ddprobe@lists.linux.dev>; Sun, 30 Nov 2025 05:42:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764481374; cv=none; b=jMjpuINHcRG89dQg2okxRMtebgU94rYjB3ISmEGjzze/M1T95voeZLJB/q9pgj6SGLwpo6DBpk8nzd2lcK11vwRkmLW0DYGRiAp2F7gP8YlMf+H9r2M+OIk7UqB/eZ1Fa3y9f5HrGxKtvo2sK1FbKo0xiorKiaucqDOE+q3y5CE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764481374; c=relaxed/simple;
	bh=BYwsj8KROXAwnIqSQOuDv3p8+jq7VYrUSKbyT3rTuTM=;
	h=To:Subject:From:Message-Id:Date; b=uIzEM0WwkNYu9ChFDbC03fpWI/Jg4WoRl20NqCk2Ld9GjxjW5+MwR+sDVF1eaE0WdWoG8785CbQshFArkhABT+uhZpmwngYXpl4+bg6g+kvJ9ddl498awjdA1un+Qk3cEA9Z4aytqgZPgSqnC0xGrklgjIG8wlonX5unyVDtvHs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Qn59G6Yt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Qn59G6Yt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A87E0C4CEF8
	for <ddprobe@lists.linux.dev>; Sun, 30 Nov 2025 05:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764481373;
	bh=BYwsj8KROXAwnIqSQOuDv3p8+jq7VYrUSKbyT3rTuTM=;
	h=To:Subject:From:Date:From;
	b=Qn59G6YtnMe6t5z0uPDJ8wW8ccsdE8qHdLhskY5ZmaMYHg1AFtMXtFO4aZSe0p4w0
	 NrIly536ZVkN6WDduGLTEn2H7zVIPLDWdQFp7jtow2QAgYK+NpGOGuLUkv8uY0hC2/
	 9L25QqzWoZneQCpVLXOOW/6pnNcl3G8FEJRZuPgJLCpPSuDGJ5bobD9+7q5oOLwVXn
	 itTdbvSQgXTafuJmF5JSFTKvnacdU2eCCzh38eqZ8QINXuuNYorHZOM67uqx3kCx6q
	 e5BJeGQCZ+B98vBOoqWtLew5rJoaaXcxWQ4Gnk/TVmYFFq3M1s37QlErfplzAyxdLp
	 HiH4ahV2Lc6Ew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93526CFD376
	for <ddprobe@lists.linux.dev>; Sun, 30 Nov 2025 05:42:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176448137358.3016.10287125924101240118.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a98ef8cceb13b4980c54f2b3c7f9979ce1988257e8b5faf10dc3c810e1c5cec8
Date: Sun, 30 Nov 2025 05:42:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764481373
