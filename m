Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A2A9221F03
	for <ddprobe@lists.linux.dev>; Tue, 17 Mar 2026 01:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773709494; cv=none; b=L+sK0pdi08VKVESW4vQYCLzMQFLoqkwNPIOHxIpH+b0oeKqxKmehVBbBg8u3V8OkoBsjhT0u9KGU0xeMJcEgoq67wIY5IHR0h3patgvy8hofJfsWGipYPgTG2VJbE1K2nDrwt/7lWjqI9TTXGhPpEfsjutc1lNmBhALN4hmC3KE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773709494; c=relaxed/simple;
	bh=qzxaIysGFkAWEnjk0aKmzAoQCoL+sM7XHE3ylREBIhw=;
	h=To:Subject:From:Message-Id:Date; b=Ucv5PF8Ezd2xMf1cARddhQofoi+cBRz62T5eInJ7LPfvC2gZerg3HbuF1k+QjVcOiFxMo9IDqyERPtI7Y6xWvIfw+P/cwcvOP/6IqRBfcx1OZJbbpARktmX2zI7KIkje6M14up3cu/AYob2AW5qN9rV0lcGUfROLNhMq1KvZpa0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=e2F9BaHC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="e2F9BaHC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A42EAC19421
	for <ddprobe@lists.linux.dev>; Tue, 17 Mar 2026 01:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773709493;
	bh=qzxaIysGFkAWEnjk0aKmzAoQCoL+sM7XHE3ylREBIhw=;
	h=To:Subject:From:Date:From;
	b=e2F9BaHCNkeDSaqh6r0f8mxKLCsWc2MePOAoCNa0mZLD9j2XlHh8N19Hhwl1G4HyS
	 9Ped+T26SyopZzpuNSNU9Qx5GZQ3x9RYuODsPWL8PmAhz3Xxgeo1RORSTqiiHultUx
	 KvxPe/7AqLB4WdVdUkV9nuY48zkR0a2XQYgtey4D017Bv/eODTm12GmJ+pAQhufR/G
	 wk4FFngDxAXwEc/VHvPthJ5StJpBgckRgFoaBz4FZyinj7qUSCO9aKluenimDLvieg
	 hp32/sbKJv12CJR4ZFslmwcnGO/qvPF2bjleQ2t7xQMUG+9jinhIqrJ4VHlE6J6cOU
	 YVTiqOWR9eO3A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92744FB5E8B
	for <ddprobe@lists.linux.dev>; Tue, 17 Mar 2026 01:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177370949357.17469.6885875424257717992.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 82f40ea281ec0fb26e3995573798c0c5994b81310ea5ac2d8aecb9b8cd376b25
Date: Tue, 17 Mar 2026 01:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773709493
