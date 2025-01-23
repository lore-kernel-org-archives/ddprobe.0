Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5963338B
	for <ddprobe@lists.linux.dev>; Thu, 23 Jan 2025 14:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737643554; cv=none; b=iC05CWkES4mEng9KIsoGyxLUZylZNHXVuwZHZRtPTKsw6TrvvWLWuOVmhiYVbyOyOnTgNa1Uqq+a4KtQ3ve0kR+mHW5PE8YkKIHnHlbe+7OXwbLfPPEeIVlDM2S3H3Yu20hibjoAEkllomEr24VkG8dbeRaEXIguLBhtg95p0hw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737643554; c=relaxed/simple;
	bh=hf5TCF3GMFjHX+fISyB5dowitcOS5d9MCLyCPoOc6qU=;
	h=To:Subject:From:Message-Id:Date; b=S9iLlND0Q69WUP3DpJwZUSQcKi7kJmKuLdMOYTHwCsEagRQXVNyNvPeCLF5XyJnWsUpLU/M0xWT8uQ5r4xd4WMEDi85/w8JC+dOwcihkWPWQuf284GCje4RPLJEnLo4GfC9IobaiIf56j2yEMb66YlgO7QryhMla4jLMw1AJecM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=U8Crk6Qu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="U8Crk6Qu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BFFF0C4CED3
	for <ddprobe@lists.linux.dev>; Thu, 23 Jan 2025 14:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737643553;
	bh=hf5TCF3GMFjHX+fISyB5dowitcOS5d9MCLyCPoOc6qU=;
	h=To:Subject:From:Date:From;
	b=U8Crk6QuiBoGgHbFupRYxp3298+F1a3Qc5cjsnyVcB62QnXjVJML/1Vi9VIEivO5y
	 2/8dQ7BfkkoiAHTkUHMj2FAiwdTfTAnGabua5KAvYYqqWTZ50hFOxK7iotB+vxCnTo
	 G2FPzQPBMt7ljgaeVapnwxvahIsn2bgLPb3ZuRoA0rUQe624fsB5CuXW2h641dWAVR
	 OUzaY7wZArtXTDZaJr5RxmbmNPmEQhqsvuhgmLLUpPQpjHMIp3nNd6GThT0dd4hz0y
	 6PifpLcuiAz00poy2mkccP2pVFjjkEEdHNdzs10RzLjW06p81qo57E/HBdoMN+8T1V
	 HWjDB2+UmqgTw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A84DDC02182
	for <ddprobe@lists.linux.dev>; Thu, 23 Jan 2025 14:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173764355367.16774.17496117922201847660.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 397e4b34688de61c155975644690259375c4c2f6eb260e6e6042c2ec029c5eca
Date: Thu, 23 Jan 2025 14:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737643553
