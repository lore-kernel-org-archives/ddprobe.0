Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31FBA8479
	for <ddprobe@lists.linux.dev>; Sun,  2 Nov 2025 23:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762126794; cv=none; b=GjjqHyxl1Jm0hCnDnFQZzInRJFbFao1s11kKJoou5XRvKvRwSqG6t0DkkirYL/C/l8O7ypJA/QIq9IWwxFp2dqo3G7QtmedP1AAs6nQr1ib63lxzY2ArCSJE+vmeMUtGtZbqbBJBvlsXmwYtpjGW+4ozaBh2dWPBnODuzHkpjhk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762126794; c=relaxed/simple;
	bh=olh5RhTP+sBEFv7cadP6KclMHF2/l+qtR35LWtbiWA8=;
	h=To:Subject:From:Message-Id:Date; b=oG6HOIF++HwoV3L7HL30Zaie/ru/UYNeokHFZiVMjtZdDEZC1/JBjZvGsngZrAAZihP5E0Xfy++0MqTA6XYUGkxUbf0R9TIWOV/d4n2anTdW9d0cmJBqXOY69QEP/uvdXBihICDwimm1/3It6pAeHSr49rZBRKUIjis33AZ1Fkg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jRTZDoQo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jRTZDoQo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7EC1C4CEF7
	for <ddprobe@lists.linux.dev>; Sun,  2 Nov 2025 23:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762126793;
	bh=olh5RhTP+sBEFv7cadP6KclMHF2/l+qtR35LWtbiWA8=;
	h=To:Subject:From:Date:From;
	b=jRTZDoQoJfzsZBRJLG93ggY79lXA+brl4Qd85LJwDRrBxswee49ywSRBafsl0etPL
	 2+3ca6WkgQB7JVUhZYNNPXVbzbHcQCg9gzHYAIuXIF6bnlYFjg4xebVF1CviEoSZ4g
	 VHweGd4C48tf0wv1z7ktiPjO+kcP4qziS8BnMwOp5TogdISEzkC6W7ToG6Caz1ziTG
	 IRA5JyhiKl9ai5IqT15ypykXaICEbIefCDoxHj3qSFds0gBHNj/ysUQGvwrh6YG+fe
	 EpwgsUVan/0LxlVLVRdJwajOtVe+nhUeXHaWBDS9jgE+oAN07yvgS5Yxip+xy3HobU
	 Q8YQRzNSDgJeg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9369DCCFA00
	for <ddprobe@lists.linux.dev>; Sun,  2 Nov 2025 23:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176212679358.8137.3038718124643892248.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: da1fe7aa1cebc78fe9f5ecbcd863194d074c864815ea50cb1d29dd67af07508a
Date: Sun, 02 Nov 2025 23:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762126793
