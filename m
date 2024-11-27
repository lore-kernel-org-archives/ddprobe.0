Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5574079DC7
	for <ddprobe@lists.linux.dev>; Wed, 27 Nov 2024 05:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732683954; cv=none; b=l7+HkKdJI28LS06qQyGO6pA2m4Haq0kyrhPPexRyHCmmc0EON/0sV6gFy7kra7rGRSUqXQJL+EeAXBXrLSSVNBdudl+DCIp5mScLR0qNoG82nLp22EBBorQnEQNyJz4vQSi8hH/ngCJRzW7d5FatgYmmBVNG2JlSHW71QsLmcY0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732683954; c=relaxed/simple;
	bh=PMGrbPee1jBDk0CBRdCprAt/+EXxjwqqdpWSoxB3P0U=;
	h=To:Subject:From:Message-Id:Date; b=FzudS43sjQGaaJ6JqzhuRPfc1UNnExaOpwAABrHm2jyVTIMEUJuT4ORUmuxmrM6KlMTHwaF60i3maW9yFknikGrVwAk7pBrOQeLquXpPIvkhMyW6d+EREl5h1o7c3BB4SZWpmt4qONpfEb4hp88yctybMIjn9zzPhHMbKJ8d8l0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MzrwN/P3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MzrwN/P3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B722FC4CECC
	for <ddprobe@lists.linux.dev>; Wed, 27 Nov 2024 05:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732683953;
	bh=PMGrbPee1jBDk0CBRdCprAt/+EXxjwqqdpWSoxB3P0U=;
	h=To:Subject:From:Date:From;
	b=MzrwN/P33kCkyAZQkRzmoiEsWBpPmsOszgYyF3mmf1OY5cRbZX7cMfggz/T1ncEkd
	 7WemP27WG0oXwmvYg9i1BjSZA5LwbD0YfQZEn17S3RPE5mrndAc9eeWaaq7kav+r6T
	 n5H2TLFy4jX9ln5iC4NEGeC13oPRXJGIY6G61lHI17LN56paqapvdu/WaQ5XUgRpGo
	 8rJ9epZw5bvvfXw8ZywZnQHbgCxGTTI4eyWAC15UABb9vCTwtJDZz8LPnzFOgEuGAy
	 Sr8J+X9NibI5afwX312eK9hRGb+vH/K/jw70ztMgm2LWLPc8qj20sudUZvoXS1dynB
	 MxLTeYVrdWNwg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C438D65521
	for <ddprobe@lists.linux.dev>; Wed, 27 Nov 2024 05:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173268395362.11749.14206840316322456489.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 318ce914d577897360571d69c98a5b209de7ebe2deae58790d67fccfa125ed25
Date: Wed, 27 Nov 2024 05:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732683953
