Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5483179CC
	for <ddprobe@lists.linux.dev>; Fri, 19 Apr 2024 03:49:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713498563; cv=none; b=mzDBdSnTgXVaMRy2sZEIrbpt+9r+Ye98W4VFFJXCQB2GjHv2qT+PY4whk6odPjY+PWmJe7lbkEWQDHZU7wxoTvmtXmr3bcAvAku2rD8jPT2OyhUdkd5bBRZpyIPSz8Aasw7ERnjISdhtPnUPlwMv/U340kwKmISKxROF1qMYbB0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713498563; c=relaxed/simple;
	bh=r3N9dxA0cssYnzVSq+gv4Omjy+keITAnvOMaodEtDqU=;
	h=To:Subject:From:Message-Id:Date; b=RLJHfX/UafdHT8kBp00auvUn78Qi13hJcamLHwa3VY+0Gow53e7b2H0K8K3kN38fZy/+aMAwpW1qhryURCubO4qfaKfjobZFdyTkuFhqjbSwdPP0MaUEWle5QFZt0SPX2k21Nt9QisU4k3l3E3Hj+7s5PWHAHOwCUQjjCXPkIkA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eUNSeFvf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eUNSeFvf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DABF4C2BD10
	for <ddprobe@lists.linux.dev>; Fri, 19 Apr 2024 03:49:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713498562;
	bh=r3N9dxA0cssYnzVSq+gv4Omjy+keITAnvOMaodEtDqU=;
	h=To:Subject:From:Date:From;
	b=eUNSeFvfMValc9P0RNcC9pPrkU4iVUzFdIHpZle6rG7OswQvzIXW7AIZWNP2QxxCk
	 B5vQtDrMW5TAJxN9n9ARs26P5Vyo0oNstmiizqbkHZjIXcnyaz4MTvGZ1ySGPMncZk
	 T7Wu8x9O1RnxUEnlZ7+V+wrIyOcXTpGT50xwe/JaJ7ved0tVTW5c+GhXdjzmkCDbMl
	 OSQU8owE+LQ9JEjfvWmotQ8AaLYP84iJ3Nzbm7cSimpAWFt3LsAYQbncVL2pPszaFy
	 b52xJxjoRBT6KXPDfS93pU8Xlt6sG0iHDYODrgsb3G2nbjSCzKVUrxayGEWprbjS0T
	 E7tHVw1hN055g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C46C9C4345F
	for <ddprobe@lists.linux.dev>; Fri, 19 Apr 2024 03:49:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171349856277.20349.9897635194227397981.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c8556b212f3c91191dca588f9c3c6c32a6382ee7760cfd95f8dcc8060e4a6be3
Date: Fri, 19 Apr 2024 03:49:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713498562
