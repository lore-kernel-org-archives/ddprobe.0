Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A90E1F9F51
	for <ddprobe@lists.linux.dev>; Fri, 21 Feb 2025 07:38:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740123534; cv=none; b=IlwHOV47ux7FSZuPrEuDUwpvR3Yf82dyMxEveXRGI5s3r2um7NO5AELj3wP/K3E8xAiyvMyV66FSStfnvtrjUhV8HL1t67wNWPB7swFJBnb9SfLIGis6Zq+XU00CSmffgDAB4zogZpyQiwqDGMfaexpepJORB/dn+ixNEgLWm8o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740123534; c=relaxed/simple;
	bh=B9HB2mkEnbXpUXgMXSRBrFb4UAyPMoPuZPh32O1hnrY=;
	h=To:Subject:From:Message-Id:Date; b=oj/fNBOEyMUW1T/Kgt0sGIGzlekopFn5xNNvcnGCqLcDYRqhmMgAb11g9Iotg5yHSmMSh6/EuUM7a+/LobpzAZjraj6ouikLba/Mt3+sQ3n38esyX02bm4EhGqm/g3teO1phoZhNuhLy6jtOUMtLCDgXpVlXzNVwnVN/TJcov+4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZhRHXIph; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZhRHXIph"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A230CC4CED6
	for <ddprobe@lists.linux.dev>; Fri, 21 Feb 2025 07:38:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740123533;
	bh=B9HB2mkEnbXpUXgMXSRBrFb4UAyPMoPuZPh32O1hnrY=;
	h=To:Subject:From:Date:From;
	b=ZhRHXIphgBI4M1Ax5VDYlUZqynNF5VCUBGzkTgL31kuBNKPpfCk+1rF+8RUH14G8B
	 zq2EtK+5R067WXLF7sLTeIYgEX3frYhiQ1Hdg2/27krWdtT5x287xdwQPqGaT8bHGL
	 qU3V1mgKxHCMi0S2bIMGLJBeiPxzERY3oGcG3FC9maQzcd3L2fdDkR2JJS2wpt5AuB
	 66ZOPRe3SB4bnIp33DHTJLeLlOVOgaZT3lJ9Sjlg5FWKxjEpk8rTBiZbrPEutBEAxa
	 JQbrEtrCs6mtfWr3NYyj4GBw4ppEjsQbBctpXvKPuhNVV2C3wwycQVHjW+wAdL1EvC
	 F7jUwt48AOk9A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92012C021AA
	for <ddprobe@lists.linux.dev>; Fri, 21 Feb 2025 07:38:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174012353358.17281.16561479174341750603.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e66881bd557a0d47ccee3db1a5937b69f8fc0aeab68242e03f492e8e6e4d80e1
Date: Fri, 21 Feb 2025 07:38:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1740123533
