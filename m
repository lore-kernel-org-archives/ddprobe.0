Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E9AF2D9ECA
	for <ddprobe@lists.linux.dev>; Sun, 14 Sep 2025 16:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757867394; cv=none; b=lNEHLPzsKgrqsTe44M9PWqIB+7PmIHPQBfJnQXW33Qs8r2rvV5grT0RlAkzK156IuPFx1SRv+4uxwgE0jFQbWa3v1K+ah68QMk9AOChorsC+PxNgLlwh+iqjqmd+mg+G7CdS3ZzU+DM4D+9w6fT8hTx0Oz9Cm9Bp+lnOzS+4qzo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757867394; c=relaxed/simple;
	bh=568oGUMthbm96lgxdqNVntphPffMxKe5/wfU6zcTn2Q=;
	h=To:Subject:From:Message-Id:Date; b=vBEUAyl7k5fdcVJpAt8c9MPVSbut/KypEGRP3s3tuhvln4Opuss69AgDAkLnuVO3b9ma8KRjKW4oKq8qapjvYCIv5GFo1WgfSUw7DOLeMLWCSI/w1mJkB5jN3Cpf93KdOQOc+ejnnvvELor/nRydvLFMcKrIXdVfZ/YrF4XvzcI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eK0KhtPK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eK0KhtPK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A753DC4CEF1
	for <ddprobe@lists.linux.dev>; Sun, 14 Sep 2025 16:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757867393;
	bh=568oGUMthbm96lgxdqNVntphPffMxKe5/wfU6zcTn2Q=;
	h=To:Subject:From:Date:From;
	b=eK0KhtPKxtRKIfEtgfkCLpq/jmFyYsxKGUXMJzhQPJd2TJUdT9Zlus5+Fb/7A7zpk
	 WYOUtQpO5JjfqnwMeJs3gt04sia77b9T1B1dY6i+dYCnUqROwcFwbAbfahtRlBKLr9
	 wHRDtUVrvT+zKJ8CoskzOBmwh0iEkCqARXfUVOlIryOFxcRGMu8P8V0VdSIa46hnKG
	 cxB2hekV/TrwOQDncHemQi53dFGSD5r/SxJFPLOQ3fmUNm3vGt+0hDrSplqhlf2+aE
	 CrygzeV+hL2Exyawky35cecT/e+JMUa6+IBa++DhbzT1/kAFWnt0qsHEfnzj3VImJj
	 2qzupxa+HTQCQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95907CAC587
	for <ddprobe@lists.linux.dev>; Sun, 14 Sep 2025 16:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175786739359.15593.6308043267030030702.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 34dc91018beddff4df24033eba1372f42726899f9efd8f3dcad9bbf7c29d79d1
Date: Sun, 14 Sep 2025 16:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757867393
