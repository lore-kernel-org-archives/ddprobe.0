Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D373322DB7
	for <ddprobe@lists.linux.dev>; Thu, 27 Aug 2026 06:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787813434; cv=none; b=l8028jtoUT+0SyxT4kwiqGBTaxpsEaQx5hsyoDvAqNBRXuqkG6fGWfRW3X9bKWIemwoMAVfgfqa6TFKwfv5octOWmA9CrrmrMSlJJa/v0HBVTgvSFaO/ccEfjCN1mXaUQkVc1WvqCGDPoK7WN3T6FPUGPkJVENXXmN4pOl91yoE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787813434; c=relaxed/simple;
	bh=YVttIvJZTaxVdWbHmubtdyK3u7gVd76vyL+UCteYeo0=;
	h=To:Subject:From:Message-Id:Date; b=ODTJyNo/Z+TeBnlQDGfHHIB/d/IaL4/QXsqdZO7gTDR1E4vXn2CauEZS0e5+E+J517hjoBzOiNMxfbCIhhPDk5GeXdkQ9Ax8t9MVUNqkgfVz18W6ICOV0eXJRcXDcI9RO9dI5ZU7LQKDghWCD63GR+4J8hPZYPNBdSCNCGiSb6g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WCqrGZil; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WCqrGZil"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D04E8C2BCF5
	for <ddprobe@lists.linux.dev>; Thu, 27 Aug 2026 06:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787813433;
	bh=YVttIvJZTaxVdWbHmubtdyK3u7gVd76vyL+UCteYeo0=;
	h=To:Subject:From:Date:From;
	b=WCqrGZilaCWdB2v81ZvQ7kuUxQGfZSHBL31lOBi68C54pP1lscE2S70BJsxOVUYc+
	 AgCRWZAz02UZQgGEskK1VoNTXxnq1Ybu+tqMwf2Si8SqPEzC+Q5U3yBd9nTR2orto5
	 HC3JIzKoyUXONdkAD2IkV6j1n/D9GWZ0BNa5rQZ6Ztw+dsDb1//MF/ICJEm/Lq5xs5
	 14LympxqHHx6KeZTWD38jaScQNIzMj1eyjXy/MDTRKu3XMnZLBL1S7lGlZqhte4LeX
	 0tof346gGS2TPjcQDMA1AMADZiBk30LBw4ANlshjpYKbAhwQreAwV2Ue2/cij/ERtY
	 ZkRsgU+7JCFlw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACDAEC5DF9D
	for <ddprobe@lists.linux.dev>; Thu, 27 Aug 2026 06:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178781343369.24735.2999333322890513675.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 24f88fd02a53bcb231d82417551508a85f7f47aa3ae7b746667d6f449ab0192c
Date: Thu, 27 Aug 2026 06:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787813433
