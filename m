Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D482686329
	for <ddprobe@lists.linux.dev>; Sun, 23 Feb 2025 17:28:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740331733; cv=none; b=oAXdFtD/Jg1RSA4kbwXJwY4uU3q2UzlWJ4l7R2W/VgxPPErO8dzle9QRbr4hg+8BvH4Yj+F9WncbhJY8S4vM7pMd4ujDN5fZldapbpnCI5QwAWEX3STa2DtJ9edpKeT5NCUr2JSvWGp8WAyFXoub/LS0qHOLQr70rqAb2SmCvhE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740331733; c=relaxed/simple;
	bh=9VZUjVP2WRhYRek7Bwvh14XcRSNfP1RjoqBsf14vntE=;
	h=To:Subject:From:Message-Id:Date; b=DcipvgElc53mk4CU/FPJknCONwyg+F2uo58HarscQIg77CdDTpTU/YOaRujFA42bYEQVQpPSMEIo/yPmf+ieXFqGWfMwGxDXzOTwLqkgd4ce/iLdecnj4RXO5mv3SD3JiYu9j1YTA3RXu8X/g9Rt5fVHeeb1Xv0vMCTQbrX0OQ4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=n8TasdKA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="n8TasdKA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3E6DC4CEDD
	for <ddprobe@lists.linux.dev>; Sun, 23 Feb 2025 17:28:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740331733;
	bh=9VZUjVP2WRhYRek7Bwvh14XcRSNfP1RjoqBsf14vntE=;
	h=To:Subject:From:Date:From;
	b=n8TasdKAOw9kmdK/XjmjDD6vOv4k+UiybAofGK2KhpCZel1gdyqEoBdnqmM4zptcb
	 iRDom+l0NcbntCP0+aZ0YBQ5/FVA3vqVZoy5dK2o8dawkrUUCQp21ilxjsh0tbGr4a
	 SVTPDh2mdmtJIhJ40VeMgVjUiXb5+Akt/msOw2QFItLF/5ceMa432BeyJ6rSmdxH2O
	 RUbaEFp79KL8eytKuVLtWejG/IrSGfXQdqklEK24fgzIYGcRJigV2l91oGHLT9MnZu
	 H9IdqPyAIGbH/gZW7ukMZDjTrczEcMapbowJF4U3H4cWu6kkR/emoy9jxtGswBGWcn
	 18UsiAhAzrzwg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9ECA5C021B2
	for <ddprobe@lists.linux.dev>; Sun, 23 Feb 2025 17:28:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174033173360.12208.8147802694140178433.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8fa1e49735c27809cb53b8209786155d3f65e19f9b7708d5ea55fcae0bcc3a9f
Date: Sun, 23 Feb 2025 17:28:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1740331733
