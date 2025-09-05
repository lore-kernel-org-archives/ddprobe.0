Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30BF4257825
	for <ddprobe@lists.linux.dev>; Fri,  5 Sep 2025 07:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757057994; cv=none; b=HPAKORvzGEEv20x59iKLiUcRCuM2s6J81CK+XfwQfK1e4eVcYrgRo7b4g/BQqUSRxWua6YikYMS2U/JQbFP3CklnGYZnONBaLGNQW4sVF6ix2mnuS1+VJQOdZvSFzASfoAxWIbUTAO16DbXVxca+yLGiODaZ59ZLWfPQSNdh8Wk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757057994; c=relaxed/simple;
	bh=U8oy1iYvJzt++eLc0J55G4ICAl4fDb3XUQ2ZDS0UI5E=;
	h=To:Subject:From:Message-Id:Date; b=bZSF8FQ9fu09ynWpYB+ePf4lvuS1AziDhMccy4+ZNnbXwGul1kCQyUIRm21pEPySgIbqVT67zhyhYKM0SU5IurG2H0Q7Br6pEl1w8Pd4q4OD92SMMrYToHXaG9tvGOGlyOj4+fCd2bJ28lgZcwAmUNyTgz/UnkV84DO8rf7DwkU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tUpVBxhq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tUpVBxhq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9BA4C4CEF1
	for <ddprobe@lists.linux.dev>; Fri,  5 Sep 2025 07:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757057993;
	bh=U8oy1iYvJzt++eLc0J55G4ICAl4fDb3XUQ2ZDS0UI5E=;
	h=To:Subject:From:Date:From;
	b=tUpVBxhqiV9E4XH31d6+MZC2tdQeBkgyIHRYGdGNKwYMPAaR6gxqKkcigzYV1TEzt
	 ZGSos6liOFDaUUG2yOnWt2nmkFbnXM3lFCIrfrfnQOFKms8Q9Oh7+4OIIIuM5U1hNb
	 KCkC244qviJP5Z50KSsMl0xzfHYq7twHdoZdQ6NEXv4/XmQZoQ5kzJnTMrUUL0OVs/
	 dBoXdpy42Sdo55C7QakiXsWrcfAF+k+Mj+Q1D5bbheStBjozMsp1VNeUXnPMVaLayI
	 0Q682POo02rwAHY8Is1PXB0QDVziEX29DZltyNqxv0zdQA5osPKrax2Dj5RaBbCOov
	 FXKDvUbA3HuUg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A6FA6CA1010
	for <ddprobe@lists.linux.dev>; Fri,  5 Sep 2025 07:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175705799367.3757.8910352254342009862.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 34c1368332bcfc8166b336abfd44dc4e59fbd50a3a03e63508219d9700ad50a6
Date: Fri, 05 Sep 2025 07:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757057993
