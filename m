Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5505713C695
	for <ddprobe@lists.linux.dev>; Sat, 22 Mar 2025 06:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742623794; cv=none; b=L3IT+sQ91rx0QbLWilLNnijJXI+xLwdQ8zbFn5paPVeQOsmV5EhsVGnxxSeA0NojbTarZP59d4DJVldSQcaOXvI3jHB9pttWnH9HEQ9RGoEU5/BM6TYFNDlR+sl3oZ8fAuvXvM7DMvNRCwRVIVdJ9BVzGwU41+PNKX+fdTVtCUU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742623794; c=relaxed/simple;
	bh=BoJKcNIYrbwOFo3/o8r8dmV/zuOkbN7mPawvcoe3y1A=;
	h=To:Subject:From:Message-Id:Date; b=AjXFkEFltNLSjNwZ6H8EPeiKEm1DrHpt9G5OOWKcE/VlKK8TG/h/3v2PS++usFDhJ3zlRTnS4NqqiULOJbbsY4bJG/D9VhxdzeEtcc+moEl1VnMNnIKITMpZ5wenTmVKsZ0XfyKKkmdDaQzem1zfePFHitz+WK/e1JIqWJgVBpk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GkpIHuDF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GkpIHuDF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE6F7C4CEDD
	for <ddprobe@lists.linux.dev>; Sat, 22 Mar 2025 06:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742623793;
	bh=BoJKcNIYrbwOFo3/o8r8dmV/zuOkbN7mPawvcoe3y1A=;
	h=To:Subject:From:Date:From;
	b=GkpIHuDFupQZ+Wv4Tp971HuU/SIjtRTpi4E+dFUbenPwqa6Eiknj6Uml4IHsaKGQW
	 QWkPj1yjguH9FuajviCJO9g9mi7ySUrPjiY3kTEPoMzQhVd/yFpvo5xDhZE0zaWh3u
	 CXNZElusL25VD8p7FkcBM/MMtZvyBzEY0TqIAuOTcw0nIx2VUGoHCkOHkKUx8seuQ5
	 4Ld7WyGSle3/qfD1CZGPrUDP815WS9iT+Zi0qSmdrGdpfDqUjPhRrsF81sSMqEhwQJ
	 NDu/Bx8x0jPC+MECR2t0AG8Hzz1M88VwmfXLsUxq76YP7WFSfce7Yz4oESoY1lXI7l
	 o5NY2ENBi0ttg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A5A2EC35FFC
	for <ddprobe@lists.linux.dev>; Sat, 22 Mar 2025 06:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174262379366.29356.17213310032746091287.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b1a5d62da2c754a169c87e28d4b6fad320cd5f8f8f8f23cbda775dbfdf0c0113
Date: Sat, 22 Mar 2025 06:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742623793
