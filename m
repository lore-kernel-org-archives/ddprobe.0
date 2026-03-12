Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 085D2351C0D
	for <ddprobe@lists.linux.dev>; Thu, 12 Mar 2026 02:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773281694; cv=none; b=g/ol80V2d7dbAyo+pgTred79DbrCfmq8SHtUSLheWLKVgd+TFsk6Lq0up8cSvhXt3NLOqlYDFrNdK55qa0Tt8X4YDbV1W0+US7g1q03xBuw0esoUDxlxzDerAe/+NlRMIXCzrjLS6LMtwqq1UTiQuC9S7ZX+WPN2V0LXqN7f7IU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773281694; c=relaxed/simple;
	bh=eTUSc60XszOwc/dTcNAOngE4p7EyKRbVMVTiyaOLbuc=;
	h=To:Subject:From:Message-Id:Date; b=LViPi7th88VsN9yBT8mUa0zCOyDZaZl6K8CrUDUsvMajhpjCca3VKKT0Kje2qKW8Y4k8Ny+4HiEoOKMiC97Ij50EK9mqot7dfUmqUFMS/dq8STIUFynnJK5BiVgfA0UGvN4Ii+K3jpKjp0hA6V4f2qGAVt+yYW3PrZ4PSi95mYE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bV9GYWsP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bV9GYWsP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A291DC4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 12 Mar 2026 02:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773281693;
	bh=eTUSc60XszOwc/dTcNAOngE4p7EyKRbVMVTiyaOLbuc=;
	h=To:Subject:From:Date:From;
	b=bV9GYWsPRO5m5ALwJyVT37muoz58rkSyviQ+34sNRDydV6BX3Y+eTJU2NQeT2+u7P
	 7r+o/XTcTLbf/k/4+II4lSdRzxjjbVr5Igjd2+AepKf/swIdwW7vA2crYUQSK8B59O
	 JCXyeuUst26JYtYI6QEugYzbpMmQOdwZGwJoADr+0kP9OaNLbRpyh+FW4XDnvLq33s
	 p6vdP3HCF5MQNQKxlOdNDeic90Jmw243NbhhYoLUoyy0wdo3ob8AG/gjn2xf1ZqoKi
	 4ys1NjNme91SNqAf/aoI/ptIP1ByOAxKA/2vEcvuFCA0S33BO6RvicK2zgqjkxBd7H
	 CCjduE7GRL0tQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90951103E2FF
	for <ddprobe@lists.linux.dev>; Thu, 12 Mar 2026 02:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177328169358.29910.4432840594427337957.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b46db339d7396318622c72df8ba5703af9e0bbc7141a2b106098d916bc0f3b04
Date: Thu, 12 Mar 2026 02:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773281693
