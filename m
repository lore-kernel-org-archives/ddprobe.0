Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 279E8214A8B
	for <ddprobe@lists.linux.dev>; Sun,  6 Jul 2025 16:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751818795; cv=none; b=aBs/35sy/dckQTzkopcOYASbwU5N7y8Aua+UYP5xvtVxyeklhHcEgamUpCcvk7DZIeHmZoKbIQQ1gFo7XjXSZc/4cUlmSvD3p3TPuVDQYlvLLE5LjFzj4nMyh56J+82He46R+zhSpOWK4BVlftZIDizX3aokgOQsXWs32eOYaa4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751818795; c=relaxed/simple;
	bh=0WgD9qZe/mHaEjwgDKz97HKI+Zb+9xZUvGBST9VYOSA=;
	h=To:Subject:From:Message-Id:Date; b=JY3gEU2f7pYikPRMM9lvpJKIpJ7znKpv8v633oS2iScpEoVLyPCT65TTBRIMEM3I0tdzrBOzH2JCL64XR3WD9EAy1X+1sc6aoZb9dVWzlZKQVcVSAmaR+TYPt/htv2OjbUUZ3w/rsb0ow8mNnelQ4QohlVCnkWKRTff2v6i95Qk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=g2aA0iwb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="g2aA0iwb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1D2EC4CEF2
	for <ddprobe@lists.linux.dev>; Sun,  6 Jul 2025 16:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751818793;
	bh=0WgD9qZe/mHaEjwgDKz97HKI+Zb+9xZUvGBST9VYOSA=;
	h=To:Subject:From:Date:From;
	b=g2aA0iwb9PanE/879HfdYERzBOpRNbnWp4pk5MZchLanGKea8mYnVMLzSUEweOWqI
	 6BB9Snq8xMkC7YzebxgWJI9pY91bT/cf4iwMB/OUCO32LVSAWSaK3Lq7Aqkw1Kzxys
	 wbvDJIpItlkp968roUlGMwAWNePOie1ZtcyYvqTyWONj/EQXUCtH/kdrIHEooo7nkt
	 L8kBICZFxVXN17BtYzqnnzwRqXXKhuu350hCnPiMxvCSZV+5URpzPQaREYT8KLGhaN
	 YfRGWSSnXgupbzbuhRaYZVRHMOc92FX4/cFkwlUdnYOPnIJztMscwVoP5xig3EJDNc
	 XPHBWtykONWfw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93466C83F05
	for <ddprobe@lists.linux.dev>; Sun,  6 Jul 2025 16:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175181879357.28388.3871397308524411865.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9aca7fc90cf68d00905d9dfa1a011f59c1df160d25b656506051fdd1a370280d
Date: Sun, 06 Jul 2025 16:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751818793
