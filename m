Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20DA316F0E8
	for <ddprobe@lists.linux.dev>; Tue, 26 Nov 2024 19:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732647954; cv=none; b=n3RPl1sH0Onepr97Gl0Lbzb6IOb5HjGvH4xcyE/DfgNLwocYYn6V2oZz+AjkG52EzE6nu8TAogrBagRGbxSdPkNUe1d+j8S7UtO2fW/7nG6OA2wDZOAAV2DXbuxO5r7QTCXEJaN17gBaqTypsvoy0U5ZqNSXZ2dV9Sllwah66Jc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732647954; c=relaxed/simple;
	bh=AXt4/LjmDKAZuHIIFtNe6TsNMYWOj71PImJXrJho3Vs=;
	h=To:Subject:From:Message-Id:Date; b=pPo4jdI/Q4UXj/blmRRmuaey4LHvRNnGPfEIlMPjZcqvssUxlq+IKwZt/7ITccoC0T42v/GOSzmO72B+zUiWAqlpcG4KxqLVdY5GiJgusnC3ainYG80vGrTLidC4WKmB3hmi8RRubGbSpEPtUNeGPmiP8w8g7KS8MFK+dwfQVf4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=m6e9jFay; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="m6e9jFay"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6043C4CED2
	for <ddprobe@lists.linux.dev>; Tue, 26 Nov 2024 19:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732647953;
	bh=AXt4/LjmDKAZuHIIFtNe6TsNMYWOj71PImJXrJho3Vs=;
	h=To:Subject:From:Date:From;
	b=m6e9jFay2FtdLACrlDjODWFieH5MUy3fGHy6/kEDX9pAU3d0eOtagw6npKFe9GFgf
	 7a8PJ9Jq4XriFqEQNwIuRpK259sVoS2QfG6XK7zn/6n4Sl4BUVwDBiLj4aVED7DXzY
	 8s9IHdNMmjgrA0f1nJkhPH0Utk2KlKGTN0YNf3s4zk6RLVoptNROnbVyw9z5SdXFYA
	 1t7Y4CwWA4Wmzc/nQkpjic/1+IV/rvKn+DxBZuYyi6UarDuEQwRNZpcCVpafpMFfXI
	 YWZ3UAa4bYoK9LVezSZ29Js3bbfn4VSXtS2mKhQm0P6yr++NTsrEicFtIPXblJ3cRn
	 nkDyD10nq7tjQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A27A5D6554E
	for <ddprobe@lists.linux.dev>; Tue, 26 Nov 2024 19:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173264795364.14234.5680148545094116180.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 245b18e90623292e54cb2fe4a0afaff44f8c1fa3c7d424f314bfeddd2bf8f765
Date: Tue, 26 Nov 2024 19:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732647953
