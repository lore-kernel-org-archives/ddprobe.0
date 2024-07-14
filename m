Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48B0B26AE6
	for <ddprobe@lists.linux.dev>; Sun, 14 Jul 2024 10:40:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720953623; cv=none; b=u2HfeZlZa2bDibiGxhQ9SS3sM6vkGN0+mDF/21QJuiO75BOCWqZAnciZegiOH0NNzdc4B7HclP4B6A5ZQIDeDRLHIwbr/Kx5gCxtWO/DNIZwtb853SB2Q/s89OwjMQ7C11baosFkk6mtgiT/AjT4jL2XvTTD5bUpeDYU6Y7FHXM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720953623; c=relaxed/simple;
	bh=vxBXU3yarrT1WQgqBMOvRfTbrIa2258YpqgUwz/fKPs=;
	h=To:Subject:From:Message-Id:Date; b=lnsvOeEFtULtMYlDv7JnZkk5UvYe4KGj9ri6nyKrg6AN4Nmv5m/zyAodw3WDyDj/sqfXA/EXUvHm3b1DNDJYOXjc0/s7OztfYUtTC+d6WadOmB8Tp9hjXlfkNDyPMtchxfKWUVewR1Oy34WDUjEgRGRTBPS+u+BBz08tjcHrblA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VzhnMAsx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VzhnMAsx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF88CC116B1
	for <ddprobe@lists.linux.dev>; Sun, 14 Jul 2024 10:40:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720953622;
	bh=vxBXU3yarrT1WQgqBMOvRfTbrIa2258YpqgUwz/fKPs=;
	h=To:Subject:From:Date:From;
	b=VzhnMAsxHcFccr9ZccVV4g/yzZRjmoyqId/9OJPa/t9WeXuhOmfO1JIQB22oihZTD
	 Tz2TGs7M/jePoIjt5lDq8SaSM+8uHjDKO7MFU3OSsY97GQsqNzQu/mHuNOPYISRDtm
	 6tiv+0lfTQw8SleJu88IewcL305xMpwMe5R6sZydTp2c6eYTBdgpLJHSuaJ6XOvls+
	 hIYs1+GLce2+4kWMkkSu4btUiOVvx1smjosuJMA5lm2UKU5TwsTb58/h/NZNY/IVxl
	 p/LSnTAR6Y5uNHVMFohg76mxG3Bk0nuLcRmqGllkHbqrXRfLj2QXWKoOtsDDgh6ph/
	 bOLA5sq1E/e3A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BB624C3DA49
	for <ddprobe@lists.linux.dev>; Sun, 14 Jul 2024 10:40:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172095362275.790.3619872697584065801.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e21ca86e97bc5dadaf507cbcb5793d3166ca794cf45e4cbafee7f4cbf0f39165
Date: Sun, 14 Jul 2024 10:40:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720953622
