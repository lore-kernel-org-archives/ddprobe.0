Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 246A0239E79
	for <ddprobe@lists.linux.dev>; Thu,  1 Jan 2026 12:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767271434; cv=none; b=riGHna+be6bC20LNFj1QMX4Ut4+dwlXiCeOO3YySBOqLX9/eD5P+MwiezgW3HLz6hq7KRgNBVNbbXDC1ZEDUCDDLBB50QpSA3jpYoJRB4k3rgVIAod35WeeE2m1ElKbhucqdEQOZUfNCMrFqRAMLkPr5O40hu/fDqr9/JkeID/E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767271434; c=relaxed/simple;
	bh=v3ebPSXQBp0lEhr0vubh9RVbcOKBZ6YMASJFcEWx8lQ=;
	h=To:Subject:From:Message-Id:Date; b=J24WSJZqd1tM/f07Bj28pUFXpntGq89rGBir3VEqkqDrV+wKkpX1XGqu3e4rFFgER8LtEA8KYtJBsZXM3JOZ5f7z1MEfKDopx+wd3BTsZNR9fBHXPAQSbEt4BA2u03HIb4SZS2ZQObOTcZn2ZXhuGOT2w1NIHeU9qY1eVYslNYk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GKiZAdRG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GKiZAdRG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5C2AC4CEF7
	for <ddprobe@lists.linux.dev>; Thu,  1 Jan 2026 12:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767271433;
	bh=v3ebPSXQBp0lEhr0vubh9RVbcOKBZ6YMASJFcEWx8lQ=;
	h=To:Subject:From:Date:From;
	b=GKiZAdRGmqpbel/UFybfMRk6nVsNIexFVr/3UyzhlFzFBJHrA7DiyC5nJBnyU4b2b
	 UnjOlzH5+smXRrBif3hVEzTKllZh630FZlo4BLgEVIB4eLcZK1NhwLwcw9yN9Q0NYj
	 hTpECxe4e+dDP96sr2YLoHmR6LAhkte6uiwrbBj13NVVoIOWtjX/TWujPzRk8xDnIV
	 TRdQ7ZDZmJmcphyiXK49zs+YvkJMKedGXY5BZeM8stahwVcf2DF1lrxJV1ZOsm2Ken
	 CimFdP9DY54iC6taSCgbp8EHyJgz1Lij4aAb/eg0m3u5qtACObdrNNQIXwa0hjnAeT
	 ccEpeTeWoUMxA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93FEBEEB597
	for <ddprobe@lists.linux.dev>; Thu,  1 Jan 2026 12:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176727143357.12598.7228330577003488284.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4f8f0b1abda8422554af76e5b92550d34d4fa5afd8177ce160a454789b82cbf1
Date: Thu, 01 Jan 2026 12:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767271433
