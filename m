Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31F42282ED
	for <ddprobe@lists.linux.dev>; Sun, 30 Mar 2025 03:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743305994; cv=none; b=CYF9n8DUKGsptX9v/0dedfWMBCKemiSi03YMjGm887mR/AQGzDLm7wkNqjwWnJDW4qCkpMjeC5wLrVCdk7zzUnHLuYGF1Ijwcsyrxn4/FVh6x3Qp6XZJsedc8AoejJ7zu/he1/Jr85P1JJvNWtVH5iTbzY/9doM9Ue0KiyCETMA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743305994; c=relaxed/simple;
	bh=eYfQIqjW0DQnJR2ceezTwikWns5QM2UVz336AE/F/5E=;
	h=To:Subject:From:Message-Id:Date; b=F0i2qc3dNn2B0pjtpZxFYPiRh1TmLJHyMzh6BUr7sQlLBuPaMNumrhMaLqKwrzyuT1l2e8LaFS6TKybx/YqOugtvjskVOIuw9/rplvtS8UtnnddYsenO3LY+YVFTozdaWk4qjKMYLnFfKgn/4jCIMTwpHk/TDH2csSwue+2fLWk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UcLCgNFr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UcLCgNFr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB3CCC4CEE9
	for <ddprobe@lists.linux.dev>; Sun, 30 Mar 2025 03:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743305993;
	bh=eYfQIqjW0DQnJR2ceezTwikWns5QM2UVz336AE/F/5E=;
	h=To:Subject:From:Date:From;
	b=UcLCgNFrpxgyKuyw+YHkJ3SH7atxVfOepem7/TFIV1wxsivm7mndoiBT6qS3xxt9r
	 85GdB1DviyOeHxMZXvpiPocGZfB41KF7mhH9Ba0xFNcv2DHDFJWP7FstAfESTXju0a
	 nMRbqOT+Hfli/q+pRTWFdE94JZnwmVGDnKnroI914RdhouMEc8VzEoOg3EwrqcENxR
	 XCMbF6FQh0HDET2V7gr+45q+jS7E+kCZ3L5Oo5ai6kvjr7AHzBUoFQXI1sEDdkT7Og
	 4dX3sTK0qPuNPV25ycNza2RmGQJP1WiVsL1A076+1kYB4IOaAvBYYGRhfViN1QIQZe
	 +Zo2XD0wqyuoA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96444C28B20
	for <ddprobe@lists.linux.dev>; Sun, 30 Mar 2025 03:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174330599358.29292.2360525962358510967.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f67ce5fa87ee0b43b8e8ce335d6f01bcd1bbb9c367cd19059b455f8c1a2bb421
Date: Sun, 30 Mar 2025 03:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743305993
