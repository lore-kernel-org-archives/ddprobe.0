Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25299257427
	for <ddprobe@lists.linux.dev>; Wed, 11 Jun 2025 09:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749633594; cv=none; b=gWRipXJZnQoBWuGwXYvn2Nsg9qcYVfH7UCEDafUgpmfysxgjdLNO0+pMEzKWUxmWqVyK+W0KO3sf2Dn1Ui6dMSvBEGFctmxHcqgbsnKET51OWIYgRJU8cRYJga2YqmC0zdJ2kg0qqZezywwYQkYWBUXP4H/cStfVq/DNhXxy4Ko=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749633594; c=relaxed/simple;
	bh=JqaMmZ7QxDfYwU/V4/Qq+A+4o2TCA2PYeaRGaE1Rd0Y=;
	h=To:Subject:From:Message-Id:Date; b=qUfUfShek04l2IyMMTCCl68anM/vJXn5Bt+92mLBqyyClW1Gy8hk7FJRMislExkBbUXjLNQYp7a8jMhge3GGgVfxPJwUS1ZznUGvBgy6NqwxtkLumPtPIAJ656Ti5vjlFu+9KKt1cuuGxPjYo5zPJi9ujaMF9sOsXlIQrXfhlPI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XWcygBNN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XWcygBNN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A48C7C4CEEE
	for <ddprobe@lists.linux.dev>; Wed, 11 Jun 2025 09:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749633593;
	bh=JqaMmZ7QxDfYwU/V4/Qq+A+4o2TCA2PYeaRGaE1Rd0Y=;
	h=To:Subject:From:Date:From;
	b=XWcygBNNx/DmZj6PjBaa+jH03jpu/2Yypxn6erMjbdxOUgQVTknu6X0u3MT1D6a8j
	 gwatGc7n484a0ReJ9vjF75O2grREvCSYNRil+6rRxyK3evJCMMUhzB/ycjrEDquM9/
	 0wFXIFkwoPwUoktPTWfnkWtIPLAjSXthdeGLeDB8iOvgVAbwSIHj3G/ZO292zosiDw
	 ROgLewVuPEVnNP9cjWWEsV6sOYD1hpC543FKktTkeXhuBVFb3HEm3f+jhZ4ZeIO/6t
	 h/P1Wgxmp7NSFHO7iKiXAsp9FQo2BwjohQHMRE+IJh++AycQu9Ng4UQ7l8AAsyQhWY
	 0C2DCFRdqZc2Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92395C677C4
	for <ddprobe@lists.linux.dev>; Wed, 11 Jun 2025 09:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174963359359.17215.13945901502541000617.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e268865c0cd05a56cd89d6aff5dba0655fdc853be387d3e362b53d06564eafd3
Date: Wed, 11 Jun 2025 09:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749633593
