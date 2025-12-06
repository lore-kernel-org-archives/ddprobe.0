Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32371178372
	for <ddprobe@lists.linux.dev>; Sat,  6 Dec 2025 08:02:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765008174; cv=none; b=V4Sbg0ukJPss+qIOkBd+blSZ8tyWSnPbES9w7DVoEpc7yQzHVa9nZfPhR6+lBWJp9rNtdaRCR0jE/C3Zb9U8liX0eTnz/Uzen+6rfeFpYsc/V7zQ3ggjPhXg/7MXG2T38IpQQmlRj6igxMKWCsDLEYIS8U/jM39S1tz5WayzdAY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765008174; c=relaxed/simple;
	bh=oFQfqZtjUL8LLsHnwHpkMYAaQDLBlFA7664ijoaXMog=;
	h=To:Subject:From:Message-Id:Date; b=gV2pZllOvyOGnTR4eObGMHUtuvmWgMH7LQoW9SOPELxROleM+DE1VmQZNHisOOXpf9pw1VBvyorrMqiNAQEWb+G1LTL+kksFstbxIKrwP1BdEm1idlZ4Ue7zA0j7X9JZiCSANJmOFaW7EOUUSPqY+QAH4oE97BhOCAfefyrVzA0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WeNmaDEV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WeNmaDEV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9485C4CEF5
	for <ddprobe@lists.linux.dev>; Sat,  6 Dec 2025 08:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765008173;
	bh=oFQfqZtjUL8LLsHnwHpkMYAaQDLBlFA7664ijoaXMog=;
	h=To:Subject:From:Date:From;
	b=WeNmaDEVZiSDYNCc6RZ88jGIpaakxWPPOZmA+sZ/45QKdIACTPd3Oj+ry//7nmo/G
	 fxeW1uHDVaF+HepFf++fwjiMArY3qmkJIZawwSb8nlNblOeb5gLIN4hdZ0fD/VRtqg
	 cUpVeJ+4uly2A6Je+XX6VxBma7ST0Hw2aIZKW16jDdAbILwovTphlPkwY/95G9jfVG
	 pPQ1mFNwomQ/xnRDAmnxr5s4Hu2PNU90xMueRWiSQuEoiCdNWaf374b/ToRjPjiZp9
	 tSqPNkefATn2AEoOSlDv3y+zqr5IZ+7e7FjkCAhcoF77ZVrfv2PN8GjRJHeCyG3kr9
	 bmzKFxr2CbEaA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 972A9D374BD
	for <ddprobe@lists.linux.dev>; Sat,  6 Dec 2025 08:02:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176500817358.20719.11207225194379741344.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 37518b82bbbec6b4d0209e8c9d9e4d885a52c717e0c2118a421774f31243f563
Date: Sat, 06 Dec 2025 08:02:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765008173
