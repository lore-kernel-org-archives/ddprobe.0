Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49A4312E7F
	for <ddprobe@lists.linux.dev>; Thu, 18 Jul 2024 01:55:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721267723; cv=none; b=MEIzlWA3JWWVGXXQSwOz7//b9y/fPZdbcuC0JNIMLC6IZIxD1iKNLaSEyJShPKqYVDGD9r+G4T4qtMLRXBHOmoU0Ob1cSjXL0FN7qhURQ4t62wsf7xOGFZoSSXJ9iEvBDsAL+QEXxJKJ1FflEc9uEImdRVyO6/fEDdlXklhlbT0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721267723; c=relaxed/simple;
	bh=HcKshTrfeBYwILBzRaVs6dge7BiDCuLhSAzNa7iFZDQ=;
	h=To:Subject:From:Message-Id:Date; b=pk0G0YorzNVbBFcjxHL4ZewkcllSN++MU4yQ5Bf+ajY4oISGoI6LdIDeesJJ/XGwXSNL0lfQ26N1c5fX44tbibgwLnzmgW07oSe8o3MdJoVcaRv0l3UgXFDsO1a8/9SKMSQ9yyntmlHIQ5Xwft5Y9hoScxBqfjktFpArZ6v+vAQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=etGeZroQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="etGeZroQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E5F66C2BD10
	for <ddprobe@lists.linux.dev>; Thu, 18 Jul 2024 01:55:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721267722;
	bh=HcKshTrfeBYwILBzRaVs6dge7BiDCuLhSAzNa7iFZDQ=;
	h=To:Subject:From:Date:From;
	b=etGeZroQxs6CxCcit0dj2D8LY0HaPMbgyrVZx3eh5lt1tnzNykT3B8vtJ/qab9RSu
	 y6M2pyccw00H/OhY6OakEZ1L/qgIY+n2u/ILrO3K00vAH4Y3+rI1I07dm+AUkvmaFa
	 CyBlYnIBe7wrv+xZnE2E8HfQBONPnS3bWMwI80S17FMutHZvb/asEGBtjTOaEogNVw
	 G5+6X3qtgaCGXxzMeBDMiYnGYw09QsCpGwWZ7C1TSLcnP4qGXlW3OF/tHvSYbY+W8Z
	 Zf5fiQ7aqb1hbnFjVGC69Z15+63/HOXaEm3wBVFr1WxFuw/pw44RWPsXKWpseromXk
	 n/6Vu8UfnXzOA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CF515C3DA5D
	for <ddprobe@lists.linux.dev>; Thu, 18 Jul 2024 01:55:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172126772280.20199.15159730380004608414.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a79ef06c703ac512d36c8484e601b1bcede38e987a471157d3faa87d0806236d
Date: Thu, 18 Jul 2024 01:55:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721267722
