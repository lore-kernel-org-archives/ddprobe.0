Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 453092DFA58
	for <ddprobe@lists.linux.dev>; Tue, 15 Apr 2025 18:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744741194; cv=none; b=kfquSk7laA8Rosz/bLN/YRZXO2cdOClc50Qhw6T0uPLFXogEXs6jWrsDVZb+wLeoLe5Ohab0+s/9P+EF1UQgxhkREjiMinclAETPHyUWlrwGvOe9sdCcc9qc0pd8LfELiPK2SEWCGux1dNZ4tRkllft0y0KW7o/Kknl9GL1N97Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744741194; c=relaxed/simple;
	bh=a13yMuT3yuXlpxm9koOQNMpfcDmpafqh9zTDtdK8IcE=;
	h=To:Subject:From:Message-Id:Date; b=P7qCCBPb4jJSHJ7RKOF945wiSL+c/yve2ZiMV2XQmTTyh9x+Y3Aajlosqt1z00+PxbrA/Kv97zlSqLWaKXu6QaNF+8STIBmqPwBiBwFuh1J5cK3eS2Y3Kg0ER3B4sXqwdSPaDRLeHWAY6Xx8ZaOfjr3VF9Hh2vOIttHP0xZ/Y0s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Vig7AUEs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Vig7AUEs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B910FC4CEE9
	for <ddprobe@lists.linux.dev>; Tue, 15 Apr 2025 18:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744741193;
	bh=a13yMuT3yuXlpxm9koOQNMpfcDmpafqh9zTDtdK8IcE=;
	h=To:Subject:From:Date:From;
	b=Vig7AUEsjpMYVNQwcx5SYZ9nshEusv0dgbacyDd36nJX7wcIPacYrsAbuMe1K92mk
	 FJwL39YMiyBV/LS/4zr/Nja9OhQNBCzCt/Y+4VlyaPm2/63n48dWhVZnhZpcn/ZY7e
	 ulD8KELrIvzNzA7uhZZ4p4jcu0ZPlwT6cOnUQydOAUvURVhEyGpJ+t1oRAHlz4HLu7
	 iJat8g7DHFcq46Ht8KeBNXeJToUFpS2wdloaAXB1qEXzRVKC6m6dsj+DR7tOfhFyR7
	 5RUT/6mbn2Ye0ltVUdb7CwOdDd8YnHmbLjTdJKGqRF1D2XWSR5xolYj2tDaOZtbbcA
	 SOqCUlUTjex3g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99BFEC369AB
	for <ddprobe@lists.linux.dev>; Tue, 15 Apr 2025 18:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174474119361.7970.10326428341676124784.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2a51b04aa8dc5f1c6a999734bfbb3df67b526ffe53a48753cc58cc5ebba93e44
Date: Tue, 15 Apr 2025 18:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744741193
