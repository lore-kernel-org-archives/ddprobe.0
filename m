Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 88094426693
	for <ddprobe@lists.linux.dev>; Fri,  4 Sep 2026 09:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788513034; cv=none; b=WiD7asrLfssUUy2JOWXMLeGh3s/wy3VjFWcBvyFOCBJ4o/v/XRtWG8lEBjPx26jXKOpIxnda8PuwB32zcOjyzAs3sGkvbCqcASoHTw++ZYpnroeafxuuZ+Ua3Im2UZ7MisKssDSgBUFLP46huCIzjqueF33PQ4nCcyk895Kt5BI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788513034; c=relaxed/simple;
	bh=gQsD05TOt0+ngDLKARw+d6UKo095cVbt+l5PY13G7d4=;
	h=To:Subject:From:Message-Id:Date; b=atxOTO7C5yy8ciuiQxQG+cw++NPpYu90EPz3lmDdJlDHOUD5ssDBBFSjYaE93EjjVkVqhjyFBx5OhPQbHBxlPGCi43uK97Pa3YIerZDHqfsbpzwqlakuhurWl4gaLWH6ZTeu8bokhN34CWBHzXQ4afbpPkBjHkZm7LM5xtxDyxw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vFO6uyUc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vFO6uyUc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF1A7C2BCC7
	for <ddprobe@lists.linux.dev>; Fri,  4 Sep 2026 09:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788513033;
	bh=gQsD05TOt0+ngDLKARw+d6UKo095cVbt+l5PY13G7d4=;
	h=To:Subject:From:Date:From;
	b=vFO6uyUcDeLJIZNp69eQueTy2x5/RSJqZ//uGAcH0hiDDiLHMB1nrX6bXm6MAGrMa
	 GCXTdicwR2TP2JkDsQXP5vVSQu0eW67nUecegSRkEvQUzBhBeV93/wEvA4Ybf6SC9X
	 eswKfUejJw6pUtxqzLw6D/qm1g9V+M16OZjH0I7zNkbyhGN4wJLNgDKq57RJ2ho5bc
	 gpcRM3doXvkslwmsoFtW86KNIjIogN2q5311u2tntIsQgBsTp+3/tJYWDuop3f4yiJ
	 5gE3ZYQAtzY19YaEVbe+eHjQOUAaAfscecopE7yVJpZbYnSfPLAu6Z/GQXiIvecWQh
	 k/M5oqSkitKyQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC4F4C79F80
	for <ddprobe@lists.linux.dev>; Fri,  4 Sep 2026 09:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178851303369.18068.15655895038856703787.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4ceb84caf8d7c922a6e543fa72566b39478e54f35b46b39eaaec942aedf874d0
Date: Fri, 04 Sep 2026 09:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788513033
