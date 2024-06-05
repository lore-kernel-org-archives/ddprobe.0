Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 50F8613D62E
	for <ddprobe@lists.linux.dev>; Wed,  5 Jun 2024 19:17:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717615043; cv=none; b=JorX2nDg4ezhOVSGI4OCiUOPmBY7HF/OQCvq8zfM3N8SQ1Th8AeQoqsP8fmzBxvNV1DvRJ0ogm+07eKMW5b4rq1EMi7h2wNnTmnwuo6E8JlpvlNYOKHg6rDHiN4CBrnXK9US9GiRxan5eoGbFvp5VGEIsqd64eKZ4PEJWO14q+M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717615043; c=relaxed/simple;
	bh=6OBOhEhn6d1oZOsabWrFKA2t5T2RpKiNmMo6lOoI5oc=;
	h=To:Subject:From:Message-Id:Date; b=hmBinQtczzKVxoKFLPRhkyPFkbdq9JBobyUpc8BWODWk1kbmTp04vrGXOkfhoQiWnauLNpP4iG/50nIKfRBTbHNquX0nC8HHqijNAozIOFvxYoXKtHeFY3KnlVlkO1IiZC1hm0i/LlWdjpLAQvt5pfJlMp2YrTkpbrHXBMBHw78=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aAIH7rbp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aAIH7rbp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D43B4C32781
	for <ddprobe@lists.linux.dev>; Wed,  5 Jun 2024 19:17:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717615042;
	bh=6OBOhEhn6d1oZOsabWrFKA2t5T2RpKiNmMo6lOoI5oc=;
	h=To:Subject:From:Date:From;
	b=aAIH7rbpQT8ePVnFYLoSvLxQ+3O8EDPNoZ7uervsD/Gg8yXoh8qeX+BwFwi7UcCRv
	 2Oijtyq4XsXbL+XzQQTY4DN+BdZjU1MciC4cefaYOV7FK+Wt7dy4g1n3kcU6msJt64
	 sp/72BR0am2FmEfIQPbaLD1SVxQt9txN3Sk6dd2vKJ5gFyzShKqyseHpD4OYc7GGHf
	 cwKUi6iTLtrt/36JdlrR4FGTGtf4aiJ8c4vDA+89Sc8RkMgIxF8AlnypPVcnHuVC1y
	 UReLiNBI5GeLc/5Y1B5KMRh//9UAEDEPe0eS12j43a1A1G0/cNE+tdO1IaNdMZnkdg
	 xkXvHKL3AodjQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C4425C27C55
	for <ddprobe@lists.linux.dev>; Wed,  5 Jun 2024 19:17:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171761504279.22174.9623702208931511374.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 282707701fa93adbf3dafdfb926ccf5c0b09bd6ab5f1a2f7b8d55de6ca3c7472
Date: Wed, 05 Jun 2024 19:17:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717615042
