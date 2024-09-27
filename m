Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 73D7952F74
	for <ddprobe@lists.linux.dev>; Fri, 27 Sep 2024 06:15:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727417754; cv=none; b=VsGpEOCHPJJWs/Cg2ub2cTC4QjPfG5SMiBo8227XbJN1HJRdrUuH9CqQ2/k7I7gysDGSEKgRnaDt27QwiFufEXYL5PSzxHKkP+zNnQY8WCaRnq9f5W7p9zvUF09wFyCsavBnShqiVPfing8VwBuyFObSoxKiOZlsAnT03f8R24U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727417754; c=relaxed/simple;
	bh=L9x58zMR4H7zjlpfIJUWAqS41YZ5ycaJAl6BPFg4G+k=;
	h=To:Subject:From:Message-Id:Date; b=k9b4J5vdDCzoiHn2+KlfLBTE0Q5WidEVUjC9Rs8tokaJpkbw6OZWErVFJ94LdSnMGBtmsn0/PPAs+jShxQPel8v/hbjPe76Ia3moDV/aCget1bb2rzcceYBvG3+1wzy1cffrurckQV3S1TXZYFKy65M264YKImP3LuyNbnxR4EE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lB+0HCk3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lB+0HCk3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF87FC4CEC4
	for <ddprobe@lists.linux.dev>; Fri, 27 Sep 2024 06:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727417753;
	bh=L9x58zMR4H7zjlpfIJUWAqS41YZ5ycaJAl6BPFg4G+k=;
	h=To:Subject:From:Date:From;
	b=lB+0HCk3theZu9tx2fB+/dNYN+OPVzCxh4kMVZgfzGYHHJB33aljRTus30xvF5935
	 1650PK+JBSmIK+veCrgi25CaZduCMLNL9jL7DcPzVXfFZ6d3z0abv+FGX3lVotVz6x
	 u1G2vLSXTnT3d0ycLOslYEHbCLw9Wyx6y1uuJWSUXGzMoVGOoFuaotf53t4TjTPmSJ
	 LrdjjGBAZh82ODOVd0iepKh2htL47bw8aA2ZjIReM+a2R82YnTmhi3t+RveHKiv8qF
	 eLlPZ0OXAOfRqPz7HwBXBbaSLGKKjwRwQEm8d0iYPIT4Iv6L2+GmJUK3d2AKDs+7oO
	 6WVHm7FXsH0yg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E495CEBF79
	for <ddprobe@lists.linux.dev>; Fri, 27 Sep 2024 06:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172741775363.29022.16300451721984176644.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ff01ac12e21dcb09ec7048a10df69f6198b8993cb888b08b7bcadeb110d45dd4
Date: Fri, 27 Sep 2024 06:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727417753
