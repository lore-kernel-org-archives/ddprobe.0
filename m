Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 058473232
	for <ddprobe@lists.linux.dev>; Sun, 20 Oct 2024 09:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729415154; cv=none; b=M5PxqsKBS80rMC1/B3Gs1Y4BUH87YGu3iUpCeo8KG7sBEyXX6oqpsZ1+Wco0rElnS2veJv5mn5Cg1WW3VoCXbTIZo7lwYzKxLkDeqYqhgS2mjvhOBmJqXRD+mA2ui2FCEoNHuvfr7fqP2sxrl1dEbH7B3Pw0sluHGr8+IMhkWM0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729415154; c=relaxed/simple;
	bh=bmac0piWktqCY7jhiXMeoNhhkh/LizyZ/G9oPvZ/HRY=;
	h=To:Subject:From:Message-Id:Date; b=XFDSp9LSYFwkaHxxQj7vBpWiMW9nnHULqM5yW98RdQk7QldZUJdekIpLutKk+BsIiGR6L9QuT7TYw+1WBZ7lLdRrnXryqJAZrDV3Tw3aIGI5CTK1IZf3N8LRrsISeXsYnqRcDSp20wysrY7BTVQ6f5Ya3F3DbheaReUcVSVDSLM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=byQ4o7HS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="byQ4o7HS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3F00C4CEC6
	for <ddprobe@lists.linux.dev>; Sun, 20 Oct 2024 09:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729415153;
	bh=bmac0piWktqCY7jhiXMeoNhhkh/LizyZ/G9oPvZ/HRY=;
	h=To:Subject:From:Date:From;
	b=byQ4o7HSptyV5dOAgBrcWSM7IxoNaMRNixoiJtJQ6XvpHGah1TfjxecnrboTWIepD
	 f1HbeGFSNpeScabQrbnkfet1kcCv7NV7i+41pxLWiBMXvTeDdXuP+WCz2wxzMNCBrO
	 LOp4Oq4rue7+efe5bX3qwsGUmEW4aSDSVKYBV0qVsTmo+Bdx+DUdJeOVupKNPXDX9l
	 jg0gTKHeEdG9MZFCJ03e8LAaKsY7mTRK23X9Wf7xrDJVpqxA2v/0H/PFTW5ojPBTDI
	 3LXePhnY6Ynwgr/o/yscHFYog1wiwLSXI2FfT7ugXXckz8eXzwjPawWEA4cWxAej+3
	 sYRanVFC1Dd3Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9EDC3D3C927
	for <ddprobe@lists.linux.dev>; Sun, 20 Oct 2024 09:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172941515360.2782.11694858140933219989.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fc772d999557f521cd633348f85858827cf90067ec5755ee13288fdaa707d5f4
Date: Sun, 20 Oct 2024 09:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729415153
