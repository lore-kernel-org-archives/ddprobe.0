Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E36951B174
	for <ddprobe@lists.linux.dev>; Wed, 14 Oct 2026 13:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791984034; cv=none; b=UlW1jxU7RNsfJ2nEEefU4lIrbaeDXc/KUXk0LtuH8XXUJNw99M2Nn7BNkn+YYF8sYaA7dipAFYq2PaoXKKC/DwmxIIPnW9C+IAf6QS9pow/ysoovhWuCdNkn9EkXLiziDoWcB5/X6NtfKVWs3lUYSV15jYJo7u2E9MhMPZOZgt8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791984034; c=relaxed/simple;
	bh=lQL5Yp4YLrnW8QfUptJZphbbd7ZdHZ7eFFGE/+MJeqM=;
	h=To:Subject:From:Message-Id:Date; b=OY+nqKXjE+XN/Pg7HrYlsCLe1OdewxK8b4Dq3i6oLprenOr5vRq79rmOcQW+sUIdvBJb53uBHFntLiaJI8ETS54zZAlxLj+rfoMvTGjR1/YB7h1c7HAJa9p9Gt//SG1Gn41STlhEsAAnjBxGOP/2L/BoIfMRBHHAOhKpMe3b/KA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ETiQZDUl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ETiQZDUl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DF17CC2BCC7
	for <ddprobe@lists.linux.dev>; Wed, 14 Oct 2026 13:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791984033;
	bh=lQL5Yp4YLrnW8QfUptJZphbbd7ZdHZ7eFFGE/+MJeqM=;
	h=To:Subject:From:Date:From;
	b=ETiQZDUlmVPutBm9xoilVYymsJ1EwMg0hYCzakTNDtcebJy1mE5x8HOme3WzyecqZ
	 14gdmIS2rogdDkcQv0YYB8AWXzE+acg1hdNASx9Twk7wi7MHsIOlfuRc+IKRnWYIQg
	 LpyxE0LJ12TFh17sCJBAM8vKNdUQ17SsRdPL1Sznwz4HhKs1IHsbRcxhFqAanI7Far
	 TzWmiutUmsoSpsjRvf850cMKGM2cWiozm32LHcqOt6mvLgA+hY1Xu+uLjYmRM1iuP+
	 2VN0WuANyDclEXwkCnWZoEG/JoU2WDOvQq2rvbV6D3uhyOkXP5eFlJEqM6F4+m4CHv
	 MB/DWfTpEJszg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B7FA8CC6B1D
	for <ddprobe@lists.linux.dev>; Wed, 14 Oct 2026 13:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179198403374.23026.4832185569885943587.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3dd61aa3ccfb815dfdace2be7178cfc681852f7786429c2707823c8e6b4f4d29
Date: Wed, 14 Oct 2026 13:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791984033
