Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 57B1D21A19
	for <ddprobe@lists.linux.dev>; Sun, 14 Apr 2024 09:09:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713085763; cv=none; b=K/9FRdLjH70qjZ2Sxo7F62SqNJUdtgJVxLFVQleh0EN2a+P11nX4exhU6nnCozuTxMML1ybzcVwjaE93RIezA3YHhv7VrCRFpWGDFzTzMRDA1aeAXNq6mUkOFu2304SzccS6voY/XkdiNFBgCVnHQKzFu7rj3V8PKR/wWE6tVPI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713085763; c=relaxed/simple;
	bh=hg/puQIPqJq2fyvx/a8kW3VNd+IeBDwzQNczddWyBlw=;
	h=To:Subject:From:Message-Id:Date; b=NFH/3qZhuHo+/HX1tF9rcYlOWOcITevM/CMyHYPiwlQjn9zjI3uxZ/tCPzvlWwXXDRJ3SppM4IIw1Nq9gYJxB8n2HeKwlWodUOpmIqJkIauXT8F66H1ewuUM4x7JbRk6yovPdJ1z9gJEoexPI9vwaWuMFIG7le9LLYbYoKLzgs4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BA0x1FhC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BA0x1FhC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E0FA0C072AA
	for <ddprobe@lists.linux.dev>; Sun, 14 Apr 2024 09:09:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713085762;
	bh=hg/puQIPqJq2fyvx/a8kW3VNd+IeBDwzQNczddWyBlw=;
	h=To:Subject:From:Date:From;
	b=BA0x1FhC15CuU/VmsDe7B4gtxySJ4X0CTZDaxN9jaDrVR+1qAkL25aLotrPnZ4HY1
	 0zqSQg1swgfCp7ZCQm8KvN0n15ibQWLnv4qS0W3dDGX2Q0R/owxMUzEhVSy/p706YC
	 PeITPjIlriNz6wFRxnv1L/lDSgLpLpU8xCL85nHfZQxnoYD5uFTUlA1xlxvq0BoUVz
	 AV+oueKe968IrcMk/xRP+rrDgroqjLvqrz8XbaZ+GkA7O365TS7pbIUBDNeW7rPJHE
	 qUBMWAzV8dOUPv4zsz4YPXVBXslhglr3Qc9t9ZEikZwibLMbUFnv1BD1W2XsSK2aBA
	 /8bjRhERV19DA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C78B6C4345F
	for <ddprobe@lists.linux.dev>; Sun, 14 Apr 2024 09:09:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171308576279.23787.16013701723419066013.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7797c4c5e41b2f85e7a07a43ba5c4f120fe8e12e63f0fa5101bed10e08d09359
Date: Sun, 14 Apr 2024 09:09:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713085762
