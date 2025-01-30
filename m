Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42B2517597
	for <ddprobe@lists.linux.dev>; Thu, 30 Jan 2025 22:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738277155; cv=none; b=Wi5lpf2bYot/zb3Tbw7v8qTmYEHzRbwuS7uD6PKPsTXvKKDuWRChlpuZxlRh2DY59gd7ZXehr0FBLNgcwpngkDWRzfPlQmvjwRTWktuYvdel2LT7KZw5/f6zGysby8uQXWoRoTXbNPqyT/++q/8oVYKq7ZGqT59uBpqvtvujYbg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738277155; c=relaxed/simple;
	bh=vRpmrmXoQEcs2rN6LV+wIIFPVUruk+dAAwOdAa2e0XU=;
	h=To:Subject:From:Message-Id:Date; b=mTRApJrG7PXTrFPUM4c1VKl6KSRvjVWJ5RefGQzVDwXofoKA9GX4e5T6iFVHV78Vk2vy1eJn/x5zMtdxvE/sjI3c8ZdQkkKfTuHj1G8V9ujGxibTOGSu080lli4MJ4p38XjhaMrb7/dXgyTxFNY1D1XM8vy2Q/GmRrFHOvw9ecI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HiIn+v2O; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HiIn+v2O"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2321C4CEE1
	for <ddprobe@lists.linux.dev>; Thu, 30 Jan 2025 22:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738277153;
	bh=vRpmrmXoQEcs2rN6LV+wIIFPVUruk+dAAwOdAa2e0XU=;
	h=To:Subject:From:Date:From;
	b=HiIn+v2OZ5f8zJUMjSC3R3NavFFa/biFs09Iwt7YrWez/AICAh3eSqV/QBhvIGZdO
	 BvdLV+KI8EKplGKMQB69hyCM8pQRtYITf6s5qrODjLtDc2UJznt8CWftKiQgu8d0D8
	 LHnDwNlObTK12F6V71Ek8QkKGrM93oYQaIoiq6Y3i3LGmhk9eBwFhr5FJX4PcT3TAf
	 3/RLA1FhL5nQZHtzuALwYB2WCH/HAVDXPPJNgyITvtVE//pUfZ/hSMb1LKAnCGKIZN
	 timFMBIJ6diuYiMv0JVPjQJgTR2qhYzqO4Po2kvEm7F8sClxavani+aWhsge+ovLqQ
	 e799Q5+Wxg39g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98250C0218D
	for <ddprobe@lists.linux.dev>; Thu, 30 Jan 2025 22:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173827715360.27235.67118188890852926.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 87e698736288b53989e83cd0f93219713855eac14efb18c2f506d6d53a59fe38
Date: Thu, 30 Jan 2025 22:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738277153
