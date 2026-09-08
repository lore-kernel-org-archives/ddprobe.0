Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A38F2E719B
	for <ddprobe@lists.linux.dev>; Tue,  8 Sep 2026 06:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788847234; cv=none; b=BnDGkp5SZ/FQ5hN2hmdO2RCM8SenSBSLBKO284Ejq+3RdlnXICKOO56/uHsRYm5WzWT46V9CNaxeBdt51zyXI/Iy7FCFRbAIWmHjZDb3O5DiI4JyGqvjZE1uMyhNZ9tym1nsioqNKgaU3fme13hYi4L1N3ar6Y46Gswthac0miA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788847234; c=relaxed/simple;
	bh=YQ1jarKICt+OVkKMMlDdmsZEq5JBDrL1rrLyvMScXW0=;
	h=To:Subject:From:Message-Id:Date; b=RQseSqLbZAA3sCHeNQSUq+MQSfBb4dBR6hxqysT6ede/HSuJQ4t0u0x6O4IwEr/iglO7eRXc1wcNf1as1psrrFo0QYBGr0kHxXNGv+WdfT62QfrjrHkBkyotrlgQiPKJT3Q3T1iNmePfwqGiNgfuO/XfkfrYkCmXk0foDt2VMlg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UeM1+AzU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UeM1+AzU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D08AEC2BCB8
	for <ddprobe@lists.linux.dev>; Tue,  8 Sep 2026 06:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788847233;
	bh=YQ1jarKICt+OVkKMMlDdmsZEq5JBDrL1rrLyvMScXW0=;
	h=To:Subject:From:Date:From;
	b=UeM1+AzUQKsGXMbSVabekvdz6hXx7jJPXDseHgRtLDh0IjNh+alj1700HACXWdJf2
	 yx9F40QmpQ0QV8IwGkCbeHddUoYSTlRvvDahxNQBce/LRQrBBU+MVwJ/RAe99Xk6Et
	 dLLASyYz8sFRgClIo2yq3u8XrugY/w5uhOR063GyrR5HAFNyJhRI49YduoYw4AcGmd
	 r0TCgz7KKiAAcAIviHRklbbLmrIEkoGChe02vyvKj/uYlwksZVZuITew9NHELOj5RS
	 JnnLPmkVNiEJsBwRGtapulJJh1fSj8F22UuqD7ryJX+vLS5CzQK60Mfu4ZM3rNqekG
	 9lG9yE/s6oygg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE0C0C79FA0
	for <ddprobe@lists.linux.dev>; Tue,  8 Sep 2026 06:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178884723370.29411.10312918435205956415.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 53ed8bc8173dbc26f5ff0458136246d7f15470c8219572cf370ed4da4f360d36
Date: Tue, 08 Sep 2026 06:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788847233
