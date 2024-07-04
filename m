Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42BC841A81
	for <ddprobe@lists.linux.dev>; Thu,  4 Jul 2024 13:45:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720100723; cv=none; b=UPJbLNadFAIqujUYyTOM87TxXvJFgPdSkgkV6Sf/u+Vki0FuiVDKQB4qRXPqNA6FeAbIwDtr1VCeNsIYStOqhptu/hXoakZJnq/z7M1J8xZs8v9XUGAEz0khYpK02+lnYIeArI4JmqZ+yp6SJAeuzpG9kNiiJSvxLL3q/TFoTFY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720100723; c=relaxed/simple;
	bh=rzaZXdo8SRPhyaYdRYNFBKOEvjdBydbOYV275IwdArE=;
	h=To:Subject:From:Message-Id:Date; b=r7RNOjtVK7XUV0E2hfnCQfKocCBRl+qJB/MHh24tl6ceuNu6ruWlas9Mb6oXCiDB9C4A4Yp4owNt+ndAOsiNokhyOjRs9vv5nIbWNlRY54cWGS+78zgHafdH0y3wNqp0v5sWMNZIC+CWKoCmvlL6tFseHBDnSVj+9sc7919ZnGM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=d6oLfjOz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="d6oLfjOz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3E63C4AF07
	for <ddprobe@lists.linux.dev>; Thu,  4 Jul 2024 13:45:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720100722;
	bh=rzaZXdo8SRPhyaYdRYNFBKOEvjdBydbOYV275IwdArE=;
	h=To:Subject:From:Date:From;
	b=d6oLfjOzCJ9b7oROrzxS4WovdgxY0zoZFDAQlc2TCF4H2DSAboyASg34lj6Ckp+TU
	 3LhrSrySOCd8zCy9mVeAKHxncyAVekF0yP6v/P0Ru7ShWaj5K1mkqh4rFEXGNd2iBV
	 9St0GUpx/q39LHAyUFh5ZjuOyxpu6s7cZ7ARoJorN5qK0EggvWqef5qhgac2hhV9CT
	 4SXA0RIoTreExml+bFyv1fS1pPSnI3Hv+7yBKy1TbYVNAH17eQAUKDq94bjFqwBBPv
	 XGDsJVbrI9v/wJz7BBuWTJ0GUkLNrzwHwXAmzcgU7ebiP3kpUg372Bi667Lg+jvIrX
	 6MHZeilnYagHQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2D3FC30653
	for <ddprobe@lists.linux.dev>; Thu,  4 Jul 2024 13:45:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172010072278.15403.9368458864378709682.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2c0511a10f917b0fb2e36007a17f5aa2efec952563e8768e376dbfc491ea5d7e
Date: Thu, 04 Jul 2024 13:45:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720100722
