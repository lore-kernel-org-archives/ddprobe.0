Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 543E031355D
	for <ddprobe@lists.linux.dev>; Fri, 19 Jun 2026 19:16:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781896594; cv=none; b=klph0ZqskUCpPpQuBpo4ROkOVBB6miRylNW6boKQEqKaP++2atKNvud3TXgOZ6OH23Kt+JV8cVpjjTaNHhhvoBcrsYUQnwmb2rmy5z8C9qGWC6I6hYkuftGQbeHpwdrbaXdnholqvkdg2qlOMuc6E5UcBp/Cg3etMA0w4zAC5Gk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781896594; c=relaxed/simple;
	bh=GIHgFl0Sn17WmCoanCPpdAaPvqfJ46DlVO5anAcBDLE=;
	h=To:Subject:From:Message-Id:Date; b=A0rmwAOhDDj8LZCXfdKAiK6Lcv8pIpTtmbHLcWkVjMOqBRYp9t7D0ls0F0tHOJj19tJhSwkh0vJ7PoWWQsOeCCgNX3y9P8FlfjMZ1c6X8Ns4v8LNWPFF5G0J1sx65idQrrvXlWsfKtcxDSczSiYQXPybiefXypkg0Hk5VqO6R0s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ko2iAtDL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ko2iAtDL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC9FBC2BCB4
	for <ddprobe@lists.linux.dev>; Fri, 19 Jun 2026 19:16:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781896593;
	bh=GIHgFl0Sn17WmCoanCPpdAaPvqfJ46DlVO5anAcBDLE=;
	h=To:Subject:From:Date:From;
	b=ko2iAtDLJg0tktly8CZ2FYqRf/mrTgVXiNL3TssdA9IfgNd0p0v5xaha/YJqEdIh6
	 A9krjD2emZjQ4ZCfQ6HQWXiTjd7aPgDT7noMo9SNgUMw7TF949QYkUza7Ow5Mzt6Wk
	 KKsYYxGHHo9e0miRDLT3PpUchyJGdShDOOEqVgxNdsPUgPrWRBt7vUlA8lEtTh4zhJ
	 7cEoWe52OTmoFYoawzGLOc71u+JvYrwKN0q94T+kOXhPUuMSKB7P4AejRBosIA0Sy2
	 u7LIkK7lmSyCq5qlcLBSG3iznuzwux1U2o5y6QH/lgAzaRX4Tg5DiL3rsVjt3rOoXs
	 lJpl/WCL0CJFg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B15E0CD98F2
	for <ddprobe@lists.linux.dev>; Fri, 19 Jun 2026 19:16:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178189659369.9617.2290647357853957809.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 05efe620275c6f5a6ba0bc33f23fa8259485447ae9be0dadc8786539cee15159
Date: Fri, 19 Jun 2026 19:16:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781896593
