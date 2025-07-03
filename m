Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CE02157A72
	for <ddprobe@lists.linux.dev>; Thu,  3 Jul 2025 06:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751525394; cv=none; b=ERCU5PTGy7mvuhhlAXD8wtMSa9Q9JsKat3f/pjFP1+UklK+KqbHgl0GrmYc1LN4oNBccvv/fQjwb/AFpmejQIdWmBeexUleuh0YfLPkx9KenGNt21Tl0/M7yb2j0yN/0otsc4V0sQ1wU4VpnT8HccXFeDSEz/4NluDVWpDaVFgU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751525394; c=relaxed/simple;
	bh=OmZMP5YigDXfRYkYRLohTU107LhuliSdFXwCGhG5a/0=;
	h=To:Subject:From:Message-Id:Date; b=VywILfrPCZgpLlrff/CyQIZDMmYY+QTWCPncyhUabnhVgr9Hy6XqdQN6NUnPrcnE8usv8lNMaYQfFghauDxnrxb204lS9NWjcW1Dd1iElY3Y0vZE7vhNDaLi5jdj3hc8HUdvoXa9FM/89FkzMN6ji2I7nAfZDaSA/augt6hX740=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=b76LFO4V; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="b76LFO4V"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C7F7C4CEEE
	for <ddprobe@lists.linux.dev>; Thu,  3 Jul 2025 06:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751525393;
	bh=OmZMP5YigDXfRYkYRLohTU107LhuliSdFXwCGhG5a/0=;
	h=To:Subject:From:Date:From;
	b=b76LFO4VFuShTryIttabarlc11k4QUtxRTLowamjtnESD/u8sh85VXaEfisMGYQwC
	 XRc4JUGlsqFzulvt04K/6uDPzHvm7zq8t1WIWD1WkdS8qMMs2J8Gf2yXrevRwj09K3
	 QnuYZ/c8YtXJsc3eSuSbNno2q8xTrhnQ78idmKkz/HJNWf+LxpZD87R3HgNIKWzK7X
	 NM1OBJ2mEikvhYS2jZFQlIkqW2fLpMfrUt2P+nERl3h0DXf1id4X+ZMwo17wy4uTJX
	 ZvLFTbfdQswkqRlJSZT2f3H3FBwPGgwP5mlIH7nYuQBCNPeK8PeN9Rocz7dxeU6CxF
	 +u11N1cGo9Obw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E7A5C77B7C
	for <ddprobe@lists.linux.dev>; Thu,  3 Jul 2025 06:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175152539357.5075.14524919580764505805.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c91b7d26a79437e770e3920134fd55475507e664c137db5ae0717c721b3e90d7
Date: Thu, 03 Jul 2025 06:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751525393
