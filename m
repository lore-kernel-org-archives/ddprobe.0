Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E3301DE4F1
	for <ddprobe@lists.linux.dev>; Sat, 25 Jul 2026 19:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785007234; cv=none; b=JaNCIf5RUDFJNS1QPDWzu1U8hRwUnLwjMlMoBtABBActJgFrzycViKeyQt/cd20d3sgmaKzstDR69nRbstI6bl3nv6RBVMfpdTAGApaHLAzvIFq3R03Z5td9E/HbQQ4oUmcCFr2FO1mPDKBXn6SQscXMhWnAzUQPJCAUiZfaHqY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785007234; c=relaxed/simple;
	bh=75nPhMBISR9TkLXKwfWfpGzcXt/AQlQdpABAqg+1ttg=;
	h=To:Subject:From:Message-Id:Date; b=VQ+4prvO6YA5KMlchdRwCeN7LPnHE5Fe+k68AKvX/YSBENAkLVTUXHpgtLTB/c9I3mlgFtVsuu/eMNaRbN0ahzNWOaiQOCBBMvYXaF9lrQoL/M0F5+Yam8HbzS/dRiyx4vUXINU4ovlfyk0nLUjOiXmsuU3PrLLfmqgFzp7lcXM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NuvwLc6G; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NuvwLc6G"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF6A5C2BCB8
	for <ddprobe@lists.linux.dev>; Sat, 25 Jul 2026 19:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785007233;
	bh=75nPhMBISR9TkLXKwfWfpGzcXt/AQlQdpABAqg+1ttg=;
	h=To:Subject:From:Date:From;
	b=NuvwLc6GckgnF/+ZYyaalu/3e6aS/YtP/L1oE2PDh+3XNHevyTlS7HF4nXsm1ItDN
	 AMHdlbnoTajdKWdRi5NRNsd8Q/90pgdiSsI6w2c3PuH0VCYKWMinQgC8H3yTGQAWhC
	 x5PLT0CPxUMQdcGSqg+RxeIjbgArLMug8iT2BaZK+C2nfUIJ48WTuchLhiHwrt5Rpp
	 uiLs8pEJkwr2g4HV0/ky3YYpqDPIfato8KWZ7gp0XQg7M/JzRe29CDqh05va3cElGH
	 e1tcSnBHnwIL6ZpxcZhDKmuU/2kaVVsRaPb0wB7hB5NeCfZA1FJc+tSZQ3FhorYPdd
	 l2JFxTukZEToA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADA5CC531D0
	for <ddprobe@lists.linux.dev>; Sat, 25 Jul 2026 19:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178500723368.25330.10537581481409566848.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ba0d30f900ecc2c4a5c52ad43ea3b35241d92f9fd5c8cabada366c19a5438890
Date: Sat, 25 Jul 2026 19:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785007233
