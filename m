Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B04730DED7
	for <ddprobe@lists.linux.dev>; Thu, 18 Sep 2025 16:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758212394; cv=none; b=YYaOtM7NNjNh2k/qyzZO+xdDiEkhqi0+BKvBW55+g97AZ/QALlFn5DRPtecNSVPHBqwBxUfO/YHTzklI3YpBLeDVUC0t1K++7iDhmTQ1/h1PxlLp2bDq+7/WDEO/x1K23uVafWFsRfLvYJx7HsMxl4p+4R6rGIlTxEfENgRP9Ek=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758212394; c=relaxed/simple;
	bh=CiEDP9Zs9drKecvwMNr5gYLvdtzHoiFLhBg6eKYbguA=;
	h=To:Subject:From:Message-Id:Date; b=N83dMeU/aVJG/bUOO5MBQSnZfX4rlKwwxJzwh8Q60bVI0QZws1zwKKbvTJYN8aAlSi7QI3dmpnK9gwGZjJnjaDyg9/emaYPnHShuYCgBpg+2ITi20OhzcCL3R0b8BDRIOEXw6nx9oqxQY8dGOGCfx/mylojOmohnoYWha3VnFQc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=c9ilcGkC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="c9ilcGkC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A67B4C4CEF0
	for <ddprobe@lists.linux.dev>; Thu, 18 Sep 2025 16:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758212393;
	bh=CiEDP9Zs9drKecvwMNr5gYLvdtzHoiFLhBg6eKYbguA=;
	h=To:Subject:From:Date:From;
	b=c9ilcGkC5MnEP+j4MOqH96dfoAHf9wxsYvttXrK1MefcZjyDi/YsoMYQKBne4cqz9
	 jUNYxKvGOs13ma0Ok4xgJ09jgdwQ8SimTDtfqC+xD0LH6unXQ1GxWMjdfKLdagcfyj
	 WEDhrG4c2mnoz8zB87Jo1ICJHh8sWim31fYpy1eSBILtz6Ltr2MiPX4cx6X//hAOPj
	 uobzlBj/BBCDHEBvwUtuLjvbm3600qnT0doodK+Fop9XKeKhDyO4kRh9MtBY81n2k7
	 PgIf9fIpSSuiU/PZ4z7ECtf5VON7HN3Wh1hnaEVMEJDiJGh0bylKmW1skPtKYVL9LO
	 m2+XgOD1yTl9w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91A3FCAC59A
	for <ddprobe@lists.linux.dev>; Thu, 18 Sep 2025 16:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175821239358.32178.3063696348042035739.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c6b50c91902767b5a0658742bb5178ac39a722d0df18898265b54e9c68af3105
Date: Thu, 18 Sep 2025 16:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758212393
