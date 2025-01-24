Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 429E1E552
	for <ddprobe@lists.linux.dev>; Fri, 24 Jan 2025 16:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737737154; cv=none; b=pNctpictRPqmIGtj47ujyWkuOkMiEGQrpV3J7PKkT9kW49sUMHUbbmfQSUOjxf4S+gVl7n/rnHynUSR8PowhtCzdgnkhvyuChwul2wknNMHzEBLrb/pIAeN6DDTrWrbKinj++RYKCBESwSPDQ33Rbd/1JKbUpXy3T9wqk8Mm6mw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737737154; c=relaxed/simple;
	bh=gInl6hGtjcuSZyWgXJ+m33pmvsbl8eUCq2xsN6ti/e8=;
	h=To:Subject:From:Message-Id:Date; b=VjofC1zn9V/laH/lqKwNP9v21PDI1+hsu4Pf1U2yPLVf6egfl5D5Im7Nr6aQK8TEXY8tczGFzgk4s/uRJJTIWJHKde0RYgQVz3U/GMT6B4RBD+wVCvZp+MiVcI0432CdJcu1IhmnvDilRgL0sZc30DlAzNBlP10YX07rQvUx0E4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MTC1n8Js; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MTC1n8Js"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAE33C4CEE4
	for <ddprobe@lists.linux.dev>; Fri, 24 Jan 2025 16:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737737153;
	bh=gInl6hGtjcuSZyWgXJ+m33pmvsbl8eUCq2xsN6ti/e8=;
	h=To:Subject:From:Date:From;
	b=MTC1n8JsS+LDjTWjd9VRdmtYqJhVivbdEafopOBNOTNuIQmULR8RDUPgXYRVrxcw0
	 05d7M/IQHWuzZCAGp8r+i/aajr99NiP3HMKxffJ66jS7zZyCvvhKmLtji0DuXN/3Tg
	 XsfkMhXbc/PRTeX5hdUiFdvom31I9RBDUpsVJ11h1cD4jJAxX1BialjQ+1nL17pKLz
	 heQ0P/Skopxj08qO814seElEPShhPsta6gMVrTDuzCoRa2g0XjiZ6P05b/wukDl9KR
	 3zjLwf3ghrtW/Cdr1OErsxzppV/IP0HOzAG/zDaz/Zt4pZ22geot+IJw1oqKLSSJVZ
	 oZFZjWaM6W5JQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9641EC0218C
	for <ddprobe@lists.linux.dev>; Fri, 24 Jan 2025 16:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173773715360.7278.18331912000076238997.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 39bd6828c99992d781904ae4fe3656e6fea1c807ef310c94dae7513832d02541
Date: Fri, 24 Jan 2025 16:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737737153
