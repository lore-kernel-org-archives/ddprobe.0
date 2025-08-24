Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34E2F1A4E70
	for <ddprobe@lists.linux.dev>; Sun, 24 Aug 2025 21:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756070994; cv=none; b=d0F5vkPelf0Qbxova2kzijazqNYiCfVloh/JICoKU1pndJPKwtXw4Rdm3EKX/Nmjus+0R864zde9qMfE/a/UFohvwAcd/nmL0+S5zOGx1mjQRhX40J81kdI8erjr4+7desBwLEnmIg8iVMJKa5lyxT/wBVAq35FiIv4O3SHTWAY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756070994; c=relaxed/simple;
	bh=Ywqrr8dcDRqM4aBjCX6shKuOfUTWbnY2G0M48uS93kE=;
	h=To:Subject:From:Message-Id:Date; b=Ms89vDTZKCPEiTH1igQhK2lFhqKBaYvfHthHG5cQ7EzizuWdco+v/OodyrnDlWP9KIbqGQ//1ktLBAPoHwMFD71Ak8u2hg7+qIv24GmxrQTSA+mAfKSjbr0T+tipysmeEWjbMBW/wWGQavV832nOXUd0w1E/c0RTsVof5iPwyKs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Cxe2t5md; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Cxe2t5md"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9347C4CEED
	for <ddprobe@lists.linux.dev>; Sun, 24 Aug 2025 21:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756070993;
	bh=Ywqrr8dcDRqM4aBjCX6shKuOfUTWbnY2G0M48uS93kE=;
	h=To:Subject:From:Date:From;
	b=Cxe2t5md5whWwMf4xfIK/9M2Yj9ORRQ5lFL46upyDTU39O5+OtKVEA4UAVXm1lzeY
	 eebL5g3QQ/8S+9T2utYxO+JODU+1vFSFxhIws1NQapy30eABeUMJ1L3JkwOJLF/Pu0
	 mlgQq+vLlH9UTqGJFc60JYzf5gO3E1nEFZFIvWgizy0/lEgFylalca6fdZo0rpBXJD
	 2aQdchBMzPaslsIM6SFtsvMGRoXLmi3b4QNauOjIm+7paZTRXCv74+shvHL2eYHqeY
	 4fUb0EKTevGyhIsL3Y4ktKb6esBPRjjHqZnCgqWUBqSIbwzvmfJBL113nIUGxMQM1l
	 gO1VnBFh/KiQg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 959FDCA0FE1
	for <ddprobe@lists.linux.dev>; Sun, 24 Aug 2025 21:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175607099359.7658.13573649929752676081.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9871971c3768ac6904ced68487ac54e974800703e844de45f41d92fd68e47a7b
Date: Sun, 24 Aug 2025 21:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756070993
