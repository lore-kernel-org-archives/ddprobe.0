Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22D06182
	for <ddprobe@lists.linux.dev>; Tue, 17 Sep 2024 17:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726594554; cv=none; b=avlGC2jv5cK9wgpvhwlrs+Fo+FLyQWtz4jtl1Ff9kDxgRdKb+ZUKzKCv9FquotC/IEfw0fMTqtw6DQWSDKCHTVUSAZm0Y4qoNb1gCbSL7/UGx0efjoS/LHMALTgGHGdnsu7aDf/ACf+wEFzJbU0HAeDqPF66938XVprTdJPDKWY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726594554; c=relaxed/simple;
	bh=OmuL74gUS5BSnbQWJDe8QH/9x8XEGBTMVQfBOKLspWY=;
	h=To:Subject:From:Message-Id:Date; b=ilZkQqmfqHCjNTrfxyi949EsNBCKu3jcmUnoZzAEE76jBCH1b65PvxaYjTSRagOjgVcPEDbzx6SQMwywNMJMQyXuxByHDK070C/XsDlQDDItN4kaojQeT3kQu7vUBr98HhvC5zuaIiFFd7xCOL01mIhLTqJ6KvQJXoA5nfSyK0s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rfFW9WoI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rfFW9WoI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A78E9C4CEC5
	for <ddprobe@lists.linux.dev>; Tue, 17 Sep 2024 17:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726594553;
	bh=OmuL74gUS5BSnbQWJDe8QH/9x8XEGBTMVQfBOKLspWY=;
	h=To:Subject:From:Date:From;
	b=rfFW9WoIfHN3yW6b7MhekK0Mk1Kgx9WXk9n0VIBpB4ocrcRxOUmVWFvbSwbFFxiJF
	 +3hpJmhzqNjPcFvOTM88nBWEQVujoTCqQOheFr6zSzrXWRjDFZo4U7S1uCN71Qtntq
	 oSRward02SJYqHXBqMENTcEDr7gn73euY+uuO3zww4yzbhXLLHi9gX05eAkMyqCBti
	 AVYFhaK7CuY6PfwvOLFJ/P+CKxoyObyfugtj5oX3tyU7bTvpcg/tqNPLRk3CWxsPx6
	 ImJidKsdH/5GbBcOv/kid74yT1AGqLiyPoUcSPRY53rwk1cFKX2kEUCrcMxsafU35Y
	 PvHeB5r1pVDMA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91C10CAC594
	for <ddprobe@lists.linux.dev>; Tue, 17 Sep 2024 17:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172659455358.4562.14099795822842597201.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ddd3048252a5874376e0d7e70a1ff27c9dbcc3de2e768c1ad93e76a36e56b39d
Date: Tue, 17 Sep 2024 17:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726594553
