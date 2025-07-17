Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A0852904
	for <ddprobe@lists.linux.dev>; Thu, 17 Jul 2025 02:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752718794; cv=none; b=Pmm6edHKLDIl47US/zU0fOPXdKtw3XprTy7JWZQfyOmZRJT+XW/5NN02V6HQofFbUvfrV1u6cvc6mnyj5XLVfg42+JW3Ypej4kkEleGzF8SbBncadBsXjxX8UXas91wEwzxHucRotGKvVxiyVA2DYVwalpffZUe+Pljj4UEchag=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752718794; c=relaxed/simple;
	bh=d/WDEoqv1DJez7CgDW3snzvWkGIcyrN3m7DsseAv5fY=;
	h=To:Subject:From:Message-Id:Date; b=BUTBju1foeiBi2VvdN32OSB6mpAT3TIYEOjC6RNmH547s7aOWu6QlQtPL6vUkHF3UF6BMIc8pVKxsl3YFdAFjpV1BfwoyIW6LAbRS54Pz7l3305A1n7EtUWcBSz2uGxM8DhhBXDDZTP3cWlJsd2XaqLI3pIQoppHiba+SYOTgmQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aNw+hMUp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aNw+hMUp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8DFDC4CEE7
	for <ddprobe@lists.linux.dev>; Thu, 17 Jul 2025 02:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752718793;
	bh=d/WDEoqv1DJez7CgDW3snzvWkGIcyrN3m7DsseAv5fY=;
	h=To:Subject:From:Date:From;
	b=aNw+hMUpkN6jslHMUupmHMt69RzDrkHLPitipokSZ1yg4gFjAWmcaQPRyeAbRjk74
	 aAK0JuEeRaqYEUYhy1xHIN86RAbXsrmL1FSUOAiMUqD9zGDUsgU0TNzRwXv5iJrSZZ
	 EN4kkn2fEQp8OkZYYKdPtOnz1T26N0a5CSLpqH6dVPimdXfNzDEKBmCsjd8TWkaNyl
	 FsjzwEkzs7tOXWeDcR6UAhiLabMeqnGRa5IXUcv5HA6Lq2gNkz+fx4F3WFPHJvkO09
	 44gvI431hiEJYYKGvkLDeHyNIszpUUCHfRABK5xpLvOM4FN5xEiKM4U1y8nsJb1amU
	 9zd2PWBnUSQGw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90D22C83F1B
	for <ddprobe@lists.linux.dev>; Thu, 17 Jul 2025 02:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175271879358.17425.10772456992899221182.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1ac6659155c9a789dbe0d8f13f4a8462b111a2e07683f60dcb74786f81365425
Date: Thu, 17 Jul 2025 02:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752718793
