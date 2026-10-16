Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25F7D264612
	for <ddprobe@lists.linux.dev>; Fri, 16 Oct 2026 00:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792110034; cv=none; b=DQPOn9WFZlMxb52r7pj8YLMNatBbmDl78ejjY5wtKAjnFy0SDcStTj5bJPRRshfQAXVDjoERvmbBjvJxVTNc5KP0AO9GFICiBSwPJBZSQU06toxiPOl8i2Exz3n5QQHT6NZZRIEOyltgpYrhbsMZmBht3D3BONoBiA8l1nl3YX4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792110034; c=relaxed/simple;
	bh=wLUmhTunHlRExeoLulfyZIG0ZEQkLYLrpQTo0fp7AII=;
	h=To:Subject:From:Message-Id:Date; b=ROP9g7fuAi6L0/14zspYqeX5ZH8C+fszRonziur+jBjVPOEpO8HfnEtxU9helhLvEw7tU9fp2iZX2eveFKX5ubq+KUy2cK0XeoPFp4z9mE3dnn0yAStBwppc/TzlBEDegd6V6PEsI9fm9IVXlpFb7bFt++i4jFvMuZ2iHy8xORk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qKQYqVUE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qKQYqVUE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2DACC2BCC7
	for <ddprobe@lists.linux.dev>; Fri, 16 Oct 2026 00:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792110033;
	bh=wLUmhTunHlRExeoLulfyZIG0ZEQkLYLrpQTo0fp7AII=;
	h=To:Subject:From:Date:From;
	b=qKQYqVUEAEz8QDZZKnkiJabhfE4lzpi98CVpJZccywjve2NBhin+mNRsyRhoOtS0X
	 MVUQINePIY26QOinwc+YTfK1i9H0HTIsLmn6qDPuMpD2JfG11YbMdEm4VddbX7fCqX
	 IARc/6tMAda8PCM1fyoWLwesONLBGIACEjKIFf4pTrmC9ik1xWYh1iqA4wxhGEcBH3
	 Q3kHjOTPUeAGupyboF0ahmLKV3HBlYlr1bzPwQUipEvVH+MhGUz9zv842NchVPt8fG
	 BZAp4HyD+/taDVwZ3NskU8cfQFF7UYB6aRpz0+s3IBOTuvNDalxQ/xcGuQJvvkkMPo
	 lWP97o6R3Ti3g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1358CCA462
	for <ddprobe@lists.linux.dev>; Fri, 16 Oct 2026 00:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179211003369.5204.2252400645956679119.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7311828c3234bd513a0a91b88f62af047fdd80c1e60572180cea6e7b2b18a1e5
Date: Fri, 16 Oct 2026 00:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792110033
