Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E54A1EA7D2
	for <ddprobe@lists.linux.dev>; Thu,  9 Oct 2025 06:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759991994; cv=none; b=d9HOkf4K6TRztLh09H1th+XKFSSvjvyJOU8Ifa/mJhOTs49a5AzwvzUWpTI5xBIcuXaP9nAtkTWhBL+33K7Clxc5JSmf4CzZ3Xq9MyLG3z/BPGtllHd2S3/6SrCzhT7PnTcYu5MYMfDMGdHKO2/H1KrDhfVQH6kfnse4ssubCks=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759991994; c=relaxed/simple;
	bh=JfpxeI2fq4ZMU1BHoglDCfyALk7g51z7ixOGY38PLsE=;
	h=To:Subject:From:Message-Id:Date; b=Rsjc+pPMvKXlBT7AnhVP5/I2OM0xcdAq4diAjO0fDW+xiv1SLZ/O2lDs8gW52BYRu4bJ4Vzphv9MBEBELciTOlz9rQr/gRgaU+2nXt0SPuc5N4bZ4BYapWmfDhDgRo91/xXjHhAk1MYSPBbaE+6uTC7uc3AkDHfjw6eo2n916WM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NfXy30B9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NfXy30B9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A10F6C4CEE7
	for <ddprobe@lists.linux.dev>; Thu,  9 Oct 2025 06:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759991993;
	bh=JfpxeI2fq4ZMU1BHoglDCfyALk7g51z7ixOGY38PLsE=;
	h=To:Subject:From:Date:From;
	b=NfXy30B9kMrpGr4gQ/bqQbO3j9NMvutTGFRXe8IFs8U+lAdqHF4YMANYjrN45MY7p
	 3d4Q5aTpMOjF6O7w4Uiag/HrHAolVuvD3NhsbRRrILMKKv3wLqDj0nqpk72MIRL/Ql
	 YPBFxRLDa2Tbfnd4wttR9peqD1KO36X2N1BqwdnlWg8Zw1C7ArMePGUCNyGflyobjt
	 MQWiP2y+ZnxY3aazmxG5DMw78VI0BDNj3ab4YmbYhsm/lFM/Ny4vZcUdGQUZl3mHEm
	 jiQePb7YcPy7+VSbJu1MZYwF8FBuuThf8OKpQuo9WNJTdg2+zAP46FfIgZpmozl3m/
	 /AIzebNELavyA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FBF1CCA470
	for <ddprobe@lists.linux.dev>; Thu,  9 Oct 2025 06:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175999199358.2255.17915267499717491834.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b0db5ace53ec298dd6c2c2a76419594ca4736c1886bbc001260184e49e2a6b67
Date: Thu, 09 Oct 2025 06:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759991993
