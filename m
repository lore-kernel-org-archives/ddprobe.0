Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F05092BEFFB
	for <ddprobe@lists.linux.dev>; Mon, 12 Jan 2026 14:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768229634; cv=none; b=Hz78JEG/wm1dxdJqw2AY3ACXDLKdVmfICy6uf7lOQn0bu33OXCzBfqbv3qkaVVHwai+rjiajjVkIx+GwuSQFBT0j4SHv8GjHZ1FKPhrda6HCaaiRtzMrh/RxX7X4Kb767Mqau1VFeCNPv34S7NLs1+XoFx9UNrf6RII0e4BybtY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768229634; c=relaxed/simple;
	bh=aRSxBAmrJ6okd8j9ogiq45idBE5Ypnf7Sw2M39wJk4E=;
	h=To:Subject:From:Message-Id:Date; b=qfPPk4AiSa3DhtRUJRK5TCuCUfMAX8M1b/xa9XaAnSHTFfugBngyzlmT3bhQ9fq/mT1V6OY0dLydtH1Grn+BBVkGqib1izX0OeuA7MyY4U3uVJTIgVheoFLljaUzCnWgiETMgS11BbMSd58RFLcfNlrnyejI/Zk7S3sD4RW6kto=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=c/dxmO5Q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="c/dxmO5Q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D889C19422
	for <ddprobe@lists.linux.dev>; Mon, 12 Jan 2026 14:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768229633;
	bh=aRSxBAmrJ6okd8j9ogiq45idBE5Ypnf7Sw2M39wJk4E=;
	h=To:Subject:From:Date:From;
	b=c/dxmO5Q79cknjj0iCmNIyzJZWlLX1nJb1q3LtNDUMCSlry0CV14GeA/F/Zwjgceu
	 P6GcEiimLhTXRCcfXzubZIctfYdXx6OdTxzN0bNhXkM8xGcGl+OZGZsuYuFpCmaQYw
	 v5HnB6KH/uSxCoheFGiBTGFSoFXEprf6xF8BYuMilejYdhQInXCUx1JvwHXxpkqbak
	 asRHnj7/lTX144UBLtuUhZ+0xQqVpPDuiN3JEUTtyXFuBYdIR3vfwjL6BuD78nsLVB
	 98cMZinf5a+aTh/8ysKvAvXViRRb6WBMdoJFqqwxSLN+vXtYDvsgmhOSPgpWYPolKK
	 6w9Q1tgkuMHAQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90365C9EC94
	for <ddprobe@lists.linux.dev>; Mon, 12 Jan 2026 14:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176822963358.20715.10383719688058588822.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: adfcd1eb19c5e5f07ea257b7f29a4a8f9e61e013046a4ed30984750466f5a238
Date: Mon, 12 Jan 2026 14:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768229633
