Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35BCB625
	for <ddprobe@lists.linux.dev>; Tue,  9 Dec 2025 05:32:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765258374; cv=none; b=YvDwzblEg1/9Pab9TYkc4fOobwe/NgUyztsnaJIeOGD/N3n26GXETqFxqMaaL6DhSUq0rZ0eumyeQE5BejG85hSlEfUe2ON4lxb0QIovehFmr33sqBiRbyfv0x9/2D85hWAYXFwszBWm/kLKlbS7y+Hq8oH1pb4alfm4943KZoo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765258374; c=relaxed/simple;
	bh=BvaVNUDn8VUo2xggFIHuA9beJD1UZ2n11hTxbUvTMP0=;
	h=To:Subject:From:Message-Id:Date; b=PMb9OXHu0+HBIgaBRDuK86pwsMjkaCWjGiaBwhh+dkGZl4kyiG+Jeoz14if6AnOw6r1WTIc+/B2lfdcMMQpGkQSlqo8ciRO9/FcNN1EEUU64+HTXuwluOxBdzOU2dgY/l5ahsrhIqwknCuzKeuoEaYndqsmn9a6Jezjs0MPZ2eg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RfzchDT7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RfzchDT7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAF4EC4CEF5
	for <ddprobe@lists.linux.dev>; Tue,  9 Dec 2025 05:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765258373;
	bh=BvaVNUDn8VUo2xggFIHuA9beJD1UZ2n11hTxbUvTMP0=;
	h=To:Subject:From:Date:From;
	b=RfzchDT7fnEGaGva297I0wc8nTn9Dp8C63rBDMFTZPXOvGRva5urHljFILBVdP11R
	 UlzXDjf6rNxsu19GuHYWQ1adPHdaANsK/4zgwkrk/zSazGJeIgi2CIpQGSVRxsNPzc
	 sD1Z20RayekLz4qNQgv4MjaKSbf86DrUKmPOqAd5+C23kfLdsQpc16jZcxgk1hVrmG
	 w8pgwYEPwfrSxIDqNtHaVrl+pW196xQt1EiQbMmXa4x5+gLED9qukdKs4kAT4ovTRb
	 at6q1qEd2pxblrrXFyvxHnYz+tKIipq2/Clhh7dzfigstRwX/UUl/kKWcacnSWg41k
	 efE3wvGvvr3tg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94BD4D1CDC6
	for <ddprobe@lists.linux.dev>; Tue,  9 Dec 2025 05:32:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176525837359.11050.4931524530247655583.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 71fab6ca8eac7182ef0b81a3ec8089b9360a34f9ec1816dbb1c7d3c5efde4019
Date: Tue, 09 Dec 2025 05:32:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765258373
