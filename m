Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31A7B1FF5EC
	for <ddprobe@lists.linux.dev>; Wed,  7 May 2025 05:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746596995; cv=none; b=YBlBbYILvJPxHF8ZC4ErCx0rZh9XoMYceD8rzCRIXVUuebB3kqP/rHfhOph4CdQtz2A2J3rpt8cfDsgeVtKioO9Wg6h0x66Xn0upTzH5YXLH2jU6lCgDdbhLULmfAWP4yEbuBxrSOhebeisx+OR9HVVT0ItBSyATN4hXtp4k9N8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746596995; c=relaxed/simple;
	bh=uz1z8SRtDBXCJkMFs/uAs5aufSBU/arqm0OVaFoBjo8=;
	h=To:Subject:From:Message-Id:Date; b=Bo+/p5vfBniMdf5ZAOY2dx+ZiTT8Cid2DrmJ6dO34GsELC8xaZJyZTparaKTd2zvremsFlUdcGkbh/qvpIjil1BpRLrbMl7F/5kPShjnOaXqIFAtO80Mfv9YZOBZpBwbFt0yAclAKxyrHahWXtptwsfsCQbUk2wTcp/NbaktZSw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fmB+xN00; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fmB+xN00"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A10B3C4CEF0
	for <ddprobe@lists.linux.dev>; Wed,  7 May 2025 05:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746596993;
	bh=uz1z8SRtDBXCJkMFs/uAs5aufSBU/arqm0OVaFoBjo8=;
	h=To:Subject:From:Date:From;
	b=fmB+xN00qn1IxjL9LnOE2RCHqO0+/Vo+X6/KdrZkpCEf7/OYM2HmSLre+V3/ITHWp
	 to4zyIPf+ESlGIM3tWIinYIZ94s6xh7liQJkrpKkuAI/vAXFW/78RGJPHoRl4201Vp
	 Rnb9sHsXe/dmBV1lNk1M3AhIM2wdqZqstHvKJkdsQd1ntlabROg7Vcf48V8XQTKFxm
	 9KY2p8OjPwUPE0vXxDGEXZ8wwnNgRnU89m77qD+Xb2/V0ZFkxFBW57YIlyQIMgOfiy
	 KHhf86oqrtAhnOFVGSCiQHO3BZkxJh80J51fBJz/Q4SCB8iLKOn1K2RVirp6fyYg/b
	 3kDAcircmaNhg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EF4EC369DC
	for <ddprobe@lists.linux.dev>; Wed,  7 May 2025 05:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174659699357.14996.10159424289334582872.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2b654080faf5559dfcb74b54e444791790cc9a99891ec626c45ebc5b20623a80
Date: Wed, 07 May 2025 05:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746596993
