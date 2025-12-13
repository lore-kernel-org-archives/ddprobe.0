Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1578E2505AA
	for <ddprobe@lists.linux.dev>; Sat, 13 Dec 2025 02:22:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765592574; cv=none; b=VLzNs94JyiXvsIqJp5eF8ZyiZFSLp1aBkxY0wdMXnwR1Uaz1WXCautDgHyat1l66RqOY2U4edDwmvRBKEhpStF02YK+DO/7mw6xR5tZYpuTumi/WlXqevNXKJnkdkMorff8K9IziB1VF9xYiUO0daA8fgmDwp3QTboZsKSRoVYQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765592574; c=relaxed/simple;
	bh=Rk1Paaq8phOB4rq1S/FXnDxQfTIABhGaE57W/TNB88A=;
	h=To:Subject:From:Message-Id:Date; b=YT92BgHDFZwf+ME/1RMKufl4q1FMHTzLHBNfICZ6PNHPwQk8pvHHw8oz++aEQ0NqZwgQwcJIWF6vSffWr37tcZ36iRSyX0LbQCoCh1L6VvXu1IZfmSw6F8NeWESfWhGM7JoBlZx19NSjpS04ybUaoduAjgQoO8a0p6nLHhV5G00=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LhmIRiWB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LhmIRiWB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3883C4CEF5
	for <ddprobe@lists.linux.dev>; Sat, 13 Dec 2025 02:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765592573;
	bh=Rk1Paaq8phOB4rq1S/FXnDxQfTIABhGaE57W/TNB88A=;
	h=To:Subject:From:Date:From;
	b=LhmIRiWBFXv4jcSgLi8o2z5kAN/+I7Tppa0znErWgc2fJNMqE28Yr7gIeJ8i1Agkh
	 cKiHXpC7A534DyqHLHufJXXElzkN+qd1cWE0fmgoXpTER2JU5w/zhbaF0nkMBsKuX/
	 Y70xXxs0gzxsbKVBlplrdOfHdrDQM+Jbmh+1cRYIj8v8QYPVSfp2p4TyUumr1QOQhH
	 3FFpU0PPBO9xZ3hq8rnB7ItYc9y64fN+68zIns+9fFHJ5S2A0u51BzLKrkrIWPAW9L
	 DpCJ6a12u6WkN1aV4dMRWZPJti0yZry+ZS+qfxNElW+bqrfwG3P0LqHUh/ZQZu1eiW
	 n6iqCrW4p177w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93200D59F60
	for <ddprobe@lists.linux.dev>; Sat, 13 Dec 2025 02:22:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176559257358.17891.5435237326137820997.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 30f06519e62fe98d3d3e3647c06000ef428922849947b9267a52cd15f02e900f
Date: Sat, 13 Dec 2025 02:22:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765592573
