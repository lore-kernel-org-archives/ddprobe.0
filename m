Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 399B01A76DE
	for <ddprobe@lists.linux.dev>; Fri, 26 Sep 2025 13:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758895194; cv=none; b=Q8UMba/yFRaVDF7+z+jCShhg3AbYwG9lRxcbuqDVj9MGZEoA2MHl1GETHruYVpWJi+qWKDtzFd2WsxZO1vF2oZ5iqQIVmAsYQ4pgFcEioQLITMzP7iQ3l9I2FB24TLQyW7fgpUbeGTW/9EayW83R8Y45DZMsbz4q/eVlUP9aW18=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758895194; c=relaxed/simple;
	bh=vsPPoEfZyjw3LLpRjQroYTCNVlpv2ae+AEojleS/LKQ=;
	h=To:Subject:From:Message-Id:Date; b=Ii44yI5Gv97gNm2IGVOK5W68LUTJKLq22azmvsROm+9PSwFQSzJounUDzqtHOUn9DQWZXGzW9ZvIgUmldQmGXYn+vne7i44oQcJcTkCnvAr1LAeBo5YEFCDe2bBV5hz+fsKMP3Opvbn49tRTiyj7L7W93dwB0icJVlk19WO82LM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nG77wBkk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nG77wBkk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A36E3C4CEF4
	for <ddprobe@lists.linux.dev>; Fri, 26 Sep 2025 13:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758895193;
	bh=vsPPoEfZyjw3LLpRjQroYTCNVlpv2ae+AEojleS/LKQ=;
	h=To:Subject:From:Date:From;
	b=nG77wBkkR1AiYOerWrrva21efWG8/OrjPWSqPPMe/0mL0iS+OZc8kRSTUlH6Gjg+L
	 IOGSWSBJ00nSQr8Ao1rKhzJR+lmltiXrYHi72VmMor+3A5+d+7TICbw0lJ9pks7ifk
	 dIo0AxmLjXwv2HZhtlHDkMc3/LeghaXabCnXy+X+kTyPkjHkOd7Tq1m+e5nEn9WVQo
	 7WbQaQRV2jt58KOCNAtYZBz7lHRo8VRqOxRPcYkRGlLbTnc5OnClNCb8q5/W9voLRe
	 i6jcmcJli7gTBvR78A/53nXPKg3W1B68NjTV040PNSNq2yltcyB2YGchD4Fz6cHuWH
	 fxS46y/FEtFTQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FF31CAC5B9
	for <ddprobe@lists.linux.dev>; Fri, 26 Sep 2025 13:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175889519358.9093.6266692409070755891.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aed5f6a809d62acd0389e9aa1e246a1c2700ab3f5d6439ea68135c874f50fb4d
Date: Fri, 26 Sep 2025 13:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758895193
