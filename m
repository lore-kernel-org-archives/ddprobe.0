Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AEDFBA38
	for <ddprobe@lists.linux.dev>; Fri, 14 Mar 2025 21:18:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741987134; cv=none; b=BXgpN+nc/crOrt/v9SosckL4HTlQgP7REy7JpruUUTWSe5ybCVHL4Z/dh4wlnOCxnZZ/eKslHev3r05qP8xGg6xodNxK/l8IyjfRndhGCMy4hHfYYAMpTQfsXRPGD0ScfmmKyeq9mELWg3xq6FrNdRnM2+UKh0GJ/QiWPsQcXdc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741987134; c=relaxed/simple;
	bh=8dSNNUjolrdHkCz7X5iAxNrYIVlYWtl96yS6BOw3Lio=;
	h=To:Subject:From:Message-Id:Date; b=eLcTypR+ay3XVlwkYc4WfHIEeouZp2LWBIxRX2EVw3KIWRmlRaG2VdTzb2ph6I6RuFcJaQs7RSxbNQZO/mg47s9mzsMPTcWHg8y2Wi+pgT4s38DaxluQHz9yNwexak0tXVF/2CssO7aBRgtRYqJlMKR6C8PzL965GhVBAq8ZWYE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VHFv1hcX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VHFv1hcX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0F06C4CEE3
	for <ddprobe@lists.linux.dev>; Fri, 14 Mar 2025 21:18:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741987133;
	bh=8dSNNUjolrdHkCz7X5iAxNrYIVlYWtl96yS6BOw3Lio=;
	h=To:Subject:From:Date:From;
	b=VHFv1hcX8WUXhThjjMEx1TJJO0HtHTgcxotYFqeN3AqtKZWSm6j/Klgc/Fo9UAbhm
	 3r+HSJ1E6mZ8V5DQcv+4rrWCTbEwXW6UBkOdNK6+DGJ6bC2D5mOnoUAo4F5p4wlu0B
	 UOM50fyU9vtiBn0QxHUs/7DibXwdL9U+pChh5GY8CAA7vrW0yty+6cugDsEjf/1UrD
	 pxRNnFJYFfYF6SgbAID/VLo3AxH6SmeGGNVJ3HG1jXDsjgbTX2lMVnG9jGIlvR1v1t
	 ivi61A1WgNJlR/hjcdQrLl7SrUeM+/cSHnVRdnMeHVsm5pDRu/2gaxD9MfPKfIC2e2
	 m5c99WvXWUQSQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BF3BC282EC
	for <ddprobe@lists.linux.dev>; Fri, 14 Mar 2025 21:18:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174198713363.18430.15750509041903507046.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 78576a53bd5427fb8cf3c5eb7cb24fcd5fbf328f2c5c162bdd237d4c7c1b8dc8
Date: Fri, 14 Mar 2025 21:18:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741987133
