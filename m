Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E27D8168DA
	for <ddprobe@lists.linux.dev>; Wed,  3 Apr 2024 02:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712110697; cv=none; b=ch3Jsb/HpLFfdcnZ+T/imLZUB6ucOtqruaspORqDfkYaSoeDvy9Ftgeu1iQAz3UjzHykjs8ukRTyCsel+eIaZ62iNR0M6kWpR0rkbSxDmsOfAcof00HktrktK1MMphw6/hJFzVp8T3PyZkohTDrQedGffP+9UbGEx9I/f5FDIpg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712110697; c=relaxed/simple;
	bh=S7Ni7expO/s9xrSj2qS+io+GqXGh9OukqXnVtfqoKCk=;
	h=To:Subject:From:Message-Id:Date; b=ANKarC3ufnwWQRyXbN881x2MHmwlMOAZccIRMQPAOi5SIbzGdoEb54zY0YQI7ZEPyPFnaXhmSEMq5AUJogaqQtaSD0jpJb/G1BJNPW1FksAWHSnz6iBy8xf8iKqa/gpvMrV00qrw7SHPSDxBIqIXE6Cs4EBfU1h8cF97hmDTH+I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AOvbpueB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AOvbpueB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7BB04C433C7
	for <ddprobe@lists.linux.dev>; Wed,  3 Apr 2024 02:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712110696;
	bh=S7Ni7expO/s9xrSj2qS+io+GqXGh9OukqXnVtfqoKCk=;
	h=To:Subject:From:Date:From;
	b=AOvbpueBg0cnw74et7sDFx38lFHtlGL3bD+CawYAM96cT17P5m8I79fAeqrN3Nr3F
	 UP1lSh2R8z5nuxuBvlaKc5J60bg9q4E2jcGPCPTK5l8snQMWSw6KZJKD+c6ZuIfzYs
	 20ynTUZPcWkeR0EsrwP9v54E+yAmsqcBhYGCzA0tpDzfOiQlCqq3CejKleRK5hbTsN
	 GprUzo3hbeiA11YBWDjagBifgmb9OxMtPCluUQOKjsK1xx9RV0DxF6Agy85VYUjRTz
	 7BTknL4x9r4nv7/MWgQDUtG/D7SA+HUZfgEzE4jnlyEZuN7u3nYUBdFlSwPET+X36C
	 J97aGcNHGL0eg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 671CCCD11C2
	for <ddprobe@lists.linux.dev>; Wed,  3 Apr 2024 02:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171211069639.26081.7968413692594133633.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b7c0ec40dab832071cc4236eb901e9503ed68fe799391e12abb1cc788683499e
Date: Wed, 03 Apr 2024 02:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712110696
