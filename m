Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4DED624A7E8
	for <ddprobe@lists.linux.dev>; Thu, 16 Jan 2025 07:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737012954; cv=none; b=SpbZ6f0tPJvy4sFRioyDj77SiCh21s4EwFp3BuBGSDUYQWrF95OknAzU3i3xz9RkUjq9O8K76w1f3nW7s0OIxxuD2Vy74RU04Cy9P5inyxMXVcfcw7Wiz4Bs7CpYiNhJXpJQlmqonGlcodvDIgBn1fYSTBWOzph9hq/80JA+VNo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737012954; c=relaxed/simple;
	bh=RRbrjGZOw2/n/k5YkbKHnxJo/GlM5hvpE5+uYY2KHCQ=;
	h=To:Subject:From:Message-Id:Date; b=eqWvEDz4ir35C4Cdyj8nZX5K3hcOgKlFp64+ttDwu0Erdb1OEq2IZuFNENBoIU1pFIzAPNerPkYzP47EM62SeNVkxj46C8NLQPCuTsyfQ/fHkVwyAgdvRH8tkkPs0oSc1bjF9pi1nX2bHYOT0nXp1XBCrEB9VQsHaOR3gbCnvKY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MXQCXrSO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MXQCXrSO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0EBAC4CED6
	for <ddprobe@lists.linux.dev>; Thu, 16 Jan 2025 07:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737012953;
	bh=RRbrjGZOw2/n/k5YkbKHnxJo/GlM5hvpE5+uYY2KHCQ=;
	h=To:Subject:From:Date:From;
	b=MXQCXrSOSN/J7EAK0Lwsu85GMSP+OvG27q0lCmUr1uJE6qYNpfw0vWGG4yvXjbbW1
	 U8Qq5FsOdGm3rccVXE2/aDHjYqBowktnUGtR+e4JHvqRtR8vvqqawI4U+cPO6hz2HX
	 DxgEpQUTh9Gxs8FyE4GWixDLmXJHJru2erM/lcHnaEwb1na3ie/6upEfL+3Yipm7Ro
	 9xUCp64SMpA7stM7fX5136v9y6gd1ag7ipelsAPolw22bj3aB1MKMKykFAQaob1V3g
	 6lf+OFMDcTbtdSTR8po9pPYt78kCPk5hRTAhQoboCdQpSBCysqChHXX3puuVficpcZ
	 MdxyEpIZpEbxg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9CB16E77188
	for <ddprobe@lists.linux.dev>; Thu, 16 Jan 2025 07:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173701295360.26628.16448867965949204880.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d45b90668397a1c3f78cfde26a072d9c6eda60610e8a59063b6d719a32d14ae8
Date: Thu, 16 Jan 2025 07:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737012953
