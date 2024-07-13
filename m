Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 569C31B7F7
	for <ddprobe@lists.linux.dev>; Sat, 13 Jul 2024 19:50:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720900223; cv=none; b=rP11GSkih5Iy4gzjuaO7tAO1lIqwoMKKvqvHjbUfudSyQ/R8OgYXv4oKZKHWVVPgR6aIpR0UoZL2kiugZBf0mRxTEW05TzLnAaunTbAVwcKXvePvtmYmtP85ymyuj17U80Z1kMkmq0ZZrHoeDZsw/AQQYfP4qnMis6TMon1bn6s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720900223; c=relaxed/simple;
	bh=YkJ2zBx3kBRE2NlS1NhhTdsRu3R9IFFa7Y0mClJkq58=;
	h=To:Subject:From:Message-Id:Date; b=dXWa+KHkNAkZ3y9ixlyyGdSmd1mTNklyjpxCNnJx9IbZTXjs3R2AInkwueZlwLEDeNQJIiQiaB/JzRgnhmMrK2DFJoxItxP4e2AlNtGllNC6CR3Ln6vTcRN/PfRSlY4uo5Lpf4BSQndcDd3Y/CLH1Kie8Nr0EwPGJ415Q8KMoPw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rQjSTCY+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rQjSTCY+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4889C32781
	for <ddprobe@lists.linux.dev>; Sat, 13 Jul 2024 19:50:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720900222;
	bh=YkJ2zBx3kBRE2NlS1NhhTdsRu3R9IFFa7Y0mClJkq58=;
	h=To:Subject:From:Date:From;
	b=rQjSTCY+16M1a+aXLQwjGIV7hhF2KQ1LjeH8kSOeJ6kfW/n8agfh9CfdU1n7mIuIy
	 0wgB9PyqgGd7WZEOjTGh174fY128O5/bsDiiMMSgIF2mULiQ0FJZ/4dWk9cnuTA3f3
	 rnJSTaO/2gZMKBJdKH31iTZBIs1yhORmm75kYJCWXYQpLRE5LqZOb389xd0yLcJ93E
	 wruJa/e5vcuMt1C/wUswK4orcXg+kguHA7XD5g8dFE0d2hem4SXoufyYAG2rH4cHip
	 fXzEDW4y5aBSGaswzpPk35dnuvIRFOtYU4xD/HhNyOSEIH8xCI2etad3Xc8CESmQFH
	 GEYXBRqQ7xjsw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BC425C3DA45
	for <ddprobe@lists.linux.dev>; Sat, 13 Jul 2024 19:50:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172090022276.26318.18116382069945512261.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 460e17bed277a7098ec855479480f21b75272c1169f32a6ff0d27d1811de2bec
Date: Sat, 13 Jul 2024 19:50:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720900222
