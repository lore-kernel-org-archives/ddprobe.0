Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3237A4C85
	for <ddprobe@lists.linux.dev>; Thu, 12 Jun 2025 03:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749699594; cv=none; b=lzilAW/Ki8eabELvdOK3xLOp2PvbV1iH0WoI8X8uEoiG/5Hupi4a1COyUcABNBwG2wTTdJGlLwZ0kb7qs4yK4OvSHvFy20JgbhjpTB+WPdohga0nQPSkfijBxuOfXxz4Y+lAh0xZRXIQorasEY5QrdZAc/W9z9OzC3QRTTrAeTk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749699594; c=relaxed/simple;
	bh=M0ouy5JtavpkDqsNr/ZN/1ri52WAjbzhWlm757daqZk=;
	h=To:Subject:From:Message-Id:Date; b=YHn63RA/9ZstppY7aKBdXS8qpdQ9QeJlm8BfSgpb348pADkTOM0S1hE+m71TSrFXZivONEl3+Xa8cSsLexuzcQKiLKmtybrMCij5pjswi6neI7Nif92ZjFV4inqBT70PKZFSpVsLbnzIjLnxFMEESy7394wnCpZHMnGvMF5GB+E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=D9q6xcnZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="D9q6xcnZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F8EEC4CEEB
	for <ddprobe@lists.linux.dev>; Thu, 12 Jun 2025 03:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749699593;
	bh=M0ouy5JtavpkDqsNr/ZN/1ri52WAjbzhWlm757daqZk=;
	h=To:Subject:From:Date:From;
	b=D9q6xcnZ4z2UnKl2NHqQoC95AMu2Xym+BuBlmtf5/mTjmbOnUix81WK82/+hk7ssN
	 uapmwX+6bJKz26pWiugKHWYzdtFmNTbk8oFTMWrEV0vPc/ETF4adTY0NvLuBYhMumP
	 Z4LguNok5Xxs9ZQSs+GWzeK12MYQ1CrWCs15tWClyEU6v51cHgzejKTRQ1RB5Z+V3G
	 xm4IDLy6idp9oujxXogULe3psBRmXiNQMZXZp61RCkGwwodqIHOYkpYib3G25Sd/5t
	 4v8H3wIKeEKNl65BaxCmFEzpoRpxOESaTjcgB7eobAPA2E9fe85b8O8qmWJla7Jks8
	 /my+7w6ACeL1Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EC79C71135
	for <ddprobe@lists.linux.dev>; Thu, 12 Jun 2025 03:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174969959357.8451.9495330161616868110.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c43e1b193d1353b0d5c3402b6842251775ce5ebb0386c4fe276fdc19b89b7d36
Date: Thu, 12 Jun 2025 03:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749699593
