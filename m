Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14F0B3148DF
	for <ddprobe@lists.linux.dev>; Fri,  5 Sep 2025 13:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757078994; cv=none; b=aHXSOOOQwqshNeT9xrPGZ6i7tT6d0JLcSKf5I9dw/EvsZSws9aN4JU5kuqyzVTunpNGnM0h00hWlYB3qBC1RZN2oRlJd9fN0HNExerhj3zxNnJhj1XNv/8dHWwP3GntxObJtTBUPVNXwhkVHnR8VByGnxBrhYzEpZ4jZPSvLVJk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757078994; c=relaxed/simple;
	bh=LWq7YF5evZDP7aOENYVZ09Lh5AJNkotUKPdkolapBHk=;
	h=To:Subject:From:Message-Id:Date; b=eV0n3yw8m5LNdxIXcDFx6b5c9KlJNj/wE3OLB/uUvk952874LHiqFS2bYBjRZmjcCuRpKGoBXV0k17Tw60aundSCyx76NCFAR9kS5/V8RwYGiJdNUwGkmTozhb8brg+Em31j4dKCBnCB4p3UgxUtQghc4s6BobBMpXXIzmE0m/g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RzakDPJZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RzakDPJZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6231C4CEF5
	for <ddprobe@lists.linux.dev>; Fri,  5 Sep 2025 13:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757078993;
	bh=LWq7YF5evZDP7aOENYVZ09Lh5AJNkotUKPdkolapBHk=;
	h=To:Subject:From:Date:From;
	b=RzakDPJZu0YtwWbZC0vHjSm1Ey54a+gGThDuCLK25YoKBw7ArUCG8NMqPR1CRtap5
	 ybOZU67jfYQgKPfpSMuQcS/5KPw1dJiogns7QDiYOiQzTmZm3pRQ5PDP2AYGh0LAD8
	 c/awYrlpDJbDBgl/p/kJvXk4UD9+VY5LYmCLdUtmg9rK2YaLDlQTLVmvRt4Jm0qh/P
	 2aoUM8TrQJenRM7kGGzV1h5X/Vt3tGbEPiDlXhuLCLRW95QYc81vbBOYXwBh2Phvcr
	 nvUtd7FOSDk/8hmnnJIbpZgVE/4ytJcgqNZjX/qxs4i3KP1AmrMFgBCDs1TdBdvqGj
	 nBSQ862vxB1oA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 908FFCA1013
	for <ddprobe@lists.linux.dev>; Fri,  5 Sep 2025 13:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175707899358.30757.14728972557253591596.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 958a07fdafbd7e2ce8d514511902a2ed8d8574152ef55b33223a1ecad47cbc35
Date: Fri, 05 Sep 2025 13:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757078993
