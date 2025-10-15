Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D2DA325496
	for <ddprobe@lists.linux.dev>; Wed, 15 Oct 2025 18:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760554794; cv=none; b=aPCmAfiRM9fL5M5t2aKka+n9cI6pKBRz15qbPuQful41t41V1UfZ7Get6xdiSO77naeJMlO4Tt1w1AeIQGl4REXeOJ3u3uhR8Zy4y8ELPegYZ5CyEUb44wg5ibOCfTLEkTL5FNcrx0xQANgY50hTkUFwspqwfy4GbI3WPsyYB7U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760554794; c=relaxed/simple;
	bh=ltRRrd/J0l7rAkfQqGywGvSbksGDgH9d+9x4lF+rOLw=;
	h=To:Subject:From:Message-Id:Date; b=nN6YH1rYxr24CpKvqQ4yVdfnezVA+duletzcvR59JIsquBqhOPO9aAMfL1aC+FTUvtNwtt2xVr+XVBxzg2gFt/vjZkiPHHPyroGsL6UoG/exx5Iz8xQV3xsYSkBCyaaJ2bEmSJVUOTsGLyE5NJnsGrAk7/jnJ4gLaPRwAqzJ0B4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=g0X1H6Af; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="g0X1H6Af"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DF2CC4CEF8
	for <ddprobe@lists.linux.dev>; Wed, 15 Oct 2025 18:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760554793;
	bh=ltRRrd/J0l7rAkfQqGywGvSbksGDgH9d+9x4lF+rOLw=;
	h=To:Subject:From:Date:From;
	b=g0X1H6AfBzCo4Oiyps1l9WtmLtln6Zz3gEB779JUNbzrSQS4ttKesC5zQOU1QC4tQ
	 4qOpTqQZZk3bjCldWEc96TXf+hMV9Ivfcurd169rY+ZLaWaBNY6uWOZlBcEOssHYUR
	 UACl/V6tbgTAXPo7ncgpj5syi14W50eikY3WwriaeIxfz3PNst1YH7p09CrzvPtACX
	 QKZAvRRdK8J1ETKHv/tNotpxWfuicacvUZhJFkzfxkLUSK1dzBfawAyBgaMYW3acD9
	 lXwMi3BOhv43t/AJ0nFBSRm48cHCZBAMecMSufaTzhwVuEGeKZXoAYqiHxu73+jsbO
	 mrx1CFWMXUD+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FD4DCCD199
	for <ddprobe@lists.linux.dev>; Wed, 15 Oct 2025 18:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176055479358.27794.288009335203175634.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e583cb32cf124462cea4a30321c0cf09786e3102af8c87e096ac9bf297fe3b2a
Date: Wed, 15 Oct 2025 18:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760554793
