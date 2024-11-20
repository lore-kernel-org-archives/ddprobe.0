Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 12C0E53368
	for <ddprobe@lists.linux.dev>; Wed, 20 Nov 2024 03:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732072554; cv=none; b=C+PSxgXkukX3cSqgJO3PqwAnDVqb4JuPopSEoCjAeh0IpfWXKJmd2e5sUAfzorD/9mA8f1QjEnxQGeWw6fJgcUoL5K/vWFm3xt0fMZD+iOyKO0sRn7SjHQeS5DJfs1WxDFJD9dxqzvY2G0xCWCuWI78Fowd3+6h/LulaSCcmljo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732072554; c=relaxed/simple;
	bh=DynnqH23YOgkbyIbJh3laKNwDimk6UV+8BcaqGFg3ao=;
	h=To:Subject:From:Message-Id:Date; b=hWpS170ESCxv0xrPsAzB/5ijJO1bABOSTVJOZckQtx5WEqVLQTfY8xAaKbZ3Q4SYa0+Mm8DXzgKBfR2yEPta4ijW3WE+z7z0HkhtvE8PxjY+Z2qyeVgQU5tt4b3wt27cBVKH9CFzsmScMus2hDpCy4wOGrT7thXUYfy0vBuF3T8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YARLeQQK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YARLeQQK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A36C1C4CECF
	for <ddprobe@lists.linux.dev>; Wed, 20 Nov 2024 03:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732072553;
	bh=DynnqH23YOgkbyIbJh3laKNwDimk6UV+8BcaqGFg3ao=;
	h=To:Subject:From:Date:From;
	b=YARLeQQKgSpw09kiovFxgJghsyuPadGx4T1bPyLHs6rovDCDlovhgNQoSPWCeHWbp
	 ZNRnQ6rLJhfIg23oH5ZstXK3pCjiZl4tu2p4wRaMNkSKF69hsamCv2CnTRlOk98KLX
	 +BFG6IIzoAxABaphik2UZG5QEpueccYavd7uMGH9wlGN2ofq/IlUy49yCCcQ6pdE+1
	 OQwKHIK8Vd3fmSjKBZJu8HpKMun0fITwu11sSDKvIiWIkkCFoEyAEbdXxeY4j0b9v0
	 DM+XMfzi1H4vgdMDkUB6CV4dzBuUdy3YkaNaibBAGjKI/H3IOV1jZF25UEQ3tMhCps
	 7OgvUORohVOhQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91A0AD6E2A4
	for <ddprobe@lists.linux.dev>; Wed, 20 Nov 2024 03:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173207255358.29733.1623159803863615318.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bf92995fcc4a3dc2fe0fc044776d7639bfee89f67b1b6efdd7fbe966e52ad5bf
Date: Wed, 20 Nov 2024 03:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732072553
