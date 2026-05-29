Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 381BF1A6803
	for <ddprobe@lists.linux.dev>; Fri, 29 May 2026 00:42:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780015354; cv=none; b=EX7YGVwyXzuezK1I3Fz4GDg05MB4fKBzny29RSo63YuB3Ll3DUn3t3isgSxjVyihZx86xAYEN13KJueGSkWxprHFrbIXWNoFMeTROb97CjeQ1kRZDQToEQRx3WO3aPp/leJ1ykm9S1XZ5otvTlX4SlvReGgcjCLPtTJjtaQcYzE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780015354; c=relaxed/simple;
	bh=u0fCIeeurk2Y4FclzvRSkZWup4Cp8RaD1UeK17NZaE4=;
	h=To:Subject:From:Message-Id:Date; b=qJZBZniL+G93DfGtzqAiXBujurEXJskkn3rHhgrnMZwjhrWbOmeoV5XfuIummVfDKQyvJou02e68lYynGRXRBHYQtUnDAduU/XW8sH0AjW7FK2O6qmkh6LIV21BYlRrYnvZtBYNOYeYFjx/ggSj5A5PS9zRWLKIoR/dGk16KWUc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YRZOYtuS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YRZOYtuS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C737BC2BCB4
	for <ddprobe@lists.linux.dev>; Fri, 29 May 2026 00:42:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780015353;
	bh=u0fCIeeurk2Y4FclzvRSkZWup4Cp8RaD1UeK17NZaE4=;
	h=To:Subject:From:Date:From;
	b=YRZOYtuSS2LRnfzx2/P/OYt3r/7P4wZqKaf9IbXUrP/Xxxs28Mlq/+ousQvAG7Gjt
	 hYwAWhMmQdMNdBc09mS5V7nyZ1rhEQ034WN2lMTMXaw1zhYoZRFIHsOMK4pdIzpAlh
	 2cH+qyBOv4CiAs8M/0wqc5/H8p2P+OSAOMLYX1MQgTcoQppyUmbXCwyFm+Jp4a0dp+
	 kxf4IYPziAX63jcXZGSaRhM8F8LDKjmqTxfnJF637qWyOZtAp0NzRSjryHZO7iIWNY
	 7l3q6cztvO2BkI2HffkgliA9rd1H1KCs3SlA/zIdSeAEXivk26Y7n09N7PT/mWVVGM
	 ifWYd02i4evTw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC0F4CD6E43
	for <ddprobe@lists.linux.dev>; Fri, 29 May 2026 00:42:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178001535368.32109.17493274547256633003.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 13655614ae630ca2b875976b32fc2e1d03a0e10679369d2d7a507fa52ec38e25
Date: Fri, 29 May 2026 00:42:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780015353
