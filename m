Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40469311954
	for <ddprobe@lists.linux.dev>; Thu, 18 Jun 2026 14:46:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781793994; cv=none; b=XZZhS6TeACTpVTUvIAvf2mjiA1ceLWMQoB8JGfd2mVVnHwx6Iv8Bcvi1Ck9VWeLPW5wgVpQwAe4RdKqAinDLv1YlaLJ6yje6sjjnMdrrM5aPvVruiAy+tbt9hdG9CaWTRyttrsCB4rn//P18MxLYPC2BG5E7HybSw2KtzWFNwms=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781793994; c=relaxed/simple;
	bh=TLQds8Y29UeBP8U5lwGVBc7bEzG+9XliHR5lRpPUl88=;
	h=To:Subject:From:Message-Id:Date; b=fxet1qpishIfPdqJbhyHG6Tgg4880KOhfwLIWPLxvLl4ksNnUriDkEEZ6u0D7VfCTzLJe9cnMQz/0qrel5tlko1brW3ff5jqXQZNyoW4cjCdI4U90UdHaRGNjXqD7IAoNUDHt2ztf8Dt/I61ugClYyuBOFbHXtzZEzaYyh+LDyk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=f8sF2ZiL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="f8sF2ZiL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD01AC2BCB0
	for <ddprobe@lists.linux.dev>; Thu, 18 Jun 2026 14:46:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781793993;
	bh=TLQds8Y29UeBP8U5lwGVBc7bEzG+9XliHR5lRpPUl88=;
	h=To:Subject:From:Date:From;
	b=f8sF2ZiL9P2M/zAH1u1Kc5ebczF6ktfBHVg65FXsEX62PM1zjNvn04zKYplaYxLkv
	 Bu8GH0evsCfmS9W7MhS6kG/nlgXCxGoooXFhf06xMSK1JKvg2eljKwE8sJov21/1uw
	 yaTaMovwFVXosnoIQ+zlKka6GkNo1QdgaPlCI+eo6t3WYIo9RqIKF0pUZZyjKkbCHg
	 kIv78uwyZitGuGgPPJyQRcEOazxebpnOLQeIAP9SdVuJOe6D7a7kznzUBu+PSbSYGo
	 OK7zHvxvvtySSbPS2SoBL6pQKrzHReRq4ozQ62uzRAcO72KAi7R7V55sxGxJpuQqqz
	 zfJej1ZAXRuAw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2970CD98F6
	for <ddprobe@lists.linux.dev>; Thu, 18 Jun 2026 14:46:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178179399369.4590.14115129263052326592.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4c25fbfca1406928539a73fd040639fadafa164f344ba1f072454ceaad2dde63
Date: Thu, 18 Jun 2026 14:46:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781793993
