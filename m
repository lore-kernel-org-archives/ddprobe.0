Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C8867284894
	for <ddprobe@lists.linux.dev>; Tue, 19 Aug 2025 07:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755587993; cv=none; b=GXZ0xftGD7b5KKgbQzGgwxvddWH93M9mj1tU6FzVJoE2fLz7ew2UyKePYw1pNMINZUDQhoVODcJdYdp2AKhZBqeL7/IMg2+d0vmyKvATB5Qkk0/oWU36sOJ+hVg41AI0qymRZcpfZ/eDv+5zDkO8G5FdPZs2mk6XC3Y2hhAwfmM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755587993; c=relaxed/simple;
	bh=mZBTFhMBBxX6sjgT4153U0K6DlGiopScCrKOJzZNcNg=;
	h=To:Subject:From:Message-Id:Date; b=JISK2+pQOJ32SPyM3DzgoHNMlVs2RXC3dyKcfOaQUN94fnSZb4hV4pu2TCMBSuAumaE5+V0qpo9EYP9irJIi7z+scfi0sWptyB6kEr5plox+9hgSyUdW2iFZRpecsWDYMkyzClyHNE0Bw6e75vPkNjbRBEMZjepa7g5K3WUhTlU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fjvzuqhe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fjvzuqhe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 99CAFC4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 19 Aug 2025 07:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755587993;
	bh=mZBTFhMBBxX6sjgT4153U0K6DlGiopScCrKOJzZNcNg=;
	h=To:Subject:From:Date:From;
	b=fjvzuqhez+Va+cZ5WTRSub908WyldatZ/Uh+6vrcxRTp/JQsUz5flHU3NmejNRxSn
	 C3Hu0rgf7xRg9MIQmKReANEwldWSAx8uWbWcVDAaT19xv5QzcT4bIXPahRYzk7NwnE
	 6Q8bB3On38fjz7PUucotoIlTJudShL+RfANfpLp23DA2FdeZr828aqSzVk2sw/KZDl
	 Jx42s6tp/4xKqG1LhyeOru9MJs6vlkRpsiAKEpLpvAonVvdTapmB4/PY4D7KbRVgOw
	 vSbbzMl/dLZype1TMWa0JPDITljbfdnP7mDn/pwajkFOz86nuoZzCZczstykhcCAbB
	 RiORIfPAe2v/Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EB84CA0EE6
	for <ddprobe@lists.linux.dev>; Tue, 19 Aug 2025 07:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175558799357.30342.8753416249943656467.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 536b4dce8ea41e0bcd3656f9926baa433da1aad1ebcf8701d0d69bb613ec3576
Date: Tue, 19 Aug 2025 07:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755587993
