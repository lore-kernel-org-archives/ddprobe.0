Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C2F3195
	for <ddprobe@lists.linux.dev>; Sat, 23 Nov 2024 13:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732368954; cv=none; b=PHy2X6d+ZLYjnJzTUzieUQ3YtkeuF8G9O3mhOSnsJO6C/8LJYTTGi5zLX2OlzItJyl5it40mVlrTzxkLB4/lEhjvYcJqgadCafHtTzIiYbcdz1T3fNFROTjwomeH+DH4ffo00TXqlxz2w20LwkHgeg5oixYM+YTSwU421ERiRNI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732368954; c=relaxed/simple;
	bh=Xi+OQvW2PlPp4wE7bT5lMbK4q+GrekUltmfVWsTyD/s=;
	h=To:Subject:From:Message-Id:Date; b=XqvLmjrF/SIrjnyazT/6YualTttIrNWQft9ysEhmaIAd/K11WFIYOhaFJ/hrT7aa3Eyix6945PNl5AWK7uIMkdDvW07hXFDEnKUaqD2E72e2AUcclG7+F7djwnm4H7tPXexC1ZwNZ4tOuD7tiMNRwKcyuk2EZM8pn2M7WZlK2jg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BYiKohfY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BYiKohfY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A95F2C4CECD
	for <ddprobe@lists.linux.dev>; Sat, 23 Nov 2024 13:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732368953;
	bh=Xi+OQvW2PlPp4wE7bT5lMbK4q+GrekUltmfVWsTyD/s=;
	h=To:Subject:From:Date:From;
	b=BYiKohfYZ4BcJ76CKxpQG+HLuE3P7/DippIH9CoDvsXkPJVopd6/fILg2acNIq5Im
	 KTLMCHlmCekxNYL8Nr+eCgbFgKSTjhnIdALLGqCDrJ6ug3rZOHJjQmRioPu2Hqns8l
	 tccGHIdnybXbU30M7+yjYzLdaX/zmz3paqIozF3VSnc+i5M7YjAPQm4XW15ZxPT34Y
	 Y2QQlVaspdfvyMEPBsW3B8JUHvXjhv2ej3V6UprnKMHFQmetwqI1afKyPCWlgI23PP
	 KwkG3nhlwTsgDPkqzqFjRZyED74Sf+yLHuEcDLoSQ0iwV3WntWObClbp+MvmGYE8KL
	 ezI52an+YIRLQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A0B8D1BDC2
	for <ddprobe@lists.linux.dev>; Sat, 23 Nov 2024 13:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173236895359.7102.2746056234714712797.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0e263dc3438b279d04fe403cb066ef117c009c19492e453135c2a9bc2095bdbd
Date: Sat, 23 Nov 2024 13:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732368953
