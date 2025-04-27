Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47625149C7B
	for <ddprobe@lists.linux.dev>; Sun, 27 Apr 2025 14:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745765394; cv=none; b=pBNDU1/ogwyW/kX+q26bY+0rLA8z6IZ8KPM0tB2iqS0nmYJaHD22cA0WeLBmqLH2YIdXBRjM6/RINkQFktpwN5BYBAUzyQmAaJn5jJVGgGY+NcOVb53HYwb6wQzxpy8p6GA60eCwztryqRVPM3DPN/RqPulxh+2vXrxnkA6E90Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745765394; c=relaxed/simple;
	bh=1YTfE+R/ylPaiAIVHdqdyLxefuWa9MEs8HQUgy7HTRk=;
	h=To:Subject:From:Message-Id:Date; b=aze073t6TMuO14kUswPuvSooczDVfyz0vDf9X1pm0WqpZSqg7ye85P5iO7vB+B+wLZtXIJpCZDyNVL3995swJfoTcaJeOarKSQ7fq8Q1ynO7LPna+JZcVNqFebirU90PgFKZ7AoXvHTcx8i4qLYDi+Hum+0JrBRo3DkoqevBFbs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ErZ9XGVq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ErZ9XGVq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F87DC4CEE3
	for <ddprobe@lists.linux.dev>; Sun, 27 Apr 2025 14:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745765393;
	bh=1YTfE+R/ylPaiAIVHdqdyLxefuWa9MEs8HQUgy7HTRk=;
	h=To:Subject:From:Date:From;
	b=ErZ9XGVqZjkKBVJ0dTSU9kVIpqimo8Czh3Bl/dlwCpKi4m11UX1gFahxqFG4kSAUt
	 UfRy5IxtlTwi4W+2OdOKiALjpU5de8GJfz8A0tBz7eoOxb/zkYRAf4fhTnN3MJuoZF
	 0X/ZDQScb+KvoyNh3cyE5AkiX7fR1lDsU/QxSElDGNgInxHUzQqlA0mUpA8POQm/fm
	 0PNV9k5l4B+xqV6hxr5rmkCyHBL+no8WxI55RtvjH2IAR1afvgQGcgZm8i+/tLD+yJ
	 KeUjSEw0XPe5LeSZSxlugHy8MvPPGIA80xBjV5v0E5K2/UNTB87SWrHz+7HYcznG+A
	 cM2Q4+25Pxi/Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EB5BC369D1
	for <ddprobe@lists.linux.dev>; Sun, 27 Apr 2025 14:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174576539357.16143.3757236242416207301.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1b146ddb2af3408a611277e2c3676ff06aeda4ab290689b969b067a8c0019357
Date: Sun, 27 Apr 2025 14:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745765393
