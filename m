Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 111F21DE4EF
	for <ddprobe@lists.linux.dev>; Thu,  4 Sep 2025 04:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756960794; cv=none; b=BBSsMMmwzSghLYRIN8z19do+DCqT0hc0vlbJwph+QgYwlxLy71BI2oYXKcCtQJultwkpUeoC5BKWfBr/NWx1vMOTLQd+Ernqdn0i9eh07wZKEZOVNCV4jVOAOYMyWV8Z38m56tJSmDqK1YoCKoKTk/u9XW9C/se4OcIe5CrOqrg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756960794; c=relaxed/simple;
	bh=Q7kVu8yRBd7Yhn//ZCX4jpYZqb+wKBSOvCDeDdUB6wk=;
	h=To:Subject:From:Message-Id:Date; b=sBMZmnmdQaXhqEzeMvLKptu8547lWofe22R8DcX9QQ0bftWdb8ZVn7xcMsrTEC29XM3T24tSNtwkB5g4hPAbr2DMLXX3nrBCbei8eaRpryVvYU56b0Y/OBn9VHDemRUU83i6T4dwOExmu63ydHUjTuS4BU4pM4AvrNEdApEuCeA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BGTfn8QM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BGTfn8QM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0EB7C4CEF0
	for <ddprobe@lists.linux.dev>; Thu,  4 Sep 2025 04:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756960793;
	bh=Q7kVu8yRBd7Yhn//ZCX4jpYZqb+wKBSOvCDeDdUB6wk=;
	h=To:Subject:From:Date:From;
	b=BGTfn8QMSJ1eFp0hP7OWfjTbCzfmWVlR5pfq4uICEKgpYA29GzDZGPHT8O4thvDPP
	 wHcL3K2Yu7r6PkYS+YdTzSKAGDdpbvJHUPu52MfARSDgVg16PxvR6MHFSfu45EoiHV
	 tb7ZqLRgKXcrrxW/mjB+qLzDducsOs5rpvg6FgvPUkCZSfiaXoDFCSZl/2WRkmGADz
	 gBn34lFELCTWwhOrFWlrMqu3lVxA9OJkx52pa/I8sgbog9jl+Vn0KhmbsJVYZ966D7
	 zH+Ot5Lbdb4zTJvrrR/vKeAJqSzkOTcPV+2Wvns+XG4l7cZ4PqlB9ELXLgZCdcwuxL
	 f7E6WZZt0jsBw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EFC6CA1014
	for <ddprobe@lists.linux.dev>; Thu,  4 Sep 2025 04:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175696079357.29760.10933967264552031989.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b2f3751ec2ca998941d2147a4bc5089e1895dc35c9391c11059ffcc067851a21
Date: Thu, 04 Sep 2025 04:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756960793
