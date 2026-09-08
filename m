Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33DB23126B2
	for <ddprobe@lists.linux.dev>; Tue,  8 Sep 2026 14:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788877234; cv=none; b=n534GFR+NXb6IrNmZMn+IUB1aFCT+AHMr1O+UQdKpC433AjqaO2X/vGp95hNECE5HKGdAkyvQXroPYOM9GD2iQtvHlNK7UeMDyis+qqa5o7NIDG/p67KGcYmn2P3lnsAZ0VuHQupnnXEdb+66yzOc0clab99SUroljwERbIrz/s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788877234; c=relaxed/simple;
	bh=i39XsqSTCCmR4McxelbNSLf68Qz/mC3RhgBCGuYZT6E=;
	h=To:Subject:From:Message-Id:Date; b=JJrWZZupJ/vx/SW+mGV4D2ncXTrINp7ckZ6C7phM1GoTIOIF3DSW8VZS5TbzT7L4c4C7K0xlfSVj70bg1nkUJTtpRH71Rm8VvWqCNJOco/bEXCKhxGu0kZ2ADonZu11wUy3UDMQPu1ZM0UkllKLJXPdA2AF3A2OFO/BzMq2m5DI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ExybdxY6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ExybdxY6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C48B7C2BCB8
	for <ddprobe@lists.linux.dev>; Tue,  8 Sep 2026 14:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788877233;
	bh=i39XsqSTCCmR4McxelbNSLf68Qz/mC3RhgBCGuYZT6E=;
	h=To:Subject:From:Date:From;
	b=ExybdxY6sVGbt8ARYLNpKNvc9G7/PJjMeSZzOH8mUOgBw1PHgZJwXZ/ngHZocli0+
	 zeL2/gE/W1uhp62jkCd4qFKyt3n0wWAUBTWKkE9d8xHwQPugt+zTLe4BRv1D9PqqMy
	 yoy6HSa8+WbgMuLnNEHIZ+1F1e99gLmsZM/7NiGqg0bbcSSL/xRU2Rq9dAHW1SZ60X
	 AsZ+T4P5hA27+5M9F6TylmXJ6n0du8N+z0dOXzvvSbm8ScH7pZuriawa9tHkTDRvB3
	 EM1mHHU+rCAv3HuAq2ptRbjKjqCmgYW1jMpEymkKnk0UDIC1b1Xhcn+0OedZJS65Vb
	 DWei1ZGv0eE8w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD4C0C79F99
	for <ddprobe@lists.linux.dev>; Tue,  8 Sep 2026 14:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178887723370.6129.8391639476851384729.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 904f48603878064efe3b51418ab70a3ca5fb022dbfaf87752628f4c0e7086df4
Date: Tue, 08 Sep 2026 14:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788877233
