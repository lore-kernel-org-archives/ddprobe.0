Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BF7701DEFDA
	for <ddprobe@lists.linux.dev>; Thu,  5 Jun 2025 17:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749143993; cv=none; b=ituHHoPkCW837NRcwDvFaK4wGTcEWq6ofzMHXarpD8wIZMMo6dXqbRTVtaoMrgR8t7jo60OyXvjWnTuMp277aLfn25yGddTlX7wSa4BxPx9QD6v2gf0X8PwfE4CM2rCCc/7BSwhJGfZRrI0EFJsiMkVvOaUqU4ZLnzGPJBlfDTM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749143993; c=relaxed/simple;
	bh=ygxSkSQ2FKDj+HMS8Sww6ErYzGljxAUbrABVdq5qdOM=;
	h=To:Subject:From:Message-Id:Date; b=eMEYd47Y4IfpbN/T3+Pv7fCwC1UPB6NA8M5IXOSIXBriuMlpVtYWlAYJE2WO5gjDiImB4kruMJY33xtTpdMttuDD1b8ZxfJYWaRU6RuHBmkKyN+OGkXYTBs5hshqguMjdGEQOHp4HGejT1xngTrauYUywE7p4AIG9/P6i1Xt394=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VtPqY8Xh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VtPqY8Xh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FE51C4CEE7
	for <ddprobe@lists.linux.dev>; Thu,  5 Jun 2025 17:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749143993;
	bh=ygxSkSQ2FKDj+HMS8Sww6ErYzGljxAUbrABVdq5qdOM=;
	h=To:Subject:From:Date:From;
	b=VtPqY8XhuZXA4qqexKTDqc6W84QCTMX0o0CLnW4rzAQEgdwA/+gY6yWSpGR0B5r4+
	 jeYy1jAXzUm3IG79+7egllbmGw0B2Ll4AFfhisa32YkILp4vkM0wo82YRgmtNWjADQ
	 A9Z1G74MRhV7m75N9/vwZyQwv3G0+JuNEdyrjnN1RCmEflD3wGBIHTi017V/Xf5uXd
	 DyxsGYzuvn4qEQ6aR+JwMk1pHwL8dsubB7dUjY6vLW4KSnPQfuMz67gQpjwvHj6m5V
	 8K/vrHoccJsJ9WCrGVVbYE7Dg4yfLrFqUi3hHKPZqQVDPTifCeYsNS076zs+j6NZXP
	 7atDk3Rr5iznQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 909D6C5AE59
	for <ddprobe@lists.linux.dev>; Thu,  5 Jun 2025 17:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174914399358.12910.17292298161805655939.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 83934b43c69d1f98bbd2bfab4d39336b8b0ae9e64da7cd05a5d90f3dea492d37
Date: Thu, 05 Jun 2025 17:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749143993
