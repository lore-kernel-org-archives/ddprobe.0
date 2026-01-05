Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D6641B4223
	for <ddprobe@lists.linux.dev>; Mon,  5 Jan 2026 01:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767575634; cv=none; b=bNGL7vrJ+kA9/XuqURBjuLhPtvs9U7WHIUjKFksY7syfkXACmyM9t1c6jJudIlfE8ktz4+Nm6dHquf0sKIKuEI3teiiU+l5g2+enny5fugEJPjRgQn6FZbq4hBL3zgApcnUMQUnhBMQ4cMDbhKTPi8hMWiyMQ/uek1P3jA2xlms=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767575634; c=relaxed/simple;
	bh=F5MzezXVyJyylfknCUGvS2ukKMqIXKX9Y9TfoHnkS7A=;
	h=To:Subject:From:Message-Id:Date; b=Kpsa0JbrslJ50bjUIhTDZTOeUUQJUXy44yHsSueknXEntrQ0FqXJ0mRAV8J5DuMGyDTLoUGCoIUYtHQfJe711BgXtibgsPlOL0RsURYnKT6SidBKfVFInC06vCuQfELYRB2cOfg0Uu5VVB8NJX58R4bzrl/xlz0GBYD6fJt4cHI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=c79Crb8u; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="c79Crb8u"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4D50C2BC86
	for <ddprobe@lists.linux.dev>; Mon,  5 Jan 2026 01:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767575633;
	bh=F5MzezXVyJyylfknCUGvS2ukKMqIXKX9Y9TfoHnkS7A=;
	h=To:Subject:From:Date:From;
	b=c79Crb8u9ncZybB7bnLYqVw3AbyBTsqkJOwrxI2/zB9UhgzPm1dlJSEhMZRZwE9wD
	 x/8B5GdQNjLi7Gc/sHV29liTJRVHKrxZG4ZRRPYgmLmYZWJJsYi4s8NwsDYA6P82Y9
	 s94xMdWUwTMq6/q2sDWK8IKe1IUR0a1R+Ci5pZKAGvYr7wG2WADE+rm5j5U1Ivgmc1
	 qhmzi4YheLOdEWAqWJB1FhROFIZDSp2HWcghA5GExtQq4tUHjrwLG3n2/IJJN7+7hF
	 yPJSz9e5RckCBdFa0+Yc5+CTYDRPJFap4jxygivukvNzG08D8iEQ9Ls+oTEEKDwqMT
	 +Q2VNCTTqwFUg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92467C2A062
	for <ddprobe@lists.linux.dev>; Mon,  5 Jan 2026 01:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176757563359.8721.11274624314630648852.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bafde6176e933706bbd8cde6c33f44687c0def781e8d88515c997e9945d5d7c0
Date: Mon, 05 Jan 2026 01:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767575633
