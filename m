Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C96EF3A1E63
	for <ddprobe@lists.linux.dev>; Mon,  5 Jan 2026 23:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767655433; cv=none; b=qhWeEHdfsl0rY2RIYfA/5pl7AX1R/p0A15pq9UfGER91Rz85JNfd57JQkAGFTcgf1cT6ngZibrDojIkE19owa553WYemnPyF+iFDuLuxVbWqbXCnT7pl92FKKkV4UsmFrmeYRizpJSCsrosCrTxbQvli+l/uE61ddWaZVa1M8i4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767655433; c=relaxed/simple;
	bh=AKEO532mVZD2jmlnmaQt0F4G0EBLZgnB7ZKnV25jkLA=;
	h=To:Subject:From:Message-Id:Date; b=p1Dw88lpngwwDnOaqvJs7ALsHM1zLQ30MNbf17vJr4Zc6UZNP4NTgiCyizorEy+TJU2ZnKBDOmvVqOBqobuoUPJNQU7mXQSj/Qa9u8q3irKOY9el5TEIsqQI6O5k+0HaY6Kud8QkJojkIGUzs2RkEsUpPCwfW1RhtCdmnf4Krb8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=P5oUadmi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="P5oUadmi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2B28C16AAE
	for <ddprobe@lists.linux.dev>; Mon,  5 Jan 2026 23:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767655433;
	bh=AKEO532mVZD2jmlnmaQt0F4G0EBLZgnB7ZKnV25jkLA=;
	h=To:Subject:From:Date:From;
	b=P5oUadmiHgh6eM2G1NEklXL0FVztBr3voOZfqhDPq2UooLfIGwTHcItrWTMhJYLbE
	 syu3Tg2IsRuqqB7647ZtK5jF8DokR7LMxqTdCMlHdtnICUBT5wrCJBtvvWyrD/ovCt
	 ZzdjuDzTHf9ZuHtPVuOiOjV67cAq9GuDqC9Z7M9+CHweb+yu7cMzhVto3q2dDB+3QV
	 M4pmibpCCfzGh4tq5AZlHAKyHe4KA9O/fMnjIvD1G8qdQaf7YTQeWQn5l86NOyRXPv
	 2Xcys7NN4V+kATB+Y78zFDRMBSqF+hxrv37UoFa4y6TSxUfJoP/0odLDVDb6C5Q20k
	 MnXxBVkcnth1A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92984CD0424
	for <ddprobe@lists.linux.dev>; Mon,  5 Jan 2026 23:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176765543359.17685.3794126267410168588.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fabe832673524e2cb124bef60f02c9f669441deba2d94f856410ee1cbdc26dbb
Date: Mon, 05 Jan 2026 23:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767655433
