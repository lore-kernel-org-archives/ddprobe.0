Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 398FC27E1CB
	for <ddprobe@lists.linux.dev>; Fri, 11 Apr 2025 06:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744351794; cv=none; b=qmpF3Om4PlhRPCPh+O0CQHXKxX+/eH2/qwYeX7ad1StG3xuVN1fFmwUmqEic4z4W7E2KsWhWO8ZZqhw1S/pYdyQiulj9d70eTZg+Owmc841+t08SkpNRemWCdKlorVHQUH2g7hv51bkq7C3kva51MZzGXNQMIuROxHH9Bdi5A7g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744351794; c=relaxed/simple;
	bh=3ghRbziNynC+2qwpkSpvTY7wrvR1mA7j7FhlDd273Xs=;
	h=To:Subject:From:Message-Id:Date; b=f2IMjwJ2+9QEaSnHwE78tyt9yGfqu5KlsUtzZHAR9Kmxmm0kifdbd7Z9FGV0opPOy9B3/c1VS9Qkig8pIxtIYI+/ckZJEKGhG/qkmPM5x40lI6essYNSauqgqU+UXZJjSZJWh9uT2Rjy5D5fvpYZO9gSNF1yLN17SZ9uCXvWXpw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UWBTC7cp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UWBTC7cp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B286EC4CEE5
	for <ddprobe@lists.linux.dev>; Fri, 11 Apr 2025 06:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744351793;
	bh=3ghRbziNynC+2qwpkSpvTY7wrvR1mA7j7FhlDd273Xs=;
	h=To:Subject:From:Date:From;
	b=UWBTC7cpfLvUFAzHHIA0upjv7c982iryErsUq8YfaXxU7J/BgOmmtEN2g+074ERmX
	 bZQIicnATzGvDJpI40mBGfnpPcO6KdKFKE/QGCFZc59vvY21VvQck3OyPTDxEfJeqv
	 KtdMtcshshATBxOzdbKTGQ7AjrobhMITTss0G7m+srMBwStAIg8wjj1eLZz7QbUoDR
	 3xBlcrCUUww4VJeDDvxyxBaZPaTZjf/Cjg5tjdOTYF+gGPQetcocLFW3c5SVucc6x3
	 QvjhnPl2mfkvt4fEJ/lm5w+Oq2B0s6KJ8iRVSgIQML0PARsSrKA6s9v/uBiBupYbaH
	 J4uTD+SydXM+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 967E2C36010
	for <ddprobe@lists.linux.dev>; Fri, 11 Apr 2025 06:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174435179360.26143.2848250068104020035.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 96a2eeaee3819e626064921fa43085d4559e6f075433e939a1acf39a8b6e5fb3
Date: Fri, 11 Apr 2025 06:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744351793
