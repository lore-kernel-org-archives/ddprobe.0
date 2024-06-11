Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 485E7383A3
	for <ddprobe@lists.linux.dev>; Tue, 11 Jun 2024 16:28:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718123303; cv=none; b=OxNKzXd/GesdCA2uEfx1Yx9blPKiiCyWbrNM3kVW0DVvrmVNoZJf5TTXqWgQIYLwr6tM52OvWJT9hn5ofTGTA3uxqYoJofHUuCm4l9gLzNOosActdm51Hi3UzIQQC/4O2795UqxDJWocOQKZHbYrPsjK3vO4KIfJPlM6QtZthJk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718123303; c=relaxed/simple;
	bh=vFe43nAuHVeVctY9gmQtAmpAeBqs8imJDbzjX8+0W1I=;
	h=To:Subject:From:Message-Id:Date; b=fvi0rMEJxO8gLFP2LlEZ8jlJgImTBmo1vxFkL681F8L0BH4FEJDnI4Vjtthfv4o9kTneVGXVEe3hTgPo++ccBM82dmeWttAwYHoCWkp0jNN2aQaUCj/7O59/guAGQikplRM7KYqKHgTfbuJB612A1z/XX8JQHumDywArqbjU1MA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZjiAe8da; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZjiAe8da"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D399BC32789
	for <ddprobe@lists.linux.dev>; Tue, 11 Jun 2024 16:28:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718123302;
	bh=vFe43nAuHVeVctY9gmQtAmpAeBqs8imJDbzjX8+0W1I=;
	h=To:Subject:From:Date:From;
	b=ZjiAe8davU4E14rPLIf15I2hm94Giirpt6Ckz6zyG9NSuBrN43uIMcN1YclGBw65F
	 g5ef9Enu3XgK9A3S6BsvKBa6ICWcsW3ftERbWPcRY3MJ9lsyXc1Udv3BvICmzJ6P0Y
	 KRhIhbmcCtAYgcJRxpeaxnlAv2xZd0IjxgeTzLm2P+iWcQyCl8e7UdZPnsNxWjLN38
	 eKhgHzgzpKopoFO9yhWy4QuASQ0J4RIEEchPD0UIrZ1FQa4EhwT9jlMbQ86XBnE5ch
	 VPNl6L3U7DbUrHhyf8wsh+T25qiATkffFUnmEuunRXciC3rL3v+Cqr0svJDYze4AGF
	 P5mWznDaeo6Fg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C132BC27C65
	for <ddprobe@lists.linux.dev>; Tue, 11 Jun 2024 16:28:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171812330275.3671.14581084967189390374.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 61ab86d71c006e2ccfcb7c52c77b84a63fccbb4583e6bf13446da94b568b71d4
Date: Tue, 11 Jun 2024 16:28:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718123302
