Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21CD525783C
	for <ddprobe@lists.linux.dev>; Mon, 29 Dec 2025 07:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766993634; cv=none; b=mdpmAIDyiCuFo6F/hTy0aHZd0cSvwJGBkyL0T/LpSAIBD/8ym3IZtZ0rM8FwmNTcRlmXBLh6k2MLOJ1HJlls3yhE5wzPYHTFpKvZWQd685u8mbxwW1oA4/MJROUciY7JApPEEUVEhzQMYVCPLn/XcVLSOj/LAzMHeJIA/mhE710=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766993634; c=relaxed/simple;
	bh=Yl5yAEWfTF3QZ3zfdGr2dGSouNQTr9d6MKfsyvzvaHY=;
	h=To:Subject:From:Message-Id:Date; b=HVKv2WtooiyUEUAra/uBaY868ZlY1SRhVAHp94Q2Yv+dJyUAkmzxxk+/IXjOghLur6A2fpgmILgtw9zTFuDHvk7ljBlO/W8HpIr6AEtLghtH+J6HLPrTzYZeCofLX48D0xVJQRYNWEh6hA0Ifb477kd519Cgp5F1e+NI2ty1OAg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cxBv85U4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cxBv85U4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF6DFC4CEF7
	for <ddprobe@lists.linux.dev>; Mon, 29 Dec 2025 07:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766993633;
	bh=Yl5yAEWfTF3QZ3zfdGr2dGSouNQTr9d6MKfsyvzvaHY=;
	h=To:Subject:From:Date:From;
	b=cxBv85U42GeWBdChFnVqC9H5y4wA4LTm6R9whVRifIet0HT4f3e0AQmRRTy/L7V8u
	 v55lSj/UbMxR2J8fL6g4ZOIzIUXfuA1pqa7/eBdvD4kwEu3xI5jAcYTU8K5w+4G02Q
	 GfJduEu7mHeQuBZrdaC5LgPejL6quzDTd3QvWmhyEMvmD569aXh6er94wIp6qztgu1
	 YlLv5dH+aTtmQVjgkMK8lecP0wt9UZ+5UqtnSIetU62NV8i4vBflNKDKSfvPX+9UHV
	 jatDx4eSnis7rKxt1o5kKJ46fx5R02ZTAhkiRMqtiMZu52xI9OdnK1VH7KaopSZLJE
	 kCZveiHmzxDwA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 994AFD3B7E5
	for <ddprobe@lists.linux.dev>; Mon, 29 Dec 2025 07:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176699363360.16552.16950113530404314651.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d5f0d85f33e866bd9f3b769fc0f570b9ad9903402d81a491b6817de6e38a19e4
Date: Mon, 29 Dec 2025 07:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766993633
