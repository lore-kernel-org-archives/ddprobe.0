Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 013973624BE
	for <ddprobe@lists.linux.dev>; Tue, 24 Feb 2026 23:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771975494; cv=none; b=O0UXnZ3HxfzrxcM4oWfIbl2UMxG05HGrFHoA9AaY6PkNJBJ/MFb6wQkMIXZAl66c+NjIzZsaJHMoMTJICr/IrXJnH107PJgUx5xNIM4gohAUJwgdMtQTA8fpE2odsjqXGmyKtYSiG9M2M8HuYiTkxIf0TaXib2RbGT09tTRmbX8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771975494; c=relaxed/simple;
	bh=ePyxcnqzE4OPPD8nQs1nOEtYz54uIurWsLiomlt1gJk=;
	h=To:Subject:From:Message-Id:Date; b=GPcg6y5qP24pgnFR3ErwU2kXs5FGV2ET7HET521kcQK4zPeg44x5UQt5g2nRmv7fBcvVH4r6dYnU5zgMJ9xKvMvRgfcTxubKmLulXm+Mj724LX4oyQXX5fijmLGBP5JtbUWjIk8elJLVrfBGiW5HwTDRWK4CLQlGbsGz7JLvl7s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ml6zc/Ee; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ml6zc/Ee"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3936C116D0
	for <ddprobe@lists.linux.dev>; Tue, 24 Feb 2026 23:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771975493;
	bh=ePyxcnqzE4OPPD8nQs1nOEtYz54uIurWsLiomlt1gJk=;
	h=To:Subject:From:Date:From;
	b=Ml6zc/EeBYBg06QLUTJoUs6QXIA+LCC7ZIufHLFl5OZZtuBHTIPLZq4UF3fL2nx9a
	 f3tFyzaJNpL5fLBFNaG/+15SNO6I93jU0eqRWucLlPYwD6b1Uowm/HLSNp9X0zWsvN
	 JxRwFdqnIBQd7HPlr3iInkIP7tB9yMRA+ofJQYHmu3trTqXi+9Y4npb/kecST2M6Q1
	 Jxn9LKo4sAGj05hjOUflrNh32N6/Qid2nEJbna+sBCaAp30z2N4FBFgbw3z3vwdfXi
	 sC+YyuAKTx7ES6SLHuSQfCe3vm/z2yB/uGN+IM5Aqtmha5PTTRp4Mw9dt6XTvITfSX
	 t+CQsGlFOQTsg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 933E2F55431
	for <ddprobe@lists.linux.dev>; Tue, 24 Feb 2026 23:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177197549359.21871.3759142267738443440.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a2a06acc70d5e7eb27ac72e2b0048f6c52a946bdf650589195577efaa28a2348
Date: Tue, 24 Feb 2026 23:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771975493
