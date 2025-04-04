Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FF05136E37
	for <ddprobe@lists.linux.dev>; Fri,  4 Apr 2025 13:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743772794; cv=none; b=tvVT+8wIOz15B8+siJHiwbuefN/bJc0JpyygiV3OYo2kbxTfVL1pXaeKV2xK7/e/52EN4ELIqzgwNPGv/FGaQCbZ6SHK1NEjgh+TQnoAjq97VdvqsINhS+Pz6RPNuX/O2+z4I6p6/VaOT9yk0tqBe0L8/vd+mtj48Y2tWmpNiEM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743772794; c=relaxed/simple;
	bh=MfwaSq0cMU/gxZSruuO7Wv29L82RnGJ0Uyw78BMH0EI=;
	h=To:Subject:From:Message-Id:Date; b=SFxu6yBb3lORdzDQ1K1zF+A2vuTXSeTwKXEg9aRK32vt2mu1i93x/zghW+gvWFqr9XHlpo8cK+HeO7ftxvaoTaSn28tUJlyW7gPJ6caV0MbJfmyr781QpIDcreq0ZGM0qpZq4bxTdf4VdHe9l7ZuI4o3U6JKdkfryvxU32AOIE0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UvGIwC/9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UvGIwC/9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A03D3C4CEDD
	for <ddprobe@lists.linux.dev>; Fri,  4 Apr 2025 13:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743772793;
	bh=MfwaSq0cMU/gxZSruuO7Wv29L82RnGJ0Uyw78BMH0EI=;
	h=To:Subject:From:Date:From;
	b=UvGIwC/9p3qalb+/sSOpmpnzS3HxetHOT7rxA8xZkoxpi5pBomv9t1JBUw8BPCoyU
	 k3ab03Py/GhARTd0xPs72BWtSTvU6lOJaqnoYOsfTTQ6P4/rJP+VZl00M1zaa/61Ia
	 oYnzlngeIP1TVGAQD/RARnPBHvP8uD2+VLFuBBVTb+b80lHJxzau5QGfZ3JmSAoNDB
	 vhkBSkzSrrllScZ1Ygm9PpbA875DOuRnL4inzWMwTWN4Wu8a8cXhaQ1ofn91WI87SY
	 8jmKthDhFh2vy31BpYxJGYbdHB0usNyqswc8WKL+a1w+4x0NHhSyh7Aryuh2MH9QoS
	 VcKiNhPTdmTFg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9116EC36010
	for <ddprobe@lists.linux.dev>; Fri,  4 Apr 2025 13:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174377279358.30981.1526761582608043168.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5df0c4a8ba7dfcf99ae58ad8fac3dd564177c41a4f28e2b665e02bf0565de4de
Date: Fri, 04 Apr 2025 13:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743772793
