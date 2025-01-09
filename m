Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 268DE249E5
	for <ddprobe@lists.linux.dev>; Thu,  9 Jan 2025 16:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736440554; cv=none; b=E3S7C4UlQeMTxTs1xpmlsgLxCkFlK8htPY5rtMeaossnbH9w5orMBJxRFhVGs68+6K7Z1YfkQu6lwiBWa5Nw+g+pVX7+I55BTyUM3DOKQ7rkWX97+qdP9oZT739+VvhqE3BfdwJ2QE5vN+oABVzGDgRpgIFUYy01DCmFHcYklYE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736440554; c=relaxed/simple;
	bh=yH1zFf7JI2I5TA6UAFv1mryNfmKn5i6tkZB8pX1oUZs=;
	h=To:Subject:From:Message-Id:Date; b=avp4Q5At/0FTxLmsLfTIHPKDABRusxJhAWMVvc2KnhYqVcxr7wuH75VMN/hwxGoGV6FBoOs/XgwPmT/oEuHuAUTGUxMDNVJ44Mww4P9bn2Gesazsk38uBRm76jWtT81mKqiBvFIxch+CY9QXpbYvESM8Y24MRMPYORTPTcnl128=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pZHyWVbE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pZHyWVbE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A48E9C4CED2
	for <ddprobe@lists.linux.dev>; Thu,  9 Jan 2025 16:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736440553;
	bh=yH1zFf7JI2I5TA6UAFv1mryNfmKn5i6tkZB8pX1oUZs=;
	h=To:Subject:From:Date:From;
	b=pZHyWVbEVEdV4Lz5iUYRYUWhZ9pRanMx6vNh//bxuPLkfTgQxz8/djmvw1+UrgZwD
	 S+WruCfzPaXCxTugfLpElLLZD3cJ0AoDK1Rt1y4zh5JGCxfvpoA574eTkKFYyZfY5o
	 8DC8Tv/7HXDkfaQFEkCu9N+zUPW3KI9NQ3a8nP2oC+AtwHACs18rvk/5/6CGa0x5Dl
	 KTN93VFoL7cGgMAFKv65vajyywHW2PI7AbTGf4QODOdrYqOxzxoE8ffqd9fxeeuo3x
	 eJjMiRC+M6KzMS3ok6WPw7/56Bkl9HnA39dnqvG87NSRZlzPSdBm2ztvTyg3sskHtI
	 r8YRYVoPZEzZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96056E77197
	for <ddprobe@lists.linux.dev>; Thu,  9 Jan 2025 16:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173644055360.13514.12764609205105050291.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3f41293934a89cb753ae68327bfecb3a50ef5c2f07735e1d4019dbeb83d678c9
Date: Thu, 09 Jan 2025 16:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736440553
