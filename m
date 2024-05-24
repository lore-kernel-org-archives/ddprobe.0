Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6493A12EBC0
	for <ddprobe@lists.linux.dev>; Fri, 24 May 2024 16:23:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716567803; cv=none; b=TApzbPt6G4IZF9QgDLEVuAU02ZwDXrcTtosRcKFdEVOr/SEeGWgdxo/mjXc8j42viMuZGElsHU7gmXnNDDNTruOt37KBfMYsRq+Yg9EZHF7qQlKxQkNVEv9r90yLnbx9clpcMpYBkkVq0w2pGkWsC+99QnDEIxrH4rY5geTzvSQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716567803; c=relaxed/simple;
	bh=jtwgxGWiLPvkCew7xgCLmb2ID2jJG5OwJSLlGCBwWwM=;
	h=To:Subject:From:Message-Id:Date; b=iEqg6nseja+ZiPojZbbnLTSQbr/HFeq19VoF7pyVUSDep1uiMz7h6BaWRChtjWb7AzDdEBtKk8RTOXkw9ZdwmV+966wMDNKgZGB6FF03UjVWL7/opVNSX9JKXyKPW3lPw/akgOr1oSu7/J2xmmG3IsWcecnkNPAtYg1l50LZY2E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZxGn8UnA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZxGn8UnA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E7567C2BBFC
	for <ddprobe@lists.linux.dev>; Fri, 24 May 2024 16:23:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716567802;
	bh=jtwgxGWiLPvkCew7xgCLmb2ID2jJG5OwJSLlGCBwWwM=;
	h=To:Subject:From:Date:From;
	b=ZxGn8UnAp317xNquBtyQQsv0SRm+8FDrgRXw7wLZusHhh6YXDGDiiIpbqUu8WTyrF
	 CCxyPrmaE7ywB7zDT1Zl4NRJyHk2zZEn9ri/Ke5a3sZVKZJiq7ueA9MP+VaaYmyHoO
	 i544Pv9c0Jq/Gs1tkFWm5HwnKHDv44FDZqzNUD8CF+TVYCAnDvdPXTB+9Ys8dErSe6
	 BbZ+wUFlNrnzl8hnlRW2eN5EIHHDTTLcFGQqBTKFh8CFI2Me1wLDteBuOlUiCfgQd+
	 bGKGHpIYqHS1PHyiRsWyl4yWgdqBCHUAkLnXZRM9xd4DX6d+yECZ4bw13UOVCgEu7o
	 N5AhLOBbO7KsQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CB399C25B74
	for <ddprobe@lists.linux.dev>; Fri, 24 May 2024 16:23:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171656780282.10676.2316556926860269851.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9328769a95b6943dd8e31707488cfd71db35c143f2eeecef9946b23dd170d538
Date: Fri, 24 May 2024 16:23:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716567802
