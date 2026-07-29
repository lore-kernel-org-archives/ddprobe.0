Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40F1A3C1D56
	for <ddprobe@lists.linux.dev>; Wed, 29 Jul 2026 15:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785340234; cv=none; b=Z95xImf1EN26dZn1+FA/B8MJh1QDzpGbkRRqhUy21WZX6AHCzdo2l6PqZm2hLmdCjgaAISv9uNLIHrg9qFOUF2fwuAE/4uadG+ECZPxH5MKKLxOq12Z6iQv25jRn17Gp/bQr28nJOiNbvFc6xvZYLCn6gyD9gWz3voPEyF3UH5o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785340234; c=relaxed/simple;
	bh=JqsYDbNwAo8XDC+IO/pyhGor8ivN07gnxKuFBqn5xKo=;
	h=To:Subject:From:Message-Id:Date; b=N3gX4ytzm8Xd64gVUl7aWTJhow39UGXgXmg08yitgUwilArXRDGtmD/zw+neeBH/G9+UlILVAldyn/kg26BuS4Q1A/3JKbEdWUBiJ4BaWeDiYQGPB1sU+ZfEwvXJV/Umkarl0yzCTpyaUwbS8fGAX+8E7UUvC98EbTzDNVhhpEU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Gc+kskql; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Gc+kskql"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9BDBC2BCB3
	for <ddprobe@lists.linux.dev>; Wed, 29 Jul 2026 15:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785340233;
	bh=JqsYDbNwAo8XDC+IO/pyhGor8ivN07gnxKuFBqn5xKo=;
	h=To:Subject:From:Date:From;
	b=Gc+kskqlsqCP3/YgRixmYUa6jO9qSQ68TKs7e61y5vldor9IIwr6VjLEtl1cTt0wr
	 wKULBx+P1Hf2bQAEa5dOVolCir140yz3VDM1OM/elJ4zeEP6WWP5PyQ1ELGOS/0LSu
	 9Kr+OTbgAREYMnIDipj9Zz9zfGLCM19Z5RU4CvL/IB30FD38pC+RrhoIpEVWd83tNh
	 /kc6L20Yr22aI0dILl4q7M0cTIg+/qDn02TzetWmwbqpaoOAanbGMm56jZO48BGNdc
	 49dIQAfpYYkB3QlkTfFAiueJy8ABmwh5wmYw3D6g7aUPDPq1AsKzat+Sn2UaF5oQFA
	 pYS0NlDx3h2GQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7F3BC53200
	for <ddprobe@lists.linux.dev>; Wed, 29 Jul 2026 15:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178534023368.28261.2771569191932520220.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ed6ec4763e7189138ffadcc4d32ea05f0fb9a4a27e33fee4f8d5dc857cc90e52
Date: Wed, 29 Jul 2026 15:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785340233
