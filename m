Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 336BA1ACED9
	for <ddprobe@lists.linux.dev>; Thu,  8 May 2025 04:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746679794; cv=none; b=RfANsPSSAUsxPUJc8giWk/dDGZmbIFZLZH4ZeRqcZYN+A4o2+/GaI/t8TOAhV4NevRUpSCLdLDdFXHtRBlW5+/yPH877AlLnLMnDorZ8T4IBtwIaUO0kPG2zEJwqm/t6kRwiR5/2JP0FP9Xkm1/L+sfHp5P6+3xGT+OdwW0hcSQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746679794; c=relaxed/simple;
	bh=qrQmVvYcuWDGNp+37pmw8L0ARnBei9OOCSKruiN2m0g=;
	h=To:Subject:From:Message-Id:Date; b=Mften93e8DhwG6aNdGfJpEBfRFCKXWx9hcZLUoBxJafQPn1QHKZ9vcnokrMpMOPStvs5YofxY6XKgKd/0/p1sntaJIMibtA4ckUXjmAfjUuX1L1hpgvnl7+UZXHjxrGjpHB4dpS4FPmnhZOTCnCs3Ak8WemODPIIgURv26/TKaY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TY6E0O+A; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TY6E0O+A"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E7D5C4CEE8
	for <ddprobe@lists.linux.dev>; Thu,  8 May 2025 04:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746679793;
	bh=qrQmVvYcuWDGNp+37pmw8L0ARnBei9OOCSKruiN2m0g=;
	h=To:Subject:From:Date:From;
	b=TY6E0O+A1ZP7q8G+M35yzfENmqx0uxPA3U+qYdkC4yvOsKKrTIEuqtBytNwk+jDrK
	 YbHXkISvDKVZDNCzOsTdg5yzoBpt7ZTfT357LgFqtCVmXOdCj/grYMSnaVWs1YkdgP
	 HqiICR2SJkYjr80e+nUePbRWnC6DPiPEt1jEcmY1U7gr97nOaRjeEimNkcHkYJ0Ih9
	 HcsYa5uFKI2KQCI9F0vPeHMT1x4D9fNyECde8qqkXRwBjdT30o6made6GJnxYFib65
	 C96ekJBTKu4mNBANFjCqH1yqarmZ64HI/S8tFbrURpDuo3HxdfSfB86jt/JaI7JZnP
	 Nt8oTnOlOEIAQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F3EEC3ABBE
	for <ddprobe@lists.linux.dev>; Thu,  8 May 2025 04:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174667979357.27756.9651200307214234257.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 95186d53281f28fe46c7f5f9d3db7ede871201b2e218351816225ae9bea70793
Date: Thu, 08 May 2025 04:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746679793
