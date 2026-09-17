Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 560143A7D81
	for <ddprobe@lists.linux.dev>; Thu, 17 Sep 2026 05:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789623034; cv=none; b=uCWWLgSZt0df69Ow4q1n6aWpaQURUE2RA9w20W/LpyLhhlzAwYJU06wxx6uJYnue/zgScAjD2dbGFNmLEy7WJPilPlWHIbyeL7amdWSUkEYSViymR++pJinc320HA7Yf5Hj7tdBoUEYylWuWi48w8urg6iIk9g4z/YAlGuS8rCM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789623034; c=relaxed/simple;
	bh=rbJI12jcRDtN/0zhQby+wWGqLvofWDgxKS+0uz9q3Zs=;
	h=To:Subject:From:Message-Id:Date; b=Q/ANnqPDNM0FZxTyPpy/moGLarsJAGdG56CNSDQYJpuaI0HIzrIvHhD+Xtq7kWhlgxRph8Fp4O8UEv4L38B8zYPpWxuIZSermxpo++DeBXSTb8s7fy/cUtf4NltLwLQwVk8u7VnMvDSwOWMCscmPDJoX0ttTYx1WxabphL+ond0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=r1vhkNM7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="r1vhkNM7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD7CFC2BCB9
	for <ddprobe@lists.linux.dev>; Thu, 17 Sep 2026 05:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789623033;
	bh=rbJI12jcRDtN/0zhQby+wWGqLvofWDgxKS+0uz9q3Zs=;
	h=To:Subject:From:Date:From;
	b=r1vhkNM76WXlGpkqDOoN3g6bJQvqC4JQDLBYt1CbuRMmmZwbIbI6JxWHb8BP06FM0
	 dsfImizJ2xcyKHmyYagMhBLqBWZvQraZnN1vMeAWl3J6NZMPinG2sQUJAYhy6s1ek9
	 vr3fRfPyLhP1YgfkjNPtKu8EY/LeY6mLLhj6SrHLt50wCPX8eF9q+oBBzZYFLfITXn
	 9cxjBDJrRyI/7LfnPAOooS4U1a7As3CQPKcmMGHxmRhoSUXoP397/oBK+bH/1ZogOP
	 2xkcWafsffssjmMX3EUNkyeFmDQVb5UCiYuJQSLxfiWcTOD3W8MIdlzlssFXfBeHIp
	 jU6BPzwty0NoA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF411C982D1
	for <ddprobe@lists.linux.dev>; Thu, 17 Sep 2026 05:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178962303370.14168.6502707331661212312.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ce4c40ade15ede00604bac44eece0545000554d847d6a2cd0289b79e5395b4b4
Date: Thu, 17 Sep 2026 05:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789623033
