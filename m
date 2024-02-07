Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C78AD268
	for <ddprobe@lists.linux.dev>; Wed,  7 Feb 2024 01:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707269897; cv=none; b=A7Ls0CAdpF7XWARhvytOu1WEplORpB1sjQ38pAgfi+uAoWLqCDaMMEedw43AGd0uH9rwf4y9lJPkakBJitNMTPUnAGg1fkDEk7uOifWvzmGvzFawU+H/Q6HJR0aE9V9YCkxmTWDuu015fB0KonuM4MrKQ4VRJjc6LyF2Nnaprhk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707269897; c=relaxed/simple;
	bh=GjTr5tCiuNEM/128f8uBIDFaKSDiRod5Jhs2BMsPkk0=;
	h=To:Subject:From:Message-Id:Date; b=sTTjqKPvyOczMVt+mpEPw8u4wDtwDaGGbTsnTyXX/SAXrvhVNpLfa9IZWWHSy+5fMPMBFRq0SEu/Inrs167ap3gMyo8iAx2ZWqyF6/NmUEwUctEHgGOPpaIS4/0KowH9zfkhuxwkhLqNnW/ejoY7u3/dkMnFn0PEU7uZrZx3HIA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pxQ3a4HF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pxQ3a4HF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8946FC433C7
	for <ddprobe@lists.linux.dev>; Wed,  7 Feb 2024 01:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1707269896;
	bh=GjTr5tCiuNEM/128f8uBIDFaKSDiRod5Jhs2BMsPkk0=;
	h=To:Subject:From:Date:From;
	b=pxQ3a4HFqXFXO9Y1zaBSRKHFPrk4PPv17gyp6GIFxfQG/VZYqAUa/1LxVw3teUsSR
	 U9dB1Itam6WpLoF5ndPaDKXPRKzXORO4eCeR5CJSzRc++TMe4k7mdd/FB6dCGSyZFc
	 Z5oTy3/9+GLAGUs7ikxkxEaQCo9Ik/KabPOXf17ocaoB1ZqKFxFzwttxm7UU1+87AK
	 NuEkaCTjPaOh4ECTsfSjJg9UVewZAGOmRT1HgTh/+xeOrFV6IQ5BCDNBUeHoe3mQ3X
	 0M+ssl5jjo7OruTKz3WRhQ1QkRZiU0FiURaw3LQEYsZ9GXGoX3gIT5GMVsd7ekqIwG
	 ast5LrA2y8/Kg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 67112C4828D
	for <ddprobe@lists.linux.dev>; Wed,  7 Feb 2024 01:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170726989638.8363.9570305163801857948.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eca0701ed1dbbfa281d0a37c3537e6d93f2324716f121782e4932772e993a25c
Date: Wed, 07 Feb 2024 01:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1707269896
