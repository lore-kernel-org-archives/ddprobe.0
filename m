Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 246F932861D
	for <ddprobe@lists.linux.dev>; Fri, 19 Dec 2025 12:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766147034; cv=none; b=rvDWVr+/3+swwe4EKqkoF1dFiy9vMzSDGrymI7tV5Vd1DpaxpWKYf7HV7EoAwB/07Ln5Z4zdOWo3hc8LYwvOB04bJA6ehEbeT+epOJ0uySTkS2Hb79QFVu9Omy6uCl88ZR/i12TaCN/7dPq2nzMqsj9B6pUerXYZUS6UMpImymA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766147034; c=relaxed/simple;
	bh=/qjHhjgjFMc6h/9ZhWh01UK47O1X/YRo5JGnoSiKwfU=;
	h=To:Subject:From:Message-Id:Date; b=FKHSYZ4MN6DNhuhYzPHRqnSzVtgBlvg/OCtHX7SkoAjU5Ymm5z79XuxKsRyF14xEX60+YsAjU1Hm2fTubeuGqNVJDavnfPfw3F2+kvLYxBEnqB6YeQE4t2DveUGS57Kq0VZS9a4pDxVWePFbVY21HEMSpa/PFukGeQSmmiNifGE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ehC13tU4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ehC13tU4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A75E7C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 19 Dec 2025 12:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766147033;
	bh=/qjHhjgjFMc6h/9ZhWh01UK47O1X/YRo5JGnoSiKwfU=;
	h=To:Subject:From:Date:From;
	b=ehC13tU4gStbl6xTQ2I38VTUWG5AWyG7BibbENwTQuZXmq8qxjDRTkdNXE4uhKqFE
	 dz7eU/csESuXcNQlntU+7Qh/kUnDOLYMbiBciS/MjmAZDicVb9iCXwLLkWNrsPPpa9
	 7snRd/zU6h8V1dJNlXDj5oegvPvZ/C6u6Hz3Bcgn4J4xZu3RvRdrNpsqjkViudSvCg
	 +ON31YlYUbUoHQMrlhlDS/206qTJENCESmWzwYcYZ3JHZywhAv/7MJcA0OmKrFJZg4
	 /Un4Zptw+YitghGi5tGF51bzXsgFnKc5vpLty7QPHChqkXSrcjaBtUtvcKPif+7KTs
	 lY/VqdFhq9HQA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96B1ED78763
	for <ddprobe@lists.linux.dev>; Fri, 19 Dec 2025 12:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176614703358.24458.8648016224555901568.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fbd4a0b015db24388a3615460368d05549e599b10e4a75f89f75deaef1c745cd
Date: Fri, 19 Dec 2025 12:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766147033
