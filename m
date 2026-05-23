Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48E122836E
	for <ddprobe@lists.linux.dev>; Sat, 23 May 2026 23:52:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779580354; cv=none; b=e8QqMIMuYAQA2yua3h81R3FShlKUCESaSb0foDZisDIBjz/IeZZgd44qd9qrppn3wLxkkU/IG95mMIDK3MMDFdAFBFXPQGqIo8qx8XmpEosLj1ZzntJ+ZDBDMmnaJ4mXDtssL4BZzbcC6fyf//PqsNEhvH+TEerOraxKFVRUygI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779580354; c=relaxed/simple;
	bh=ZpDUM1Kohtl2u8WydpVVTs7ArHaVA/TcKhCAiZ5wLRQ=;
	h=To:Subject:From:Message-Id:Date; b=HAQyx/pcrHNIXfSEZXD7NneAXFFp1Qmi+0/1qur6UKXRfcHGfbqb/tN9Q6ihqhINjnAu9SgnqXKv7GxPdS89QwEqWfei+CbWzuqKD20x8gyL9+6xQ5QqRInR0KASskt/rh4vzQPkW3aprg9gAmbbE5W6TPE9jcMifgRMBCWDPdQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ApiIBOH2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ApiIBOH2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA2A1C2BCB0
	for <ddprobe@lists.linux.dev>; Sat, 23 May 2026 23:52:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779580353;
	bh=ZpDUM1Kohtl2u8WydpVVTs7ArHaVA/TcKhCAiZ5wLRQ=;
	h=To:Subject:From:Date:From;
	b=ApiIBOH2a+CcQ7DxG8qvIvliYnQOxdGeZTjnGdFsgjptFFLkzUdpew6wzMG9g0xyO
	 DqS6+LWH9SOtnbk9IVKoq4lsxYwd3pMNxZvEZwu8JdhZpYEwUwrFTDyikg7HSeDAUv
	 5D4kzNt6G5c3OIvXrKgWCU4bmSaAonYCJdF7GXJyAQFhTx2unPtkhWOTxekrHdkuDH
	 GhG8iK/BzsmVqCY8GsqqSF55tk1RzciHd57jQgdfloVjS7yKYnv8CHkTBMnarvNgKE
	 gduD9tHjjBzmwwrVgZj52FqFNoKz1DKYetBWXh6YZrDDO2AlNR8uXI75NHmGmVvib7
	 5O4cIAxW8PcGg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADB9FCD4F54
	for <ddprobe@lists.linux.dev>; Sat, 23 May 2026 23:52:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177958035368.31011.10459745920508769074.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 15bed891829d98018c575858f6767e3605c0cf61ecbc45f14c45fbc0d6408710
Date: Sat, 23 May 2026 23:52:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779580353
