Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B5032D7DCF
	for <ddprobe@lists.linux.dev>; Tue, 16 Dec 2025 20:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765918434; cv=none; b=BvHFFEwkKIZsP3H7eP3vgL3dnO9tar72jMfmvBDjZW0N/H2TMk0X+J5HinqICmx3TmMkAimVeWQfmbllZZNnf9ZABXlG4cT9GY/uDSbc61jI8T6rXOZ5jj10s7yZg20WKxIJmoScADSVyFjZClCFpQvae8kB3WE5oV8yxf58Pgc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765918434; c=relaxed/simple;
	bh=xCX5pDn9mjN8NxUyqU5MxOzj0ZSNUwZMpF7DYS8ans4=;
	h=To:Subject:From:Message-Id:Date; b=p9eDtNe6w0gA9WF5NJ1vec2esqkuBHiS1wqCHKDLEW/5VGBo1G6AO1UaTRDV0Id9eBulabuEaXzQma7c2jwJCb+XIgDwfgSEpdOXf5WLgzKl4/qk0OgVPqYnWzOuj2WFuoS5qyObQYOU0iaAT2nAC5zPf+cIyx4KMLuRQvYZVL8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Kqt+sXrZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Kqt+sXrZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B12E8C4CEFB
	for <ddprobe@lists.linux.dev>; Tue, 16 Dec 2025 20:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765918433;
	bh=xCX5pDn9mjN8NxUyqU5MxOzj0ZSNUwZMpF7DYS8ans4=;
	h=To:Subject:From:Date:From;
	b=Kqt+sXrZPbVdhEduQD9/7U5kVBl2xAo3eVl3BpQSV9DEgpU64m0E0u64h1cDrudKR
	 gmisb8m+Vx9i9NdpAt+OJpigkyZGKpudxzpJW0dsBbrlPEVo+QIP30r73rtPSb+KLP
	 TTl6hvPd4tJpWH7Z6eTHL25+k/Y2BallqRR4zn9GJ+UCr05KxsJAWun19UwsEoz2ai
	 hfI/JWWyxg7xvMh9IhCGn4Z1YOwuQTZxDaRU6MhqRD9X9AO8qn4G9KnnERNDIzrhzl
	 Zibt0dc9rrD/dOBFznQ7LZAgwHtwrnhMtq+etY3RDbt/mIa+UPPpHV69WQic2yt0Ps
	 OlPHT+23vClcw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A089ED637B3
	for <ddprobe@lists.linux.dev>; Tue, 16 Dec 2025 20:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176591843364.19435.1119124646710125559.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fd598f261e466ccb118f01321c1147305b17d47c8b576771b9cb49c430eb395e
Date: Tue, 16 Dec 2025 20:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765918433
