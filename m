Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37D4B70830
	for <ddprobe@lists.linux.dev>; Thu,  1 Jan 2026 06:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767250434; cv=none; b=oeAFLQDwx3QrBALXLTkLDNABvVi1ndg0UgrMarSYAb1TuaWJ77Vyf34j4Dah4O8iB2xKcaenbNlJkXelYdwcvSHqDUaLNWV4oNhz0tYcgoPqZ8OGAHaVRY/bR6pH79kEV8iZ5ntUAb7hGAnDojvBR8pmgJxd//3mqMgCKyJd5C0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767250434; c=relaxed/simple;
	bh=jjhGKvsJN1S17kdKQMlS2OFbKm9LbyqvM8DOxtY1zks=;
	h=To:Subject:From:Message-Id:Date; b=f4wOmp5GucKv7JMkJBzs4snX2o4xFYBOrEUFPtO6G0iFjKBl0LVjkiiG9Y1W7/EDXpjYqBlnAia7+/yw3D5w+M1YR3rpd9Mjyg8m3shEKFFv10vjyJ3qNb0I1nOEPKrv/xq2FLg9S4eEKpvN3WxbDW0zLDLbEr1Q2l+oomxCTSk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=L+LO1o19; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="L+LO1o19"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A527AC16AAE
	for <ddprobe@lists.linux.dev>; Thu,  1 Jan 2026 06:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767250433;
	bh=jjhGKvsJN1S17kdKQMlS2OFbKm9LbyqvM8DOxtY1zks=;
	h=To:Subject:From:Date:From;
	b=L+LO1o19WqYFN3TjL7wT69iK1LJMQhuUWKVcWQsSfR5McrTUsjitcwpflyTfmm7da
	 gwDulU0YHOSVORcZNHgHJUvYV9FoLWFccOwH5tnQvHvTJIgInr485EksgSrUxV6VVK
	 7BvM8Lc8hhhkTQdyfSpVfp2+9hjS48W/9Jjne1JhQBWvy7emtxBrfzgco1rp3LIqSx
	 tR18VSk/g6wozKvdKBClr/y4UZATXjXXIE1Ey2kuPTtHEeV7CjXNcmx471+3OSH0XZ
	 4PPgRuuTRYlWZjru5Nswu073QOzQqg//FGg0SugjisGdWno8SICyiD6ts/875f0vAG
	 whc5i9FWQZKeQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94F61EE57CE
	for <ddprobe@lists.linux.dev>; Thu,  1 Jan 2026 06:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176725043357.29387.14071501763630922583.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a47ccd172709f3d925e952299b6356d18ed13fe5611193b250c4ed6d6ead3f0e
Date: Thu, 01 Jan 2026 06:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767250433
