Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1727419882B
	for <ddprobe@lists.linux.dev>; Fri, 24 Oct 2025 04:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761280194; cv=none; b=XGVQ8kJ7vRwKgNx47kl+Ft8ch2AQViXe6MmuLZMmns5S0KYqBgazqoBLOBRGGDnYLH1KcZHwHa/TsRhltlnaTWnWLfN7WQHwV9oTorh956DMT8k5WiSxnUWzHgyCqq8YXDyzBrqpdhZZfhna2DbNatEFQAQR3VRQwEl5MXm62v8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761280194; c=relaxed/simple;
	bh=e/ck3NoTHUAL0eLGeXp/7uS0PMHEyJj6GcJbY1RPWbo=;
	h=To:Subject:From:Message-Id:Date; b=m3Q3QUW37hXRVa1I3sG9PUH7RYA8ndsJxERs5CXtBepRVlYOXdmZf1/kyeuqVevQVWdwqIFZlXIk9fFLNdz5d5pwoQuNlsDXofi1bgl4Z62E+ytcY1IRNRwtKUwBPuigO9McKbcC4FErUO7chxRuiFs6H3YZRk2qUHgQ5JFyK8A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Y/zXC/OB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Y/zXC/OB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A14BCC4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 24 Oct 2025 04:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761280193;
	bh=e/ck3NoTHUAL0eLGeXp/7uS0PMHEyJj6GcJbY1RPWbo=;
	h=To:Subject:From:Date:From;
	b=Y/zXC/OBqran1zlaIFoN5DqawLLBLGERUumuaEJiemK0H/muisGrpjIiPDYR7J6y9
	 IwT/csly9i3wW9ekVC8ddqnPctxToXPUSTsk7L97Wn7D1NXHbM4hD0m2OwaC1onG4E
	 kaG+0bJoVBXuskV8AzxzyhUtS6RjFKwK1sRlaYtbGMu/6E2TQLXz6PEO4A2DiqWdTE
	 jHx4NZgWdxh4toQGKW2l8z0aAsAPM6TDgmY9foL5BoyxBcKjlpGuNUnNS7g/dGz7sZ
	 mVt2tKoHbyZcrWmTYCHFX6N00SRSM+qEbgmRA2aKy0VR0PgmRnnMtVGhyj2+H8P/1u
	 1FoPYK1quAAqg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F1D3CCD1AB
	for <ddprobe@lists.linux.dev>; Fri, 24 Oct 2025 04:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176128019357.3624.12041242097376947336.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 65b2f052204ac40c8c2cca1316acfa16ddba2ccf926446b3b638bba6281e69cf
Date: Fri, 24 Oct 2025 04:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761280193
