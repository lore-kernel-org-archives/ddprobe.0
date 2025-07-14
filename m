Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3788025A341
	for <ddprobe@lists.linux.dev>; Mon, 14 Jul 2025 14:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752505194; cv=none; b=rhTtA9tHvhMmuhaxIuAz3LSEVuQBxQkvzrkjKXp6D4xTTcDrssKRzbVUMcB56HFg7dt216eWPc0SCSfB7X8y0oboZTMUt5mU3oJID8VS4MMySoktc6/HFhXIxoEkXYlQhqQ2SZii22jVtYjXNPQGuz44GIbmwz+C7kYkULqjOwM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752505194; c=relaxed/simple;
	bh=DhG8QRHBB3ZvhmgiLkitD70hx6pk+f5kqm/MQHEC/BY=;
	h=To:Subject:From:Message-Id:Date; b=FTdePsne1iNZ57gdK/PXbpSwuwumV57LTrD27ilwYGCGbqCvVfeRGSQmMSIR0WRJJfZPzaVecX/detFX/j+NvYFKNjmIVPoFtqeiB+9XPwoIl2UMlCFgSoWs//vGCJwnjUQrauMQFCUCaGVnnKGEDLLqo26GLlk8oc+50X3eDoM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PJvr4rkn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PJvr4rkn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2607C4CEED
	for <ddprobe@lists.linux.dev>; Mon, 14 Jul 2025 14:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752505193;
	bh=DhG8QRHBB3ZvhmgiLkitD70hx6pk+f5kqm/MQHEC/BY=;
	h=To:Subject:From:Date:From;
	b=PJvr4rknK+Gx9G7UV0eTy6UVlgpMt+Ek0dl+Bi+3Mf7x3xz6i16GnHqxpnsGIDsAD
	 3+iZrYiFu3P/wloBqAbSWo21O8yM3ZbGgYvANe7ntKdCAJcZ8cHdfe2d9U9g3H+Pbm
	 kzgMpe9yfUw6u+fulodpDhUvymUD4Xh2Czp6aQATun5kwa9RVcreBf5+7bUKL+UlmI
	 BEzyAoyqaZcdMTZPkDPxA85lLp1bVQkcJmVOO8esoDDtkT6wjx/A2x7MToUcwtpjvf
	 dxsjrHw3eF92ET4fF5xLR3hWi+5SF24yd2tMMOCfoe1I4dE3l6hsiiAwBxF28tANXT
	 FzJZN+45mmGeg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9125FC83F1B
	for <ddprobe@lists.linux.dev>; Mon, 14 Jul 2025 14:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175250519358.10663.7095454727344909170.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4ad6ab94325a3c898289a7155558a1a56f53abdc66ab527f6e3ec3193930f71e
Date: Mon, 14 Jul 2025 14:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752505193
