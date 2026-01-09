Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 159DE199949
	for <ddprobe@lists.linux.dev>; Fri,  9 Jan 2026 01:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767921834; cv=none; b=ALaYpGUrLmCgQoYUE0sFw6bJg7dm+5ve03GqYIVMmskKdF77s1x548T4aDs1B27HeN1LheuYHZxIBTK1EtJ7C0LTWUcbQJhqzmRZbDzA7kguWcyWWHfwHshZJt5DXGgzXgBMmkNq9ZndetxNs7X9Y88IueGbnQTf8ObaB+i6Lr8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767921834; c=relaxed/simple;
	bh=3/YVICJGnCIudiQEQhxi0eiNDcIT/ifNOcOo7lO3xAI=;
	h=To:Subject:From:Message-Id:Date; b=tVRhRg6c6xaR3S0G74VdfXXKceECOlIpP5QIDiGgIR1O70Z7q7Xfs0Qra0DZjqxB7AY/qUCQYv9pyv32bfguPzxUpL1peOkNEICBcmmZjSG7edOEC28OyUpTb5Wuari/qmiX62FXUond0MUpPmIQaNKgCMCZ+Gc/HQrJHBSy1lA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=o3fnTxE4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="o3fnTxE4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A14CDC116C6
	for <ddprobe@lists.linux.dev>; Fri,  9 Jan 2026 01:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767921833;
	bh=3/YVICJGnCIudiQEQhxi0eiNDcIT/ifNOcOo7lO3xAI=;
	h=To:Subject:From:Date:From;
	b=o3fnTxE48tHPaZoLUf31A3RWr8XSLefoYmPl5FEWlKPvlfvWShLK/hXOU7d+Lkv3O
	 YUYrYZwtSN7gnZl+HDOOq+nTRLeMk/px8RZ4MSBJjFGBPCM83K/6MZJ/JxbV5XUd8Y
	 jDS8NKAAxJBO09uLv8yC5Ig2q6BSrTAcJLHlWaUnfhv8nojWvu73m0bDXHihIjAcdh
	 ZHgPr5qPRzDVlUw3A3eLHftlFXflyoO/jbJ4kt+SPuhL3eWBV8Ne+4WW8AidR/9aeg
	 12XK1iBqmZQiXoBFD+Eekk49HPrzwcglU+W9WW7gBQZeks+hmhsrhdEPykqf9bN0pi
	 NWBFloTjgBLPw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F878D232C7
	for <ddprobe@lists.linux.dev>; Fri,  9 Jan 2026 01:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176792183357.22057.7319611820761474817.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ead7fce94e538b5defd8e8c2dcf6fa0812ca51ac8d081c3a60f0bbd1987336f1
Date: Fri, 09 Jan 2026 01:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767921833
