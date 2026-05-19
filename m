Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48FB832C957
	for <ddprobe@lists.linux.dev>; Tue, 19 May 2026 18:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779216034; cv=none; b=MjOhzH6nFWA3J19TpYQ25OBjAiUVpEqp6YTUch63ddL8MBxeBKwot5n88gUMRxbdqzrvh0z9eIa79iNLv0a0BIaPLzHqz5kzROqCLjVMyuYMO17DYCMXUxfhXjl+2BH/7xY5PaHA3YlYtdCdY61VBpS7a7lgnu/rf+K3OQLss9Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779216034; c=relaxed/simple;
	bh=kwuj78hX8mni4YWZ/5XTIsBwKEHR2cfCeB4pIyYiBUM=;
	h=To:Subject:From:Message-Id:Date; b=tK8ApzHEYIk+2NVTHEu+izyfJBd4cDcEgZvBL9OCZTW2MZqMWiiRfuVscCSJWd2zPHpYTJ756g5P+g0mY5gLPgGPNW2ICBv3gfG+UM/oudd4UinOObCL7+DN4v80Zl74VsilicgjvztcRgvJdlxcH6kWtikcHnIFVCJzDCtwEeY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aZgsg0WR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aZgsg0WR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E216DC2BCB3
	for <ddprobe@lists.linux.dev>; Tue, 19 May 2026 18:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779216033;
	bh=kwuj78hX8mni4YWZ/5XTIsBwKEHR2cfCeB4pIyYiBUM=;
	h=To:Subject:From:Date:From;
	b=aZgsg0WRMiNKBEKiUK26zjRW2iVtGvHkddECnIppBzYegxnaeMOMKdR+CGk4jsGC8
	 raqf/hrFNabjBD8Ym9nEyor4umn9Bdzh2gVTh1+Ho//tPhP4WJ6zYRaJ03Qn+yaUBg
	 gSd+95uybdooMchr8ql7oaiwQA6LIF8iAqxRfql9lSYdob1jYZY7ESJYX8ISuFr6dJ
	 kwOy/ynj6MrH+Ec4WWvpFefxmlkY4DWo930wMghf8YH6ktT1dNNf34QW6hObg5XsDA
	 kB/3ZwU4ujOoNDGmabftJZzELHuaNtrtrah0RqWosTuWgrqaDVqoa+AkKwK66tDM8f
	 Zj0oP8Lfxl1Bg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C62E3CD4F3C
	for <ddprobe@lists.linux.dev>; Tue, 19 May 2026 18:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177921603376.30759.8517797148438436597.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a9a5f27c7a8b8d7fa5449ad7c783a91c11977bffb0526b688c20c1a24ef66695
Date: Tue, 19 May 2026 18:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779216033
