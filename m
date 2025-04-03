Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B44377104
	for <ddprobe@lists.linux.dev>; Thu,  3 Apr 2025 02:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743646194; cv=none; b=XH/9pD99rTDQv3g94g88Y5rEauwAkxA/NRmKGvY+y6bVLZ460cNzyvD/m85E6YvMXcP8u4XjgV8ecQ+ui5gj8YWJjIm5IxRC3Q3eltWLG26Lmb15sowdiuzSIVe0v5++jFY7uIA73Kik/ItG4sqzjeFXaHdVc0jxVmbhrwmPgy8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743646194; c=relaxed/simple;
	bh=n/6P90oncdPNaLY5FLPEuA0OnY6skdP4Vlk+S193dqw=;
	h=To:Subject:From:Message-Id:Date; b=L9nTx2LBlEqLGPCdEC5CKdbWHpnrdssLpWZPFYaD46ugQNBza1ES6p+5hilgSboXsO7BP/QevRIUk0AfFG737NAS/kfU+15AmydZX5g9I93MkRdx2jG5p2v027Mx9kdvpiYmPkVqbc0svVFA2J/5iZnefTpf29POgtDtQTWpM/c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aJPIPscJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aJPIPscJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2405C4CEDD
	for <ddprobe@lists.linux.dev>; Thu,  3 Apr 2025 02:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743646193;
	bh=n/6P90oncdPNaLY5FLPEuA0OnY6skdP4Vlk+S193dqw=;
	h=To:Subject:From:Date:From;
	b=aJPIPscJ19lpVAL0o0ostNrdC1717IGfK9jNKlLMT48gqQmLcmOBspGT1AAcAkXyQ
	 O7ESleSA+VezRUh/yeLK87G8BXH8inXvCSre1Dsw1J4UCGKD9FDRFneU+t5Z5DIFMU
	 JjXpNTaYK60wPw0tFd2bjfVuls6HbBMk3ZIo3e6lfXIaRRe6OYtR9jMTarsklLwloY
	 49B6OhD+CIJQKmOazAnFc5jQbcQs3BniEtcpWR/eRDQNpNqDN4OSxnSNooIyntQSA5
	 jltfcdG0Bgzbr+OTP1MwSIhlBeu4vYxWE+WCgkT5IdAuLa2rzJxSBNct68OEzC+099
	 eGPVOVtgdrLLg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 962B9C36014
	for <ddprobe@lists.linux.dev>; Thu,  3 Apr 2025 02:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174364619359.10520.10214246575596152107.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: deeb5fde37eb7183e090d9d56196d3c49f2b3b1559072fcdcd6bc4becc0e595b
Date: Thu, 03 Apr 2025 02:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743646193
