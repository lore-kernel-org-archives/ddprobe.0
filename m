Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 517FC27FB1C
	for <ddprobe@lists.linux.dev>; Mon, 12 Oct 2026 22:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791844234; cv=none; b=YfsqukP14ZZ+C1JRj13R8s0BQBQCJ8IoZ9+x7wbBfhKAiNkMCiSakDVjwYs42ll+zHJ5Wq55nvdByPvINW6N1hw2WkInP7jEo+QUIiuPSTJWhIQj+Oh6ykOgi3PYiJUI9/aQni1Fo2WPL5y7MmseRUwfY7V/9O1X5xp3/96RBW8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791844234; c=relaxed/simple;
	bh=B9ZdkR5AIl++Q4GOoiJztBW5MzRu9mmawwdlNDA2TPg=;
	h=To:Subject:From:Message-Id:Date; b=nyal3p3P3QRGRpv1eMD0uXgUVK7JEJzqE2hVxt5czrePKpQTv55mNHMvFt+fwM3lnGi8g0GwbCf7FlkVdsSvsu2+ZPuiNusRxFwHzw6i33pQgcQ2AUAX3SqHalb4fps8oRy6ZTyzhM9MIMjs+VrJBGtyVJ3VLN7B4IYMdQhocXM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=e+6oztPV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="e+6oztPV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4408C2BCC7
	for <ddprobe@lists.linux.dev>; Mon, 12 Oct 2026 22:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791844233;
	bh=B9ZdkR5AIl++Q4GOoiJztBW5MzRu9mmawwdlNDA2TPg=;
	h=To:Subject:From:Date:From;
	b=e+6oztPVCu0WdEXB10l8JBC5SnwoUSHcR0VhmBrEx0gluFvn/ylq/V75LXJLeeQia
	 spKvwebhYIHq8oE9wA0vi1JXuRSEQpZiujB0y5yhGiftCWXwERfDwCbNsAJ/xu6BkH
	 0Cvw05YJU77NYapSLJVak++Iqrhr+1Z8aqN2STyddvtln6/JtwhoNnIukLYrBONPjO
	 c1WIBiFY4DqBwICt22hJftPnAdPcoAUKxJxQR+o1cHRioHTDD52Qc4uu2I7SciShJU
	 DtidIN0m/nLJZH61PbRJ+X29EMUndZxI+z9lxQShTkHFC1e5a0TjcjXpikYM8DiCuG
	 cQiohYghuCLTg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B03C2CA9EC5
	for <ddprobe@lists.linux.dev>; Mon, 12 Oct 2026 22:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179184423368.32510.1013505127920346130.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7e94d288f0b0649f2e519f1ea9c25d70ef846208279c4744aea86cbe3ed027bf
Date: Mon, 12 Oct 2026 22:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791844233
