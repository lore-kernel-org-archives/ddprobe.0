Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AE7B436829B
	for <ddprobe@lists.linux.dev>; Thu,  6 Aug 2026 00:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785975634; cv=none; b=iwNBXD3Il3ikyL7b8i/mKn2qzP4D9w74BrGAoUxafaBdP+1Uno9ws6TdRyhHbEuG7kc3IlNl2lkUim8SaCgroXnRUqBt/+W5GpLMXhuyjv/v9fBVdKWifqCcsJqhjXyqe4OnXzKabZrBRErKScHkfbzbrxKcHHbEeNQCmxg3h/o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785975634; c=relaxed/simple;
	bh=gOK0g2mpdnKBgdJsUZ2NCkw/gZ6H4G62u85UO2fbTss=;
	h=To:Subject:From:Message-Id:Date; b=I4mmPY7ageDuCMQHFAxq6fxaVQVPBnn3xtnt7qoj+gN/JVWta/HNcwdSf6kEiFCynp5b7Juvi1LIyt3OJsLdtoqJEMDuyETf9jDyEc+bCGZjyY0LD2zkB4rJS+3B6rz4AE8Zm/B4q0BIDjXBThS4ofWDHoqsIVR0MKyks5A0AS4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LCaN6dMi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LCaN6dMi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D65A3C19425
	for <ddprobe@lists.linux.dev>; Thu,  6 Aug 2026 00:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785975633;
	bh=gOK0g2mpdnKBgdJsUZ2NCkw/gZ6H4G62u85UO2fbTss=;
	h=To:Subject:From:Date:From;
	b=LCaN6dMi4dwXl13avjxtV2ZJ1xml3RGAOjz4Pg0h3nKDgLiu+5IKb/2Wd3OZCl42t
	 +wauXP3HqTJGekQvlmy1AlsD0q0qdV+GlOH2CDJa9WiL5/nRoZx4OPGusapy02wzMk
	 yMl53ztIiS3f3z3dsY/tIdCyt3rIyy3Q8/ikajKbVYdN+nJ4m5vhxIUrcdSsnc4ITU
	 tosR7tdm247fa0ZaSWR3YKoMjSaiE7hLKF4rS3mwlIF/+9GyNAcoDhX0qu9kkZhzB1
	 mqmhHYoql5Xt5KdVTuSIm3U6lBFC0sX7zCn5dqriv0MZyeRdfrwXCcJ4+P6d4WsHsN
	 kZEUMamg1Xkyw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B12DCC55174
	for <ddprobe@lists.linux.dev>; Thu,  6 Aug 2026 00:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178597563369.16895.11342794731258388979.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5c77024a99f6e585dcd410d4b16d49f1738ef7af05e6645861bc2b62bd580fc2
Date: Thu, 06 Aug 2026 00:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785975633
