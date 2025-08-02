Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4070D1FB3
	for <ddprobe@lists.linux.dev>; Sat,  2 Aug 2025 00:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754093394; cv=none; b=q1NMgozfcBXsDxbv/Sz7ZGFNnQKM7YIRp6vEpKLoiSn51bj/TQbfAX5NsbqtcThtgsupKGGe1O89cPsCJzn84DcbtIJs3bHIeIEDCmGcGZKDt59VyPcMmKL0yqb+/Oi9CXGgRiRmhfC2FG7C1MRZZAidmEi+Qjef4md9Nun8K5c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754093394; c=relaxed/simple;
	bh=wrOxENZlLrtysWaU7xByYTQfRhTJF7NqRc5LdUqN7rs=;
	h=To:Subject:From:Message-Id:Date; b=gllGWO5dF/giGo/6xwZXEP8D9s5GO/HA2TooXt7AD6sv2DsHy5VKr8jshtXc9giJcnldCqD3gNHKiaYwZgpz3UzCMD3ZvGUd5FGvHsJ+6VU3Bxzp5b8snc3ZHXlOtsYJnmRzuYdfWZsKFAX7/5F2HLpq7HigfPBiE7xE1qaeLTU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nmQodvcW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nmQodvcW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6679C4CEE7
	for <ddprobe@lists.linux.dev>; Sat,  2 Aug 2025 00:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754093393;
	bh=wrOxENZlLrtysWaU7xByYTQfRhTJF7NqRc5LdUqN7rs=;
	h=To:Subject:From:Date:From;
	b=nmQodvcW4kV+XlBEftQoXGCoxdYcvCZq++c5Ru3ltfNsmVZPbFurMCXNk4UJfW06u
	 D5lwHqKutCIXo5FSao+Z/Z/xqHdLm+Xq7SguYqWymaGDFQvoPhh+9aUaCD2chs8WLh
	 n2PpBrTz8yZplcoHaLVRz7m/jd+J95x9vvm9+OugkoV3UXRPajNxn6d0ScvFHpFy1l
	 Iv+qPEa3FKheTKZpMIitIVF1g898JUgc5MD9VVTw0xNyTLLuquFxs0xkbfgTDmUCo8
	 IGTM0NMvQ4euUVQUhlzMlf8Fp2pguLh5rK792YszmAKsfAReLDQHPhkqjaTIKJgKTR
	 WD9jBi11llZ+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 982DAC87FCA
	for <ddprobe@lists.linux.dev>; Sat,  2 Aug 2025 00:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175409339359.21005.5269107766551889908.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4e5c71ae8e9126a5ee47a269b4a26f97622bf3eb7a41fabd41067f9f592fc213
Date: Sat, 02 Aug 2025 00:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754093393
