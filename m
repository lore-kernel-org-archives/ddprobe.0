Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F66015FA8A
	for <ddprobe@lists.linux.dev>; Thu, 18 Apr 2024 13:09:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713445763; cv=none; b=lTVJsCAOBFgHNgioBiLQrgYdOyYDP1Gq+KCJPUSRouB9ESm1So6B4VQeGfDonCMR1kL6HbCmj4COvrW3lGhdbl+AXqhiz3JdoXgVIRkTgmwPFZ5wUkqGCcr5rYZo/wJYaIa8E6ux+9ks1YUQx5S/0CfrkqlofCMvxNgnbjNVVcY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713445763; c=relaxed/simple;
	bh=GKvazWVbbsY4FfgHZEcuDuHHLCjRqQ1ZfQo3x0ad5xg=;
	h=To:Subject:From:Message-Id:Date; b=aZ4OHsDaTFIbg59Nvt9fXrbTipy7FrE6ns490WF85Tu0Vwc34EK2of2ciNrS4XAQjEBPXUiSNUW4N2coJ8xXULZvwebrWuE3ygB4etyV/pvud1k1BBq2hWLelGpWsSf+fIPxJV+2ycRKiKSpvKJAPerHGI+a7acH01skd05jpnU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QIWaiwfC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QIWaiwfC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DAF56C2BD11
	for <ddprobe@lists.linux.dev>; Thu, 18 Apr 2024 13:09:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713445762;
	bh=GKvazWVbbsY4FfgHZEcuDuHHLCjRqQ1ZfQo3x0ad5xg=;
	h=To:Subject:From:Date:From;
	b=QIWaiwfC87yXZFAFNgiCJ9kbrKYHOR9YEzMjdmSmxxzpW3gTXL50wA28K+wuFkOhR
	 Ki+2O1rvFQPzcvDmP0KchsJHslHdB/DNHH7NAdclSSE8K3aQ2ZFkY8AyjLn4CNtUdd
	 SLddXXD7Cn/P4LTy79b7g+SpDqT81rrgHLMpA5nfCLTSnkda6CZFWTAlNrbVUGcGQx
	 cof3roHzmUnpNoM/u+YkuzR1SP/k2LSP8r1xbZmuftM8V0nYi2a5Uswg2Fck2Ualnv
	 TtG9/lBkuSUSEZqT5C00hobEXuEnp1xC5dzvY7n/gXg4SbyP819RUt5wZD3AdFnvh3
	 ulVgwvgDoEArQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C7E07C04FFF
	for <ddprobe@lists.linux.dev>; Thu, 18 Apr 2024 13:09:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171344576280.18443.7857675814464076637.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1f74a30374c639f433a7f69b88497d780e104cca700ca416b775bad14ae942e4
Date: Thu, 18 Apr 2024 13:09:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713445762
