Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 381D4169AD2
	for <ddprobe@lists.linux.dev>; Fri, 12 Dec 2025 19:22:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765567374; cv=none; b=PIvbi9clzxnI1ptuytz/zchoEnOUiJ2mFSYOZ/93h1gCS4kPLS+wIegRHUkB1U9NYO/BSWQPyOX9XAF6KzExwXFxoiNyDyeX8kWVf+LOSOXSC2L9DD5rf7XQZDxWJWkyByUm0dO1LEyMecsVekGn3ZQDhp+iiWxY5KP72drqmoM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765567374; c=relaxed/simple;
	bh=UYDOSKhc+RzPrzCwO2srB+YPoUFKMAbXzYWWAnRwANY=;
	h=To:Subject:From:Message-Id:Date; b=stS5YtFbb0WyomVh03f3qcWYsWMUkE5mlDE4HREO9nENSUTl6+mGy9u4FUSVzbNU0tHm+WXK0HwL3rvf1+qLCumlSYnHvyvsi3M+NBzz3gHMJ+M1U1INrCr95rtQR8zRIHDyiXOp5pF015mas7aMRlWXMM9W5YwmNDE8J7Aohf4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=D+sCrkHR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="D+sCrkHR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4B7BC4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 12 Dec 2025 19:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765567373;
	bh=UYDOSKhc+RzPrzCwO2srB+YPoUFKMAbXzYWWAnRwANY=;
	h=To:Subject:From:Date:From;
	b=D+sCrkHR2yRQJOY8Rc1PfCfPOsbe3zlUcIzbKpyfdS9YRVt7Gf1yzSssjgaSn2hYC
	 k4v2M00JIkNKJLgGqOkF9KU2KWf19Ldi4DKT2ZVH2z9Z1lRaBC1P3czb3YP2aXrhiD
	 EKSYbfsv8MPqOeAl1iRpEUdgPUK+imsT98tZXOCC+gv/HQMk2zsp91ZY1zqtqBOBdh
	 5rQ0lQF2UET0NfOfcW2BFuELfW5n6hcQFLrrLRAbDH0WkTQvFNMsP/mfMwNrAEQrLp
	 V+UGNaRN1GMRHs0M0hOzDerfmB4cUNb8dLaRrTmVLzNFK5MR6zkbzAvJfqntN1aJfZ
	 v5OeCDcqHgI/Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92653D59D84
	for <ddprobe@lists.linux.dev>; Fri, 12 Dec 2025 19:22:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176556737359.18454.14824435293544944414.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 40be3217db95cdc7a8e702a36e9da1dc3cb52bf8c5fc30da90bf176fd08bf067
Date: Fri, 12 Dec 2025 19:22:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765567373
