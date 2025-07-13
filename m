Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31D7225C6EE
	for <ddprobe@lists.linux.dev>; Sun, 13 Jul 2025 08:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752396594; cv=none; b=nazW6iLNk9ra5DMWKwsKIyT/EPB/wcU2CD3Hi/lGY64ydm9up/k0RgQZmch94RZ2rOe90n6ovv/dTd3xtx8xPjXe3fW5Ijv6tAgMr8rrKntop6/zhKVcu7upLZQQVnX6VDGer9MPwv242XBOMmWkp/H2Psvqtjvs3lsOQfVn11A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752396594; c=relaxed/simple;
	bh=FHvw4t5B4DW6LoU4ZtPhjTV1BJcU+N1kOg/SnzFq4Nw=;
	h=To:Subject:From:Message-Id:Date; b=hoIMVzUxB9kSnpHgvvLA6rem3/pIn0AngZSKVccMtQ+IX6fnIjLkoEYsbraURLvLr27j4OLx4xPPKmjGoWryzLWO7vbsRpwVw91NmnHQHy30eiZs6IvJ7cyL2e1nwbOrwDQwMSfPBbIQf6NXzIuRT59FzAiZryFKDnIOu+GzpEQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bd5L729g; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bd5L729g"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE2F8C4CEE3
	for <ddprobe@lists.linux.dev>; Sun, 13 Jul 2025 08:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752396593;
	bh=FHvw4t5B4DW6LoU4ZtPhjTV1BJcU+N1kOg/SnzFq4Nw=;
	h=To:Subject:From:Date:From;
	b=bd5L729gNvSNGllGov3G6KtoM1MgMa+UI5M0C75BC/UCQhTpi6NCWz52FheoaUYYj
	 BVZ741mYJAJn2LTk+Z7nWAnMeAXo5XfjDm8LP6A1lb/ke6bDnnbHV5XKR1ZLewpnOy
	 7TKB75IvQpxY8geRPxJua7cj3miKOQWtRoI/lUUGIa7vkKjYeh6CBvyJkiFsoVo741
	 f1RsKJr1FDjQ31/LUpaRS4ivjLI3VN3U4HeuGxlfvP8HQC/+6sMqlrDHwKn2ufX72i
	 asbc+txMf1kkqh+KILuN/b6pFDqDDIIg+xiknRDm/Kwjhfn34RWSHIj2+0bOl49zFu
	 kwZXu5vy0D2Jg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99F91C83F1D
	for <ddprobe@lists.linux.dev>; Sun, 13 Jul 2025 08:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175239659362.8931.3217385136015049281.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ed8a2f42b43b9f0dc23571ea28ee1a240f8e29dfd698cdf4aadca913599bc9ac
Date: Sun, 13 Jul 2025 08:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752396593
