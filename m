Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35DA437C119
	for <ddprobe@lists.linux.dev>; Fri,  6 Mar 2026 13:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772802894; cv=none; b=LKYCpg8iscO65pYjoUJ62t1vzNDqRJepnZWu58Pqnl91hkXuRGkLDH0NSZWKSI9ZR7EcLlqghRt3y0BnO2vDbwKIhavOHz7L96GmLHXedRdLFyTQfbd0DXoLy6sRUjJMOzszjG2c1PU+4e5pj1dZyJ8wtVTraHvnIwb88aBbjro=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772802894; c=relaxed/simple;
	bh=Ttu2BhuFhxrvSSnbO+SvGvf6AkLN1Of56RlhYm3lzU4=;
	h=To:Subject:From:Message-Id:Date; b=W5vRCmwOOx8UYdnUVvcML9Yc2vtWOZtC0vC856KmdrAwgaveHmIma7UphsSVLQgthAFuHQOgLmjk08KcCoFIgT1jMvpNuyFG3JmkiJIa8PZVvXX7aerdVY30qDKdv1nedi7qc3sh7+w+0/4dDhDf9Ukxh6PxlXiJy+PTmf3W1mk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vDMbf4oV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vDMbf4oV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7896C2BC86
	for <ddprobe@lists.linux.dev>; Fri,  6 Mar 2026 13:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772802893;
	bh=Ttu2BhuFhxrvSSnbO+SvGvf6AkLN1Of56RlhYm3lzU4=;
	h=To:Subject:From:Date:From;
	b=vDMbf4oVhLMB+70pUg7kCq8skycfWzh0cMKGxUB2AUEuZQLf4aKJ1K+9lLOn/dYMe
	 YQ/TfQaQRxOfOECMSTpUAzevJUr/MLR4ZH/nQaC9TAHTGS8kHiUGzPUSTke8PnR/Wx
	 juvvc8K9+aT6SFP2tbui6wPF7icdEMBo+6sOuwZEOQVkfob6AGViVoHDPcD18kpX/h
	 81MePr7zhqVmal4kdfRIxDIqB3kr2AJW4fpc6P51ZBANnwv2+eXL8v23EQJsXK6EQQ
	 I/azkWPdF/Skb5yhaWgcXe3iRAt9HaTL85PFkDl4I6g3eGmmcqpIxLtZ+/VEsuPt3w
	 9IEexkG0mn/XQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91D19F01832
	for <ddprobe@lists.linux.dev>; Fri,  6 Mar 2026 13:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177280289358.30506.15817929908005780818.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: da4361c3944c4e1ea390cf58615c5963c9c031556043786dda871a06f1f78dcd
Date: Fri, 06 Mar 2026 13:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772802893
