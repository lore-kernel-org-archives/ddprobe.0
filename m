Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3518A16FF3B
	for <ddprobe@lists.linux.dev>; Thu, 19 Dec 2024 20:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734641154; cv=none; b=p6pA05GSrh8bocIhYZITST14WmRZZT0qTlKuxkW/jCMUOJKkI9XbE85Vrp/jLCT79yA5xTCqKAXdvVsJumqBMItt2OGKoYeh31ML1IH54pstjJy3bX6CA2L8KtR00AmL+syGuSka6Ynyg4mv/4e62yzZ4XQwJnHOtqQAznj6Clk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734641154; c=relaxed/simple;
	bh=+pYlm+TN9vzFE7p+L49McgDCjLja0rUvfblWSo/piOo=;
	h=To:Subject:From:Message-Id:Date; b=NXkrR+aNwdUW6jG8q+dw9gxn45R0lmyhEN1vV9zac/uJjtivHyC5+9H8cVAFLbXCDklUGxbfi/mqC71EiGL15I76FQcBC8a5Wko3O3LboTqqwIfdUqwZi9igc7xlYz3UjDjS7XxSzFhhdoEm8RmGS6yLaefthv81cHzPFTrHCx4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ipJWt/yB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ipJWt/yB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6BCBC4CECE
	for <ddprobe@lists.linux.dev>; Thu, 19 Dec 2024 20:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734641153;
	bh=+pYlm+TN9vzFE7p+L49McgDCjLja0rUvfblWSo/piOo=;
	h=To:Subject:From:Date:From;
	b=ipJWt/yBH2LyZYY8PxhV+plh/ax8TGClXswo4ekhVVjetysYkST1JOAoauqOdbMXB
	 0MeNTcMOg+Zb0DXBb8cdh331AiK0NmeRsheSgy9BvfmqvkZjT8Jt9R0LmiQjGdUJeI
	 8rgY9pFEgakgbsy0/7/KSDdXOkDRGXrVv4yQZ7FO7qtsmmmFBzxyPrYv6zBFjBSkcc
	 GtaHsWkMrq1z7Kj5B2Mce9XZfKSoGPB8blCqHLjpnbvnySUatSSH8QyMbIgCA18VG6
	 VPJi4eJJrM+TyM1kOnWByBlN76q+9NiXCCBIvdP0MpRarNJUpUlP8Q3DM0igS84D49
	 Ox3/ZF20ahzYQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A26ECE77184
	for <ddprobe@lists.linux.dev>; Thu, 19 Dec 2024 20:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173464115364.20685.1377852171800052234.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e87db16ff6108beba21720ff7fc94facce096b1efebfcd2cd983fe0fc4702760
Date: Thu, 19 Dec 2024 20:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734641153
