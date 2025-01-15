Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E63B20C494
	for <ddprobe@lists.linux.dev>; Wed, 15 Jan 2025 09:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736933754; cv=none; b=eLwaroddD9TbhZG8XZF6bihNjbkJKDRGSLPBiO9iN4nj05D2Cabnaa4X+iPUgophY1OmrsSL4+Xy7wu5NYUBt/UsJxC+hSNnpHcRiA3XyJuMtO/ZrFrQOusnXodHwVRtz/QWU1iAwdxDq0Buu6p+N5TscgFvlIhJyDJlwwKDsu8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736933754; c=relaxed/simple;
	bh=U30wNjqZNsTX3NMKqx5MDAQ2VZAPwKuvzdyIz6Tx2TA=;
	h=To:Subject:From:Message-Id:Date; b=hz0yr1AU2eCPbCPsMRtBCpbHmJJSZMr4p5MjkJTggftLvlp3IXOr5yp98tmubqkUu43iGSb4F9HTideP4krdHSQMQ3cWZZ6fTgcf7of5LHgrDwqhnbURaZdmMo+cmlMMoHKRjxT/ADkUm5Ka2cIXoIOVM4barpNfXKJHKUdFNxQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tefK077q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tefK077q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD8A5C4CEDF
	for <ddprobe@lists.linux.dev>; Wed, 15 Jan 2025 09:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736933753;
	bh=U30wNjqZNsTX3NMKqx5MDAQ2VZAPwKuvzdyIz6Tx2TA=;
	h=To:Subject:From:Date:From;
	b=tefK077q44jvq3n884HExeRyvDxMhUXdQXfT4kzbP9N2WuDLiaOwjSXfwRUxHvZvj
	 s9WTGGjVb8sZUZn1Fc1Q2B8RHHwikpCLUw9UjApa3l5pXrSQJGi/Zu20Y7S/oUXjn0
	 SugWBfQ3Z6bgtjUGmBKCvIqd+6xAn6VP5JBn8Vr2hBiraFPw4Oa9sMmEGMn1ENzIGF
	 fGKs9/aT76gA/4ajnZrs+PvT0CN8yYmDOVQxNhxxjzYRI1dbw6aC+wvu/2k1bitWDd
	 /6S/HrkdNIEWCzAwY3BeuZnZwUHhgP0bB3EAXPiWaWCudnYDTGC2WcJCa0GxF2wUDN
	 Q+8KI3Z8zCrhQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99D58C02183
	for <ddprobe@lists.linux.dev>; Wed, 15 Jan 2025 09:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173693375362.17923.1267530346225521841.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0ca3f5353a3c6cec5463713e80432bee6c769dd61d977f25fac8009b3822bb70
Date: Wed, 15 Jan 2025 09:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736933753
