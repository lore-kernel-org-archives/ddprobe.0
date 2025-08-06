Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B012270540
	for <ddprobe@lists.linux.dev>; Wed,  6 Aug 2025 09:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754474394; cv=none; b=eNssofZGLuy8rv4H3KBrvjfjQ/yWT+HXtK/yhab73VG21zrcMO7MJ6pYaJEwyDyb7IiTmsC/mevSR7KtmH6a9gd9RHsHTy5l7eIPqQXEG8m3eYosvh7fQSvck6SIyeNG+bEsf0mb/zJAmLRUrW1f6+ZXn0L5lAqGyVL24veabuM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754474394; c=relaxed/simple;
	bh=y+hPd/t5J4efYdTozdBMSu4xKilwSG9aiOSV++2Jpsw=;
	h=To:Subject:From:Message-Id:Date; b=eVZ07Mqo9sp5qkSICco96NGJQDV5kIHvF3bBoU5RcvlbZFFORSP5eCiqa6GLx7X2Bc4bZUf1/KnRgbI69ElS7V2giraLD9FWzmff+oU7QFFniyJ2mFDqJBdD5B4HSpvdOUPUgXNko6fJ4wiZdnxG130yeaZLDSAo1stIxFmHSn8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=galyY2Qv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="galyY2Qv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9BE47C4CEEB
	for <ddprobe@lists.linux.dev>; Wed,  6 Aug 2025 09:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754474393;
	bh=y+hPd/t5J4efYdTozdBMSu4xKilwSG9aiOSV++2Jpsw=;
	h=To:Subject:From:Date:From;
	b=galyY2QvgiXeXOmLK9ZyEydTkzY3ecZOQnCE65MR9YhChe50dtEpBlc4tqYl9JuY0
	 WyfiLI5jes3M3SpRIks6muLi5yOH97w5GP/j3xf7PkbYl4gYnX4RCsSGC3VnFLEYvj
	 5+mFC/l4ODSiih43cpfQRRN3K4nNB0lhnaGsldXzJYaf8JuS6LBmfBMHk0k3BKcpkb
	 w7l9q5tv+io6F7QiM94kSzl4+RGQuT+0V7fvQR/fycZgdCC3NcghJTtsgkOK8MAU/G
	 9SNF8/JL90YFLBHP40EQbO6jeJH6hTeNTZ6QbiKVngWBPrs2511xCyBlkiSoVLZbVa
	 9H1c/8FDw0xrw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F88AC87FD1
	for <ddprobe@lists.linux.dev>; Wed,  6 Aug 2025 09:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175447439358.22348.13593525582419102684.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f7a06a2f4af758261014c681c321267b3258d5bf69ca1d7dbb280655be3da725
Date: Wed, 06 Aug 2025 09:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754474393
