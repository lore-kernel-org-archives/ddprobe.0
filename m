Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2461624022B
	for <ddprobe@lists.linux.dev>; Mon, 13 Jan 2025 18:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736793954; cv=none; b=KmCILIG5Btv7Ifl4cr6wc+rOWcxFj33d1SCqPtTwGrzRJzBiSi9MeBHg6nf+E03vtf5lIGkGoUkxeyrc6Sc5VSCkwdFUXJUAuh4m9gn4AwH7k+J3uP6jPZsXcpo3joP+nPzn7WDREOLjLHmy9PjrJng/zBKtMrYGxD6CAmEWvcM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736793954; c=relaxed/simple;
	bh=0CXInR4ETlY+0rMNlXSBAef1Tz0MuwKlekOByOQMNWk=;
	h=To:Subject:From:Message-Id:Date; b=fStU2Lq88ZiUeydDFMBTcLpsnrVurTBg8lkuxT0GALk+yQ9RUd6irkHHHfpgePkA4ekYJYe5yMcgUl6Ya/SVfdow6NDUiA3may4B8WZDEqY7ggwpiEYFpMh0HUCmtwNNX2N7caRI+a/g5s1qkuTGAoA/GFD2lp4KT7BDF9IY0To=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qNfOdbN1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qNfOdbN1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6551C4CEE1
	for <ddprobe@lists.linux.dev>; Mon, 13 Jan 2025 18:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736793953;
	bh=0CXInR4ETlY+0rMNlXSBAef1Tz0MuwKlekOByOQMNWk=;
	h=To:Subject:From:Date:From;
	b=qNfOdbN16r1VZlf7dS7AaazE9C0AddK+2FzThk489mwBph52Odyk8+JJGU53Fhc+M
	 633+O6JjMxtGHLuStMwJYZ8Xq3VuQBfoU8U/bL7fw/BANMzZdvWrLVRAGfYV03IMCL
	 zlgxXlmn2E96J8kHRYtO3Ju/GkkCNg0wxUNfJSO1QChmsFZfbnFdplJ1HMMvBLBDMc
	 nzbJtILXSdueTAgyTvKWzZfbmzDJAVyBEOz/s+DuzDkiwTpK/9ksEGliMtd7itfBN6
	 dABa7C7ayPeUqDwGQzK6vimbb38ARJ+sMlItfC2IKamCXt4KS1N079JR+Zlxr/dlra
	 w7T7f03x2dVVQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95B70C02180
	for <ddprobe@lists.linux.dev>; Mon, 13 Jan 2025 18:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173679395360.3746.13347610558981784307.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e8eb3a51180176a377ffd53148b2f11ea2df2c05439266bfa8e666683e636853
Date: Mon, 13 Jan 2025 18:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736793953
