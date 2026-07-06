Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2021F258EDA
	for <ddprobe@lists.linux.dev>; Mon,  6 Jul 2026 14:18:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783347514; cv=none; b=h4fpkC+c9AqDlaTTYCX6QE6v7DeCMSuaj/XYDo/ElVL9VypQoXY96/jErc9v+0g7Z+xxMhIg3JT/4K92WYca1edt3nGYjlhC6r6py3WxfLPe/okjCovUN0VwNg1+un1I2xS4mmROed7z2ZTgYl7deGbw5GvnIc0B7trKrry6FFs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783347514; c=relaxed/simple;
	bh=eFqwErrZC3MtYXG2ubIwCgm6W+Fa7sgvnOwvQBMZCHQ=;
	h=To:Subject:From:Message-Id:Date; b=QjaXyp19AAfADrjOnf9qC2Wtfcd8yUI7dSO481vBUrFrNTNjAhWwW0PSXmqx8UbSuwh74V3VHIJ6JBq28kBwNy4s2wMKCEkuZ7eVxNN6nw4ec5wZSd8zJe06NuThMRNVFDervRfNol62Td5EpQVgJ6+gHbAw+Mjx2peoYf9veIE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aQ7B/Y8z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aQ7B/Y8z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CBA89C2BCB8
	for <ddprobe@lists.linux.dev>; Mon,  6 Jul 2026 14:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783347513;
	bh=eFqwErrZC3MtYXG2ubIwCgm6W+Fa7sgvnOwvQBMZCHQ=;
	h=To:Subject:From:Date:From;
	b=aQ7B/Y8zNQbXEPr6BzQ5YoCFDNhAuf2uzAPadQVmvQoI0iZMxsvxv7Bbu3vZYrS+B
	 9/PsppZkTKP+WFeGT5xqdN9r53VXIfuEnP4EjZfupHpKiFz/NZZWy6Z7yZPbhb0qAH
	 KoGUae7l1iWxpKynSX3gdLR4N9GbyKJANX15z4i7wic5Qoe6Zb7WJCzAIoHUFu0O6v
	 3hJajd398maRDvUuSHtJYBCSs1l3NYMsviTFMZBX/KFkJirabgAzhcEJd8NRM86uL3
	 iu4nAjcyrxeE1VAgn+kqNMr3KpSHQEVMgUOsV+x6KQVy31S17qVL3xPgWtanlvsM1j
	 Vm5POp3h3bNtw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A995EC43458
	for <ddprobe@lists.linux.dev>; Mon,  6 Jul 2026 14:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178334751368.16339.14871599258975255472.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 985cbd5544d21ced2230878f87f20e1bd4ca4794cfd45eab1d260f7963b05092
Date: Mon, 06 Jul 2026 14:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783347513
