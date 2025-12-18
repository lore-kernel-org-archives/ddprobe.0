Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25EC221CC59
	for <ddprobe@lists.linux.dev>; Thu, 18 Dec 2025 03:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766029434; cv=none; b=Ai20QviCcIOnU8No8KHHrMQjzicUekE1H2Rl/xkQQLblV+wUa0xA27roTfxSQrY3A88TA705LM1MSJQ1c9nGN95ojE9lJ0qv/6yZytCZIvPvNhI+caCIzUObyXYeYhGfAQDFyScxGA8wq8e4fbpe+8zPB05wsk8SIh6ZkxBN2RA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766029434; c=relaxed/simple;
	bh=PxXkqjqHFHxUejnOqEMFYovEdKEJIDJvdIAXIHEor6Y=;
	h=To:Subject:From:Message-Id:Date; b=b2B81yATGY5xFZErnkCM/gES/juTuYg6L58BkE8Wa7i/0j9Uuf66UaDQsjG7murmymxMNUbk2aeKCvwzgw+pRbglU32tN8bUrKvSisY6i/NfW+rwZo52zAO2T9Zda8LHVKt68mU2w57S0VUNZq6QuOcU4GcezWhulCCbubvZuLg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NfzRJCm8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NfzRJCm8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AEFC1C116B1
	for <ddprobe@lists.linux.dev>; Thu, 18 Dec 2025 03:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766029433;
	bh=PxXkqjqHFHxUejnOqEMFYovEdKEJIDJvdIAXIHEor6Y=;
	h=To:Subject:From:Date:From;
	b=NfzRJCm8m7VOGXETl23sVV5LFIEgUUvJe3BHIzg8cf938GL8NBMGmWG6FHW0+cUFf
	 tDCs8XK/72r+39n9yVa0oMAcoF4ZRlNpGelpgDBZPUxG2GYnuAG4255eRB628ew9LZ
	 szzGYUOJwrf4/I3avNOVVM44dNthXEN0uSVxXnB1gza9GT5dzpXLMY66nI33ANhJxW
	 eo36PYwLT+jqTm4liNB+iNgSiFmyVwICrmdjGCE737YtymsFCzV+U/MdtJ/F6b9ZEY
	 2oSRybAYtjAQN5wxCb7AVpTY+75nK/U952K79gwTFVT+jmA6WyAv0SAlzbPnImPF0u
	 l5ZgswYlxgdzA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A8F5D68BD9
	for <ddprobe@lists.linux.dev>; Thu, 18 Dec 2025 03:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176602943361.9912.15593871956690239006.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dc4b5e41da24e0008de7dae3b7a50896e96794f5862e84929cca6b2944287786
Date: Thu, 18 Dec 2025 03:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766029433
