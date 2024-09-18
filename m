Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48F5D1CB322
	for <ddprobe@lists.linux.dev>; Wed, 18 Sep 2024 21:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726694154; cv=none; b=IUsedtxezWV3PKzS4ch4BDOoXkEKT/To4XT3+jZtE/a+qqhuzDblkqUxyzlz1gTqWmcOJ7Xh2GkNfp7IKZuP9Q4Io98c34kdBimuhCv/O8r/2vsRmgds+7262X/Ux2tPRYQVAEWDwwP2jJSfSiqGaxyV5xjltA9hRKKYenguqfs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726694154; c=relaxed/simple;
	bh=5ybv3PJoGdkmd1w8sDxGyFqsuuU9CJdHZe/RUdNEY0w=;
	h=To:Subject:From:Message-Id:Date; b=ubrOOJuWoNfvLVmeMsQmha1+2jkNcL2++NO3ZXK5hJLAfYEgkYIbLNFwjwevZGognE05EzrdCoSQaz21wTk0Q8UWfyBTt3gaxO8VtPUWxWICgD7rdT0MIoZOpqHzflF98Dcb26hQurn2HdLA9MLZyysdPfqjbZNfqelNTacUes4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gbkCULjj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gbkCULjj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B022AC4CEC7
	for <ddprobe@lists.linux.dev>; Wed, 18 Sep 2024 21:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726694153;
	bh=5ybv3PJoGdkmd1w8sDxGyFqsuuU9CJdHZe/RUdNEY0w=;
	h=To:Subject:From:Date:From;
	b=gbkCULjjstMnqegGcDE6CNaXxTLgj/a1O2uv0vBNRIMfeeMfkhLrJxTaINQeXFPcs
	 FJYMWmzZQrMpEgLksRoWdGcpiBKiJhfGJi1FLYvP7p6rrAcbS4/iyRHf+1j4Q7PFnY
	 NjH6wPTxEtl/M/NUlZ2A/ZCQKCk0c3B+vI1x7tJc4qg7J1cKWUxtTnoh/DogX3TJfM
	 VTv9j8YjpoYcNP/7eQuk4m4KS5io6NhFpL8DRQsxVpcWWkMxn1QBAxuwuC8KrdVwIy
	 RGLMUt8bXidvl+SDYceQ6x5VSvzAjofqTW08ANVwXxK1RiyXSfA3JQh8+IVRkK4h3x
	 zoglPrFfxYp0g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D299CDD556
	for <ddprobe@lists.linux.dev>; Wed, 18 Sep 2024 21:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172669415363.28318.7453100283914367001.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ab91a2a144d78ec4949d6484317a0ef85e007cf0b366d0fc938e3d22eccd66be
Date: Wed, 18 Sep 2024 21:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726694153
