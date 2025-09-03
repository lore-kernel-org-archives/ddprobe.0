Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25A5878F58
	for <ddprobe@lists.linux.dev>; Wed,  3 Sep 2025 12:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756904394; cv=none; b=iKmIvfyUqPpnKPrpQHQSNPy7ES8QJ0O+bl28LBJ3sfcPiO29nsrzO/8vGtLqt6KToYgzJ6XmEBVeu+/DOZAxSl9l/isk0wLONlZux/xZreIdau141mJm6EziMMSLxpuSPGk1lrZMNqdB5kBhL11xFF5f0O73gdCvWTts5a/+Hxs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756904394; c=relaxed/simple;
	bh=BFIOLXKT3IxBPyolmKFze0+BWKBieo8Uuj88Sq08U9c=;
	h=To:Subject:From:Message-Id:Date; b=Wbdtm6IDmQgf2lBIZZWvuB+QPk+XbWDpWwSaFAqfc/W+E8275GsEowcB4pP0ZjipxokUvVCUxdjSiSIBBsuu03I5uIw7ClNHLOmSb9x6iN3svbTxkdhN1iaJDVqfmb/wicD4SXv6ZqO/zA7Uy9amfFoXUPe+1tuARQux8Aj6qDY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HPb8PrXb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HPb8PrXb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A11C3C4CEF5
	for <ddprobe@lists.linux.dev>; Wed,  3 Sep 2025 12:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756904393;
	bh=BFIOLXKT3IxBPyolmKFze0+BWKBieo8Uuj88Sq08U9c=;
	h=To:Subject:From:Date:From;
	b=HPb8PrXb2HpL19EZ1EooBZidQBNRTkEW+eoB8mGoCnVinITCA/VrwQN216QAGTP7T
	 cLBuT3U/hlgbit9kobw1akB18GFI9ODrdD+7QBYw0+wPeKJiALSCQJ3tJ1esburgog
	 z7/LMGYYlndlYnE6URFecD5fjrtBP7Q6FMewoYEtF0Fk8f3rDUG7uR5HMKfX4UxGKJ
	 EPF3caM8TcyuWPLDwurVXjJ0UOYdtZboQCCoAOW2Y9KdnVd8hD9EKrycLWYrm1wFwX
	 QMd6qQEIXNhzo7zrXkPjK4Rg1aQf5k44ZByFXqSboXgMBAXWwMNjB5FFtkRiQghP9H
	 qXeGEvBfOzDYg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90B4ACA1009
	for <ddprobe@lists.linux.dev>; Wed,  3 Sep 2025 12:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175690439358.6759.16289798351412142724.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b9191c18aec34fdcd0fc9344249618bb5fdbf1ea1ba38dbf29b2bb2647e3d0b2
Date: Wed, 03 Sep 2025 12:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756904393
