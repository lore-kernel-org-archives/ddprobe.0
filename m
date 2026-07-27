Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5578A346E66
	for <ddprobe@lists.linux.dev>; Mon, 27 Jul 2026 07:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785135634; cv=none; b=WiBhKOMgZYgjWfMNuL2AcPGUkZY9Wo1WKmUVPbS0ckUA3vuacxISWtKgbPhA1yqfqGucpfIaJeFM61Dyc7tMjfcQ/bGVj7HODOSrTAKob/hqY9CuBfFkytFJ4dGIhm1BjIlb3iIC8939kT6/fm3uJjpqxqrP78n9NHEObmuYn/A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785135634; c=relaxed/simple;
	bh=LXmBQwnVYbfFE6O9I6H/HUkvgBr0f9kMnZi+GJX8PoQ=;
	h=To:Subject:From:Message-Id:Date; b=a55tNdzGLeK20CtE8uOFAUsSKJdaLZmDxhnKC1lFxzi3OyXsbmOVhlykJ/0rlyJwZnvtTJ6hya7iXwgvOJl4yvRA32zUcaMSW7A30un2Qs2JYsnXISFMOu1Lh3vcfw9TCBF5gZ31p2n/EpHu+QXB9cJVVxFnuNSudvW2bgRUseA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XXhM5qes; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XXhM5qes"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7229C19425
	for <ddprobe@lists.linux.dev>; Mon, 27 Jul 2026 07:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785135633;
	bh=LXmBQwnVYbfFE6O9I6H/HUkvgBr0f9kMnZi+GJX8PoQ=;
	h=To:Subject:From:Date:From;
	b=XXhM5qesx4Qbb3jPmqbaChg+Wj18dfrEl7c8P8pAGUN7cTcw3wQins32HCrc7qgCx
	 HYUNMxl0FYkykL9oSXuYutcq2w4O7MJonUvhh36HReYrWUz1tEMJ95r0FpVv3zVizj
	 clC02R99KgK8v5OXgYGjg5l/Xmk9hmGd81e0y9+XrB5sAeDhBXmFDNHronklpVVZJw
	 Lz7lLjWt6Zc6XXTkIfFG8w4O5fhrdGRuIoDwoZiqs3wj15iIrAwj/Mnbsqda6Ri7F4
	 ly6Q7+o9zQ9HTy9n9/FSlEysdenbg/F8iOw80H98ILLgR3V38DVluL9mnCkfapetXN
	 wOjSnM0HKb8Nw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADD3EC531D0
	for <ddprobe@lists.linux.dev>; Mon, 27 Jul 2026 07:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178513563370.13374.9583755665666364235.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 09301a8ff846532d3e58c29221a8ec620e69b7ba2d94177cd136c0723bccab4c
Date: Mon, 27 Jul 2026 07:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785135633
