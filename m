Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 51F1542A82
	for <ddprobe@lists.linux.dev>; Sat, 25 Jul 2026 16:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784996434; cv=none; b=lACMXcrIqNOGw36W9a1yHOiO8v3qhCCoy6vPrxynUlDu4f/3SDw91C/XYuVuj6fS3HzppqnEZV5LZyQbw3o8vOHFITGqkcLfGpgMauv3RtObN8JNh335lJwiqtKE4HbGW9vn3do9vebzBYSW3yqPmN2TKc9VC5bXHa2to5pwiG4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784996434; c=relaxed/simple;
	bh=Z3cIuPPlqYepebgUBmIwhsOLLuUAA2iquZPIwTtxBMA=;
	h=To:Subject:From:Message-Id:Date; b=UEgb4MnUNjJ1QR0AaL+KKy1ouZLyrUV8Oq6r81S8N2DSE/4EdOs8UFxeQ6iZbj6CD1qQz/iyLIcbl0IglsqSdOVI9nE8M2Oq8DOdiF8D7kcEL7WlWj4yAVgZlIcysQyeADEV6Z0nWEsctRH2FSGnN8t0DzaTHUdt+0MXzROTo8k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=J8oCknFW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="J8oCknFW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0076C2BCB8
	for <ddprobe@lists.linux.dev>; Sat, 25 Jul 2026 16:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784996433;
	bh=Z3cIuPPlqYepebgUBmIwhsOLLuUAA2iquZPIwTtxBMA=;
	h=To:Subject:From:Date:From;
	b=J8oCknFWgJaS/QfgVOIbF6Rp4vUMfiOeCl0k76xK8PQTgTzSOX1J9z2PgImGRrGw1
	 2fNZuL8i+hoTi2sF8TnVWjCVPtBTskVUap0dDn/e1gqFT5pDo5U/MMZ71MF8sroKTI
	 RWgsfJ60Tin2fczsQoZyuW2YpuFbJ69Mif7Fna0ulcmC5nUa/ZB61iMQIEJGtLU3S1
	 ZwUkWfTJcphchRJRbjHutVkQ7AcsLTcR04a8I+MyDsNkd6k++gpOCKuZAnLUBEOkVS
	 gWR9f9F2CPPfO3HeKYniwrgCwRb4wLAZGPVYk6yqpeH1zq9DIFlD189NRUwe0O2aPh
	 gi3As0ik3/WIw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB680C531C9
	for <ddprobe@lists.linux.dev>; Sat, 25 Jul 2026 16:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178499643368.16739.16235117230707122416.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 02815c52b95caeb100f5a016bc860869b7232c7fdb2a0d7ea205dd8545effff9
Date: Sat, 25 Jul 2026 16:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784996433
