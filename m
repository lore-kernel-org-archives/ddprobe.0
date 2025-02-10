Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A8E6157487
	for <ddprobe@lists.linux.dev>; Mon, 10 Feb 2025 17:05:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739207154; cv=none; b=VZrGvfDrJE0f2dE/9tqQrtTz3t8k96bpFm+QubFgc04Yda83HpNoBKkZSPv5nUVFNcRbNwe/BjhVQYdsUWQmf/grgVB1UV5e7tp4prR87wWYV07X5KVGFtmF3CTKhDeiPH7TBiumJcV+jw4YtvXwVrZY+XKSuMI/4S9tGI3TiW8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739207154; c=relaxed/simple;
	bh=jcwSXIUonBi13umALp9hzd3IVMgz9soOCIUqHxEas7c=;
	h=To:Subject:From:Message-Id:Date; b=iomObwm/OSV5tSYAT8jftGYjhXNMf0ICyWzZXKfGm1fkxxjP3mwBdLD8fwD05T6pBhn+XARTbBiCkws0u6i3PcZ80HAhWJ4Af0Ic+cmYP/t/o6tgXBRR3N6+xaF7JRuWXxVsZjlf6yD8JMCG3Lne19EDK43JIl6/5cUO41ADyig=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=klEtg827; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="klEtg827"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 13C35C4CED1
	for <ddprobe@lists.linux.dev>; Mon, 10 Feb 2025 17:05:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739207154;
	bh=jcwSXIUonBi13umALp9hzd3IVMgz9soOCIUqHxEas7c=;
	h=To:Subject:From:Date:From;
	b=klEtg827hmV2q2q4G2g/p5MKYEFDlWMXku30/B0qIRLbcUc6ifFFxQGEqlMtQI3kI
	 rsEuAQN6Lidq3EcLzTX6JrLz5VKuVrPV8hMi0MqdisCG8rFSfS7EZu7GBZ++jr2EeI
	 oInx9CFxayjYg/uVOzKCyMbJHfyCP2ItObXcWqjwY7boN2X+aj7ngFw+6/2K7P5Wj7
	 kpIKP2QtiK61kBWJLystPiWGQkn9dHbP7ZUX10Ytk99tZZBfdjVS/uqxE5+7ZpL0qd
	 ZF7Xyy7svXiadQhMFTKEoxyLEVPsxdAqhU6rkeHDOeBGHZGamEU4QQvCZISmWex+a1
	 v0v7EgYDEyYiw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C38FBC02198
	for <ddprobe@lists.linux.dev>; Mon, 10 Feb 2025 17:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173920715371.4023.9874884353822069987.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 361eb4dbdf07847eafa8e6a4251d8ed95484fc8deab45f15789edbc02153aea8
Date: Mon, 10 Feb 2025 17:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739207153
