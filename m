Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 58D235226AF
	for <ddprobe@lists.linux.dev>; Thu,  1 Oct 2026 15:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790866834; cv=none; b=SlORz2IydCyr5R/AemWmuHQockAtUgUz2W9lD0SUzwxNqDtZhKyuie0YTOYPhu86INvTaHFj1jAuicShtL9Bn7rUZqZfeUSvGusnMh78WTpXPrp8yRk+qBLlP76065nlUujni9OYO/BQ4TvJTko7B5T+3lefXQJCRkN2o2Ll6uA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790866834; c=relaxed/simple;
	bh=Lm18TOW1M5OL32qvutpbdfHik+2lfhgbE1H7xq15Dwk=;
	h=To:Subject:From:Message-Id:Date; b=W3tXyZpPz3+lBBCbOOyqfo5eHAbJHFN+IPz7fKuU/tkd13KJOk0Y8xIX4+5gy62wBLAxQ0AX/4Hbv3B/IeFfZFbN1LH+M9AUyBeeCTXQ+Nyn5iBMTHWzdkbtyHxmSzXQh8TbzJH/smnlvgU43QUKkWqNVgCTDpwcvRmwC6LGJ1c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Hi67w66G; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Hi67w66G"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0720C2BCF4
	for <ddprobe@lists.linux.dev>; Thu,  1 Oct 2026 15:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790866833;
	bh=Lm18TOW1M5OL32qvutpbdfHik+2lfhgbE1H7xq15Dwk=;
	h=To:Subject:From:Date:From;
	b=Hi67w66GPK1RLAXHAywz6zskJGD3nvDYULWeY6kcCFZs+BfZYG61l+tKdE2Eu6dX2
	 1YPAc9DxEPLTDMklXtwPLV1S0ABAaP+MsoRTZhScEUt73XSCFhSdcndRql+1RQxi8f
	 BZQ7OCUeX+Uhmk2GbpdEnU4ZTOtXCnWfONxpRr7rBYY2fdc8OGSeEDi/qxK070UHc8
	 ozkfwTV2ZXz8Ug0+/wqT+ShAT6rEZMSd61qZnizE7h3GfSC5jlfQ73PKTk+utG+ZWr
	 kkGKCMkoKtgHKYNeaRYz76VEuALdOvNoUa5HMZgJSxEYTgzjtvpvFHhclAnbBDJMGu
	 ZD/DurUrCR9MQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5D04CA5FD2
	for <ddprobe@lists.linux.dev>; Thu,  1 Oct 2026 15:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179086683373.13066.1653306891609138108.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f524f777291b8d7542ee2fe73095935ab031598d79852c867e28fa602ed1561d
Date: Thu, 01 Oct 2026 15:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790866833
