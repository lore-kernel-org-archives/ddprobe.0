Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E039C2C6
	for <ddprobe@lists.linux.dev>; Fri, 10 Jan 2025 07:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736494554; cv=none; b=sXNGYbraXym2+IrinR2tAIVWu11xNrJXDWuGGSkEodpPNqQfYnt2fjb6MrnqVimanXHAKmFrMEQGAUs5rE2QhaOsaC+q9ZbdQsKeWg9Kih8BEqPLzraaIZOyZu/Mp2fwUk+W5uvf8VPFmbo6udxsvBL6KWL9F5pFROhyXrzxHE8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736494554; c=relaxed/simple;
	bh=BgVHrCIWoDIIgmw5IyPPzUo45deE1BpCYVzVQyfTiWs=;
	h=To:Subject:From:Message-Id:Date; b=UbuJ3EXYoGjaOTQCPbwzonwI6c/RoqSHriEmdYM7VFDOSBobZ7hXmWSY9u2fdtZy6PmmtHBKnRVXgJnJa6aMF2ypGNdH61buVrms2NgJxWGaMDsR4AxDxLwgBNu2xhF98ozwF0ExiOngbfnMAioB3Wn6O2/94Oho84y2Q5S2EYQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RQfKdoeq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RQfKdoeq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1AEDC4CED6
	for <ddprobe@lists.linux.dev>; Fri, 10 Jan 2025 07:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736494553;
	bh=BgVHrCIWoDIIgmw5IyPPzUo45deE1BpCYVzVQyfTiWs=;
	h=To:Subject:From:Date:From;
	b=RQfKdoeqpnhBNVF/vQW9CpPGrLmDie1xjNWOtfjXZVtZaw5K+7Jn+bIbkUQMvZKaF
	 KioUnxoQC0P71dTCqzh7H/NAH8giixWMxuTZQqnbXYzi9baYQRx4mY9BYVSBpffn9K
	 25j1wd0Dv0bR7MV5SlejrfOPkYVw5v6OkFG51T5/Vs4JVtwiF6F+XyC6CVM3oa8aKo
	 1SGt437q/GolZpn7F7gMA+H8On9B3xPq3XqV1Dfr/8+7QpW2sFfBVFGc6aMf0ZE8om
	 biYGrStnG8CHURRuzF2vqGlKehsCGWxKw9nWL6e9cQ+9wRzXwyQg6llpaQ/O10bCR+
	 f3GP5g3VuaB3g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9137FE77188
	for <ddprobe@lists.linux.dev>; Fri, 10 Jan 2025 07:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173649455358.20421.14177649314139920108.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dc9e85b967ddfc553941fb9a09a2f634a7409bdd5c7ff11aa7c78472c3e72558
Date: Fri, 10 Jan 2025 07:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736494553
