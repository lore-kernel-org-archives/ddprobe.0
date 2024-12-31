Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 347D819DF49
	for <ddprobe@lists.linux.dev>; Tue, 31 Dec 2024 13:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735651554; cv=none; b=alDVmksKBa0caKM2Wjd1vzgesH/mYZxXuBiMhuTSnpGHf/vQvxBMEgPM3VLuuJxbC1E0w09PJz5FdEd+fnI0FN9QYOINQ2ityqZugyn6y1vgIlnwA51M7Dpqv0R3KQ7fO8jquTZJyx6sEK3X7jXmwS9SEP1A7ThGuuGRUs41b9Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735651554; c=relaxed/simple;
	bh=kWaX49ciw4P6sHosuDOG0gFaRJeSSO006TwgtIcjKCQ=;
	h=To:Subject:From:Message-Id:Date; b=n+qoBN/8yGOGTWD1cVkdw69ItdOuJkLxPneS03uX7V5JmAdeb3NmlkSv+e6dvPhOIFeH2j2Aq5wLQMrdGd7SlH3uSI6qDwoeAD41W+himelgtIJn1bHx8ymNupVqjKCfbJci460i2j3GGdWJg7tT5Dsj6XZLixmWasHX/n3317M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NQsiM0QJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NQsiM0QJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA370C4CEDD
	for <ddprobe@lists.linux.dev>; Tue, 31 Dec 2024 13:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735651553;
	bh=kWaX49ciw4P6sHosuDOG0gFaRJeSSO006TwgtIcjKCQ=;
	h=To:Subject:From:Date:From;
	b=NQsiM0QJdZYId7ETqr0sgylfnOl9YzzVQhdIUZi988rOsnIcCBP5rFrCMqsajK39y
	 o94IP5Y1dqOF7trXtQBGPnM4GL5TIlPznYQKSk6zCaa9/z6X1r68+0hLPOl9MQTUCp
	 KT0dAq54gwsWx3fv6UZXvKAnDfV46GMeOnPFaUu63hRUKe0BkYEu+pThpmjtO3mOZ2
	 91G2UDT14sCULRlpJNnVQX/LDITYaaKfBgVKCBk4fukHumacPHFUL+Z1qfOOpvKtWj
	 vb2cfi5BZQNonyUZVDEuEMHGdMl4DggbQrzYGVwb28xkvFBbw1AkKPvmY4TT8fdoLN
	 k9dKuyMfh1xkw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92C7EE77188
	for <ddprobe@lists.linux.dev>; Tue, 31 Dec 2024 13:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173565155359.5238.7818567651782384009.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 68ed58fff7077e93c5cda0294008f0310ff345d9e58b72f6f6fdb61c70f31f61
Date: Tue, 31 Dec 2024 13:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735651553
