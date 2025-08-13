Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 134E82F0698
	for <ddprobe@lists.linux.dev>; Wed, 13 Aug 2025 08:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755075594; cv=none; b=cjlxzioaKHbsAiXYHdZTSpW2LnvO/GwamhDadxxJ1pnm5nWFiiueurv/Z5+H1Xl043J99aBoIdt8tHAF4zjnIiQjyP6Yn+Ns0UwRJi61HuH5DN8PnGDtvmswCmhTLMQPe9ocVRg5DjMgzi1woKkaNegwf4Xu2jZW0BUGpOXMgcw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755075594; c=relaxed/simple;
	bh=tgnLFVuG3CkhR2ajcCVQjXPrgNavN3qWdEirukodYag=;
	h=To:Subject:From:Message-Id:Date; b=PHIdzFw3y4nLDxy2teEGEHBJyTH1Yu1bZzWdSD6un4+YiugY28W4vqDO2qFlCbpY+9SKPZoRwb6oHTTQ63R/GWOUgSBa0x0MXPBNalRQvYPmWlAoRTkMvQZS4+iLtv8UylO/kpPQmSeApfuOJSN2vXBNHE/4fSxjc6u2fBUxXro=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=W4wUArVZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="W4wUArVZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A58CDC4CEEB
	for <ddprobe@lists.linux.dev>; Wed, 13 Aug 2025 08:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755075593;
	bh=tgnLFVuG3CkhR2ajcCVQjXPrgNavN3qWdEirukodYag=;
	h=To:Subject:From:Date:From;
	b=W4wUArVZzeOlS6j/6rUANEnw7WvzrFJNhvIvVkmCu48p+5xHGG3WD9Cv7nIk0NI8D
	 hJ3L3j3WAG3l/LYKK23HLyn8xSlTPzHl3OCd1lc/kIBOxxD/J1dWMM+6Pl5YzbQ34q
	 hVZH2Sqabm8D8gURT22kF2ZemanXPAh4/lc8G7oaDeUaMLuOC3PpG3EyYjj/uof66V
	 kh6LaNnJ051IgO+f74m++gOLKrzV49vPxua9uDRS5X3g6TfPlxbfVxlh5+VfuX/fyV
	 rpHx6Iu1ORTw/p38H+Gj6fdfw6CN/AM2B5zMtAVJuM/e97TIOg4aaVFgbegObUxFTi
	 Lf2cGw9b382yQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FC73C87FCF
	for <ddprobe@lists.linux.dev>; Wed, 13 Aug 2025 08:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175507559358.8405.13768691910010756121.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4b07560265701b442b9e42124d78a372331f1c39ec51bbdc10471793d944d4cd
Date: Wed, 13 Aug 2025 08:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755075593
