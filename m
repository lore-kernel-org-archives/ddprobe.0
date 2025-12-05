Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B8DF3D3B3
	for <ddprobe@lists.linux.dev>; Fri,  5 Dec 2025 23:12:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764976374; cv=none; b=PjlU+oEodldPj5PgpppqfZjujdzbLJL7B4KA7GlSu+s4+zs5TaOuJQ3axaJLVLvoImHBdYqEn2lqzndeL+Fc9cIUUAhb54zUO8bTUrSsBz7X8bM2Vzl6efQrkzrEiwEYlCVRiQeNmkKaeYTuh5gE51OIMs0EdV6ltojpBqS3teM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764976374; c=relaxed/simple;
	bh=tIpbyp0WU0uRv0xIb48wAaX0lKRMz9B9URIUboeE5d4=;
	h=To:Subject:From:Message-Id:Date; b=BJMAxzY8eF0JQRVZVlJiPdrra+jK2VXL6lTf7zLhRJ1Wg17LIsPTEOnsdPPjdTgy6j4pfFUz8elxXwaINfdaWrrEjpAVcupVkxX2qHOpQl94x5WuJJaTwXbofqR0k8mnyr0MOoX7Dvbn74pdB5fdcHpQC1uaQK0xxzaV90ppXUc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=B/h58mfc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="B/h58mfc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B21CFC4CEF1
	for <ddprobe@lists.linux.dev>; Fri,  5 Dec 2025 23:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764976373;
	bh=tIpbyp0WU0uRv0xIb48wAaX0lKRMz9B9URIUboeE5d4=;
	h=To:Subject:From:Date:From;
	b=B/h58mfcElaEWTdCkB48yvptgdj0pakRcMK3b8O9Jhub8zey1hwdKnDsjYpoTSLw2
	 NpVoDpRyGgkXHoYUKjxjuUMJ/P6835p2QIypNqQJmyucLhWqmJj+06HtdkspIZawLG
	 WfGc6KabW29AquysiWb2QhNxmagt93WMQXV47ydzHg/NqhQRROfLy3zgABz8nB5TN9
	 5EnkLZcV+gV+xteywhW0a5Xt+BtcTXi3Ib18AMIioSVupPlMc635sTSEJ2KgL4lBZc
	 eJJvSeUVxPc8z1CGF6tw7dTA5zyjnLry4CMi5Lxg+D8xdcLINgPUMyj8UhivicTz6V
	 TSKFXrFaKmnsg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BCD5D374B9
	for <ddprobe@lists.linux.dev>; Fri,  5 Dec 2025 23:12:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176497637362.8341.4193591893652548645.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5439485fb1be63bb49afd18725503486e24865663072f0473e9ecbe9e2fe981b
Date: Fri, 05 Dec 2025 23:12:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764976373
