Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CD64941160E
	for <ddprobe@lists.linux.dev>; Sat, 28 Feb 2026 17:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772300693; cv=none; b=CjPYQ5UfbnqtweTmGQqzIfokqi1ItrvTvJqY8mn654RqLfCv5PJImIDJqzsPVwoZMOY6S5f2Qi0drXaf6I3lJ2eEgLb5w2Ql8dLCpqn5rmAvnHLwU6b/J8MatUqRALXP2x0T56y3butZBjoMgfYDNnXArKapuN1zAPeHU6i3OnA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772300693; c=relaxed/simple;
	bh=YPTYcyZZ+lOXJwdGlSjKdsnE0qOmj8ebmXUm5x4Hn7M=;
	h=To:Subject:From:Message-Id:Date; b=kYynaKMKgkiIoK6nDvciUnIss2HcXt4q7lNrcs0Oh4d1L2w6B0VA2rjoYdgQDz7kN83z3UlaHPgSM1TwdNTREEIHFJYv/ZpGrS7yLbx9/a501So7yFdCc14l2x9IynBcClqAQ7Es6MVXyydDPQvMuUSsi3dmOuB+lHrDu87HC1Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YiHEIHJY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YiHEIHJY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB118C116D0
	for <ddprobe@lists.linux.dev>; Sat, 28 Feb 2026 17:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772300693;
	bh=YPTYcyZZ+lOXJwdGlSjKdsnE0qOmj8ebmXUm5x4Hn7M=;
	h=To:Subject:From:Date:From;
	b=YiHEIHJYSq2Dy0T7vt5aIYUtK1udTPtu9j4zZVY5uxkIJg/9d7jQ4pGPh1+n2Mqpz
	 h0COKkIjkjDdnOFVUh+6avnmb+vr4DUunKjjK7I5APsKRP29H+9PeCoWn5XRo6lndP
	 TyXyTykFMvizWmBTt8DA26uu3aUd5uhgUAYu4GsITZFjqsjyEDzIG8sI8lTrlG/0ix
	 g3LOaGlZJQy0ONUJC1lRqYaY+Pfa7gRVgIQCCPwcbhhrR0hgB7J08v6y7rmMIrAslV
	 pMt3eNW6VsLy43Rm4ysE9WQk1aCxr2z9c/G/TxDDBWVw+v8teYDOdxTi7TLMq/3Mif
	 1TDMe8wjDuRdw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95C55FEE4EF
	for <ddprobe@lists.linux.dev>; Sat, 28 Feb 2026 17:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177230069360.17860.16623293699312815060.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2eb512b5e79497aab4636589e0404fcd9a28c16239b438fede47d64bea4d8b33
Date: Sat, 28 Feb 2026 17:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772300693
