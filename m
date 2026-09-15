Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 507D83812FB
	for <ddprobe@lists.linux.dev>; Tue, 15 Sep 2026 19:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789501234; cv=none; b=Kcs/YQaGUlkMsZomdPNxsSP9CWVOLoIatTLK8EQ2tn+a0jAfIPOClXv0MCGpg/wocWVcXin1zDgSQsdwjOmMGg6+53m1cUhDx9ouF2M8hnsfLk71sDVsRN9oP8zOYCEUfZN6GPcOKhfnbGGqlEjt6ALxj8prZlTbqnBWpXVGkHg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789501234; c=relaxed/simple;
	bh=jZ049pGbmTBD4iEi1HXIG3Bmy3JrXCuslwNgfR6sz7E=;
	h=To:Subject:From:Message-Id:Date; b=g8SvJ9ozwWdo/PNdFOyjWPQ9k/xhE9G9ousvDjZlsccS8INXy4yEX2MOL9AQgrFFFT0ZYJrA5KXSEEoALmGjlJ9xrK/kzik1wa9Ur6OozqwDyAt9ZwJcS2phKQbEmAWSlgxaz+ckNxCMv2nwToG6/q1l0vzEw98SKE3WOPSfNnA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=F77eLXOB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="F77eLXOB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC411C2BCF5
	for <ddprobe@lists.linux.dev>; Tue, 15 Sep 2026 19:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789501233;
	bh=jZ049pGbmTBD4iEi1HXIG3Bmy3JrXCuslwNgfR6sz7E=;
	h=To:Subject:From:Date:From;
	b=F77eLXOBcBD/NUT2ODOIQJDFd888LhpWCwLMA/X/HACBOX0LsT5C/ERwjxi3pnByR
	 KFnCdINP/B1HEbbceaDPcdWAd1fz0nWXAOk4aDUGSi9kgjSKSxCYbY9rSCknKYuxjo
	 8ji5S+x9yEveEzpiE8nsqf3tosMSIjOeh6a+8lU9aRnLpu84dwfvdHYyTidLyMQ0mL
	 DA1JUWLmgmC9z5wKqJJyLav4xmaHV2+3RgOXSxBj6XDpuipcGFwcXFMVyJLlJoho9a
	 N1/mENe6JP3Qqt93DaDM9Aqjf9goAD1v43aUgGAxlNMUGz+0d0ieOtZ7lr8h/21DO2
	 vvqn4A2gaiPcg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9E5DC88E77
	for <ddprobe@lists.linux.dev>; Tue, 15 Sep 2026 19:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178950123368.29233.11840218410090837159.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4c61daca6924f752244b7f9c42b39d63eddcad5831812e76a5e4441065190319
Date: Tue, 15 Sep 2026 19:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789501233
