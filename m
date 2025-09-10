Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 07F891F03C9
	for <ddprobe@lists.linux.dev>; Wed, 10 Sep 2025 20:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757537394; cv=none; b=ZVrxuPQHW9bSDmBbD+Dyxaf84cZ6ropxEaigiaRCpCAqaKYoYb3vOLLXepDHe7nHb6bj0oBWqh0SzRZqbh+dAmMdK8+KIjGpknM0kvgJ03IXWaeBIaR01Db6yULhFDWiKOMs7N0JOnw22ZLFp/JskWqeP5dB4J3LUlbcx8ZJJsA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757537394; c=relaxed/simple;
	bh=C/YK6FJnQMHYgogQMkXL1oY78W+6qucDn8HYyim74wM=;
	h=To:Subject:From:Message-Id:Date; b=P8gVAinkXQDJxmQ00zVRO0jGdoCD5CpOX8QrRGAbPm6Ves4HpDdh6A+seTnjQnIdl6l2k4RJ6bmZq5z5GkAsuo2byu1pTKeZEyxJjHoFMYm0e9EcrqE0obQwsuirKC/jcoIuVXPIAGomoQtKItRgyaikEDxH6YAebeh3LCFZvoU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YfoTQ+4V; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YfoTQ+4V"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1092C4CEEB
	for <ddprobe@lists.linux.dev>; Wed, 10 Sep 2025 20:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757537393;
	bh=C/YK6FJnQMHYgogQMkXL1oY78W+6qucDn8HYyim74wM=;
	h=To:Subject:From:Date:From;
	b=YfoTQ+4VJo1od5EMKqg2mBLniqJhct6bSoh9NjKMxrZNDxpn6xS5HVb2xtHYzkh2C
	 RXeLdatjOYjjznOMGXW0MhhvlUpSD0k5iwnmDHPp13nnszgnsuoS5J75EqEf2mFrCC
	 muQhWNBAhjNFkkEDcLP7PcRikavrXns5B+zk69SdZrGQ5FuH7N2l9govtE+WwiSLqU
	 3X98+2k/Uc3fvRWmbLh5MXt8IeiF9HegDZ9uprikUQHEgCJLTYsf2VfKKu9wpDBPie
	 yoL5loaVVOkxaRCdh2tmcn4ULMW2eePQaV/h/Foyi9NoUpxM9uSbr7WnRxGJlHqUsX
	 hKTY213VEk0Yw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F9A1CA0FED
	for <ddprobe@lists.linux.dev>; Wed, 10 Sep 2025 20:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175753739358.29147.8440277051919831421.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b9f63dd8df0eae78afa598d62a92c89d6b0ea95005d57553ee74ad93f3f35201
Date: Wed, 10 Sep 2025 20:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757537393
