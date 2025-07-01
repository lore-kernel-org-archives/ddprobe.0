Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F3B118C03F
	for <ddprobe@lists.linux.dev>; Tue,  1 Jul 2025 01:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751333994; cv=none; b=nHai9hjKhBYekqsAJ12Ge4ySwI0740A4vWE9ZBd6Vu/iTxTEHnnMwWmHqQJYoqSb8Au2DGlNv/6vU2KqBiGkb6ds4Howog6baWPuGmAYY2cYjvjo05/KfftYpem0nXLNi98eGxvhxv9nZgNvZUnLTxeAlUkJsIiFxOUssm2Fyn0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751333994; c=relaxed/simple;
	bh=95Ocnisfgy3dqECqFQV5IenMtOCuxbdt5wt/kDPb/Oo=;
	h=To:Subject:From:Message-Id:Date; b=GZqqHXN5FtCBYPMh/4+4TI/9S3alzWCzQfL2T7KEV6VR8pd3NYz94IihFGKXvYFLxHizbGWyASsj7B+ZZsimJSQXxP9AScJNKXcldnzLAIeqhVJeayZBMOR+U45+RQ6BERGpIkJSfIYeh77S1DVKS1+8TtYmzyId6fiSaokV6GQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TC+Pjw0N; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TC+Pjw0N"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F3DEC4CEE3
	for <ddprobe@lists.linux.dev>; Tue,  1 Jul 2025 01:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751333993;
	bh=95Ocnisfgy3dqECqFQV5IenMtOCuxbdt5wt/kDPb/Oo=;
	h=To:Subject:From:Date:From;
	b=TC+Pjw0NI7Ol5SSiwKxOS46KFb/93GLZy+v7Jl+rRMglzKScJmzBREWgw9IYtTtV7
	 ZhsdUOiLw4ZI96s1TEcT0JtczKayvLCdV67doSpJ1nBQKam9T0XxmB+4kS7hjExnwJ
	 Zovcv9X7hLmTyZJMlCvZ8ZC5/tH3rJxN04oKIHn9m/crAEYukwXHbSMsGq05mrwuUo
	 05VbJGUc2RR3u24EycTafgPwxFmSZFdVZQdiTS8sF83TTkEdavdjoKbWzP5+uTKNYh
	 8nJpVeXwU5m7djGE/bH4PrMPBBI07tdSoCCVWBobzkaZAjbvikYVveJ5OIpOr/6Nkn
	 rKrdboO7xpcKA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90C85C8302F
	for <ddprobe@lists.linux.dev>; Tue,  1 Jul 2025 01:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175133399358.5243.10913853959625880966.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 282a6ca80f23baa6ccba8ceec93dcfbb88cc423731ddc357aa937aeab5b3614c
Date: Tue, 01 Jul 2025 01:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751333993
