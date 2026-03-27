Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D7D7A3ED136
	for <ddprobe@lists.linux.dev>; Fri, 27 Mar 2026 13:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774619093; cv=none; b=NxcswEpUri4W1+7qGQWVc2Q61N8BNOlLM9CM9+Xb26ktb08m32UFNZP0naLCPdZeKqYSsbvy/7gfBeL4tK/eBgvtE2NINIDbRY/n5W0ClD1kity+83cD3SxcP3U+6VcPDXP3/v9XuQlOealXP5cC0v5iwoazJNTlzFvCw9ke9NY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774619093; c=relaxed/simple;
	bh=8/DynS0htjg5ZQ8xZiz5Fmni1qrTeKF2hBennij2apU=;
	h=To:Subject:From:Message-Id:Date; b=DA8rJizXV1cMTjA01QTsBEVEXZTadKlkmMOKAWyia5CUzObZoQEpTcqqmWFKk9Zv31rdng/Vkxxd5dc1Ofbbhmw8FmDxFBUEEzwnQq6nrdfpXf/R9khXvSzrvrPZ+TQfgacgo0sTQcmzOh20y4+xvMee5uVXfJHFsxZpf0jKJBw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pQDaKcvM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pQDaKcvM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8399C19423
	for <ddprobe@lists.linux.dev>; Fri, 27 Mar 2026 13:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774619093;
	bh=8/DynS0htjg5ZQ8xZiz5Fmni1qrTeKF2hBennij2apU=;
	h=To:Subject:From:Date:From;
	b=pQDaKcvMQP8eq7dnoGbUvDLJKG6av47DCSYEQFVVzcvsv2UDpzibkUWY+uN8bm/gH
	 U7TivxXjHL0TfU+hOz9UbsRhv5E8BYiHho3dkN+FurK9LY+u0ji2cR02I/0gzghxps
	 xEu7xBcEuy6ySMV7ayqTBUuGIbD+YfoxnYMuA92LfhaJpSBCZGKZjr2/0GbdEvEA13
	 c52IgpEozZyPVAk6wGK38WILONKr1DouK0cF0Bq9uwWguJKa6YOCRI5bIPqpHEeovI
	 by4NP2hZhFWz0M6E9WwHWFYbrEJR5Ytp/opBXt2c6cSiMxfLWGWjorGfut7R6FUlpW
	 NXUTI1q44esgA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A394A10ED661
	for <ddprobe@lists.linux.dev>; Fri, 27 Mar 2026 13:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177461909365.21627.10949963848510405549.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 92773e04cc044005281e523a09ff9945c4a2aa3c173755249233da15699ee216
Date: Fri, 27 Mar 2026 13:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774619093
