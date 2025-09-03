Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1191D1DEFE9
	for <ddprobe@lists.linux.dev>; Wed,  3 Sep 2025 14:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756908594; cv=none; b=bzy3msZF2+EfxrU5KGybwD7ksed1Unx0g5JJxXoWR9gIyD77Qt1BT1+TnTpru72xQX/yylhOfwC2H0eLpjtskBK03+nYP09EZM7/EebAL7bDbCmPzyQf5dzYed5gMD6ATOIV9cRHK7AmGtMeVtFUp2fmAdGzobesaVWuBgNjCcg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756908594; c=relaxed/simple;
	bh=Equ24knQVbTHFqXmFqBRLqbVOLqTNPgJXYmsGe/IkI0=;
	h=To:Subject:From:Message-Id:Date; b=nY4c3QMsupsfUOSEdktg0snq/K94c/NwIFLfEtJWA2t7xwm5+U9ANYawNCg7pbXCB4OmsInp3FuZam+AfMBj4f/3+I8Itjx09dYhxT+ikGEY7bYAtIFy61T/kv2g6MVrDEyei2fg7HFgB3ghJAeS0qozLO2lZ4kLtZJTm+Xlyfw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PqqcxcmS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PqqcxcmS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7879C4CEE7
	for <ddprobe@lists.linux.dev>; Wed,  3 Sep 2025 14:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756908593;
	bh=Equ24knQVbTHFqXmFqBRLqbVOLqTNPgJXYmsGe/IkI0=;
	h=To:Subject:From:Date:From;
	b=PqqcxcmSistxraE7+cZ4EgXOtdaIEMLotEvcrtFSn6u3o7lHP28Ai0MnBM4A+eJj5
	 vqVjRY6Wfrd1FJk/gWWsqrWJvjFa2HIJS7s1v2TxNMcCEio/zU8cktiA3uOdNgiYZ5
	 IMSJuBPp+iyQ3apfMYN0MsqVWlWMqnzYLZHm/AX6BXoQKY8GVJ9DDRdME1/1dRl/58
	 vryA0BID0WxNvRfkPW4BuJEgIjLoDJiekC/3CGq109DI+QlM61aryRLtlRAksexPCl
	 YPMZFIBqpa7tl//Zmhk3ArVQAmM0dZzWR0Nmo5Ssc+UuvqVUaiBJBFOf08jyLlYqik
	 FE83Mgh1hEnpQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92F7CCA1009
	for <ddprobe@lists.linux.dev>; Wed,  3 Sep 2025 14:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175690859358.13150.13746819814946684372.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 07692e9714594ab716acaf726fb3d947a858e47def4ae0b39cd34327242696f4
Date: Wed, 03 Sep 2025 14:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756908593
