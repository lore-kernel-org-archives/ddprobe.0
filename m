Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2987E2459EE
	for <ddprobe@lists.linux.dev>; Tue, 29 Apr 2025 16:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745944794; cv=none; b=ACpQ3OrRtA0xijM9pEE4EamKXlBI4YDdfEVSusfU7oFcvA1sgJsJ3vHvkby0zE5YmH7i6w3hLDA6Im3GUsnjEGbmWoPfNfm5xRp8AWLLHT38GA1scjMZqELvNSh6OucH3NuouaT5w7BBgME6YFHKb4GlthAPPNBC0IuqzYd46Ns=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745944794; c=relaxed/simple;
	bh=Dc7KNkgdDpkqujlh43PWHuz4/XgmSpVn2HIMuCFwV90=;
	h=To:Subject:From:Message-Id:Date; b=U3ol2r5ywWmJ+5MIT+w1dNmLGheeQXtrTaUgG2Q8M8hTaRurDjpHISst6dFBor/HSR5tIJYA/+ePicw/qPA8IK6PcLBop7CEHYEjNQKWTQfv2MU9UAylqG06STJdg2HbisW1g0CQ7OgUT1fcuScoQSDek4xoxn6eK0VpW+On7y8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oYtH2UHx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oYtH2UHx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D84CC4CEE9
	for <ddprobe@lists.linux.dev>; Tue, 29 Apr 2025 16:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745944793;
	bh=Dc7KNkgdDpkqujlh43PWHuz4/XgmSpVn2HIMuCFwV90=;
	h=To:Subject:From:Date:From;
	b=oYtH2UHx68irgYR3+/21MAPtQ2TM9DD6RXieMJ7J9Qs3JbUXO+8cmtz3TCFPzMPhE
	 3Ca0S7cjdT8J1t1qpcTQSdORUJz5EquGTCABAfschp6/RjafjGgLdyj1+HJxQksAe+
	 6Bvm3TY5FwiQfx2vQkTlAmUM+OYMEPxq14/S4c06Ng7ESGDC9+F571R3EojbKcipqm
	 8962VR/vPT4odCt4BYrt5HtoNPPQnkj212xKwUtvsr3MZ4nPjA2ScQW13px0tWa81o
	 B41sXw1AYO3Rm5ja7I7psuGZ11F+btAivUxB3K7l5QYKPZospcEZozPgDhII+lun9Q
	 ydoVBphSbsOZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F027C369DC
	for <ddprobe@lists.linux.dev>; Tue, 29 Apr 2025 16:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174594479357.2417.2016246910467109552.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3ee9b6a7d77086d577fc714e4cd48b289bd45a7327b851a6e6a2c42eb5a5acf5
Date: Tue, 29 Apr 2025 16:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745944793
