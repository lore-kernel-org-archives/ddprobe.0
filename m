Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A469130499
	for <ddprobe@lists.linux.dev>; Fri,  1 Nov 2024 02:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730426754; cv=none; b=uF/xhOXX9p4RS4qO/vqez1gDrg4YoZZTP7Lu3nk0NiaQ5qnQGadLJ0l7plemudlD6I86DVPtJLP9FaUmbrIvyG69Co8BsTtJRGtAupenuq96evT922d2s5F88j5X5G83sKpO2Epvuc8llEUG7tnrNHkJSL9DjYQNnxi8V8dx5NM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730426754; c=relaxed/simple;
	bh=2HsQHCrU8+3NSA26Et3hfljO8ROJzVNHvOShOXktwVQ=;
	h=To:Subject:From:Message-Id:Date; b=DEOQZsq0iqZAeOJwQQV5R4+aQMZvZWl7xcpfBk1j3yyc9TikpD+YyGc0ley81R3PpBKBI0mSCX7YYQccQsCaBtcchaZY+HvhzflOFJUBME11BhGkgFvwBn+5pAYyKwgzIAft/0dFzuxRhlC2HbHD3U6oH8Ps+K9DAkWHrcLl1z4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XF6KViKy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XF6KViKy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B20E8C4CEC3
	for <ddprobe@lists.linux.dev>; Fri,  1 Nov 2024 02:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730426753;
	bh=2HsQHCrU8+3NSA26Et3hfljO8ROJzVNHvOShOXktwVQ=;
	h=To:Subject:From:Date:From;
	b=XF6KViKy6kY50seEUIXvR8lWD3+Cj5GL5EPIKdAJ/uRD1oCnzxF6bjDXLrHZTB5Jz
	 61ojLTP6L9RHzRSprtswke6T8OPzaeXbM1EpUzsViVxrDiOpE+eCOEsBLIt59YpSya
	 e9RZnKmjvvCavhMfQY20L7Aqz6AMdE0bbVnaSwpMrBprOXQOfXvgJ95Apz953u6qup
	 SFQLHRTrKBEMdbaAkvBR+0eSZkWQlAOYXdDX9NXqj14MMlI15jQ014QkmLHmAh7CZD
	 BzdCaR18RRwpTiG4+HPXdM4XRRjZTZCJxhVc0m9YXbmdqgU9wPZ0A3CFpJepsGZ0DN
	 6u67MrMakQefA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A42A0E67493
	for <ddprobe@lists.linux.dev>; Fri,  1 Nov 2024 02:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173042675360.9553.8099132628355353502.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e4bb4193b9ccbe9292015ae2a565eb1949e1d0e4a7026a2bdca502bae11f583c
Date: Fri, 01 Nov 2024 02:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1730426753
