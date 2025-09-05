Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D044290F
	for <ddprobe@lists.linux.dev>; Fri,  5 Sep 2025 01:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757035794; cv=none; b=gQi2jmgdYwC0yJS0wCWq58Hc1/yeCYP1TVl0Uzp3+uLhFk0Zlff2j9VXp1a2cZtRDHWAb/J502+X/DiYxbCmICu2T45gOM19Jfh43zfqB/coAO4mIosU+50/h/OFJYYo8k2/3/NysLdKfROhKPCkJMDHaMJt6YWVXmqrGtDwq4g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757035794; c=relaxed/simple;
	bh=maEoE27PXf7tRkSRVlzk3EIc/pCVBcwwSknUPbSkXaQ=;
	h=To:Subject:From:Message-Id:Date; b=T+DrF+q1YfEMQ4jHKUpgRmtgToQznYYGRAk8kM932DtiqSvD6f7+QgVc20A0RHbsTIVJOa1MdjZklb5ra9ru0wwkoLzlV6UrYUWqI2O5H4sWTOuzPpZCI9kxhtI5kDTH9IwTF0cz6TerToENWALX3QRfe5NXQJ76zAxtmc16v9I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GHMeLHEn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GHMeLHEn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1257C4CEF0
	for <ddprobe@lists.linux.dev>; Fri,  5 Sep 2025 01:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757035793;
	bh=maEoE27PXf7tRkSRVlzk3EIc/pCVBcwwSknUPbSkXaQ=;
	h=To:Subject:From:Date:From;
	b=GHMeLHEnMXvLI6gyhamO/QfvmOMfgiqVWBvlIHeQXhtn6rMnzsuVJyYpjiZIMbnxw
	 KWaRyMN5hdcF0gJaibfR/nQCpVHfkP2SN1Om3Iat7q9lLiY91xWZIt+A80n4aICSa9
	 cVy6QXQz7n+sFgpSgBUidfdmrqmrIfsD8nxkMhoP6UuB16OQ4XCIi6v0h3l05zci6f
	 2Fw1Iu+XaYwqq8kBEivtAKUkJgBsM8qrZVOloGfQsZ4k+Gnzumc+UNnXFvx3QVEOoj
	 19fcdEz7n37aggJFb+eFSX1HGm1DSePdD8wzdOq8n++s7Y9gn0qENXMKgIyL3dkJgP
	 NHeV5mEg6qXtg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91B99CA1002
	for <ddprobe@lists.linux.dev>; Fri,  5 Sep 2025 01:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175703579357.10785.6475391742363637596.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a26ac29c10bd23973d3f69daa98e2f839a5c837eb5cb933581340ab7468a6976
Date: Fri, 05 Sep 2025 01:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757035793
