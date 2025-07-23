Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C00E17BEBF
	for <ddprobe@lists.linux.dev>; Wed, 23 Jul 2025 02:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753237794; cv=none; b=Fle0prNLMQjveu73ZGAPZWiIrxFKeC9H+02JxFwuHfC6ksmZdjrGTOJ2keToir1L7xTh7zFLIPZGCoJvyJzjMi2UdV4ZXgF3vCFAd0+hJQzOelWBud2ynMJoOMxZx6H3PUv7WP79Gr1Edkl/6r26prORBPqOOvlw+tqNCAYi378=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753237794; c=relaxed/simple;
	bh=laC5UXGi2GG3sdt7lp8W94GgYIdN9NXxUBpSY2IxW8k=;
	h=To:Subject:From:Message-Id:Date; b=HcfHSloE0LLzG6jcb02Oo8rgf/NvoNJdwICw7Whv1suyxNKDhNgYpQyOCs/JYcLv+jMoO4LMCyVJktshEuYXLfWa46/xMWTNBLtOmykdT1JTEkCs1V+tiDsY1jwv5U2PhPEkKHA28X50Ui8aJYSdfi82Ucjc59+i6TUdxXdM1ho=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mNqERzwL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mNqERzwL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0FB1C4CEF1
	for <ddprobe@lists.linux.dev>; Wed, 23 Jul 2025 02:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753237793;
	bh=laC5UXGi2GG3sdt7lp8W94GgYIdN9NXxUBpSY2IxW8k=;
	h=To:Subject:From:Date:From;
	b=mNqERzwLnWfJXbDi+oiDBakFBsX2y79gJbrgmVn+F29CnTLDwa6vQ5pmR/yPTcDo7
	 G8VJV/F0CQNlYOjDWXwEcFEHR1tdjzm9IrZBGWL5SEBoILkHWbBQPZkyDIhnLHosw0
	 Eu2cLkK3CJZtV5KHTiNqdmkxQR/LDU7xBZMG477NqgH6ePMZx456Ddsx3yzsFjQ+4O
	 fywX20Rnxm0T1Irpb54pfKIzaf4TeCa+bIPs6uEfYrOVwmlSSA2P30sYog/eDUs5uf
	 grOxDO/DVULQX6xZQ3u/0s6l+1CB58xKyuX3LtB8CJ8Pq4QTEflwtUOm6Bk0wS5Yaj
	 rSvLHN9T5zCig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F3C1C83F27
	for <ddprobe@lists.linux.dev>; Wed, 23 Jul 2025 02:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175323779357.22367.10312587426681303414.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6b65cdf5ac926130e1026238736181c75561c24d9357c375e405e09360b0d2c6
Date: Wed, 23 Jul 2025 02:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753237793
