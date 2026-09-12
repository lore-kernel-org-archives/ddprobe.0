Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43AAB35AC11
	for <ddprobe@lists.linux.dev>; Sat, 12 Sep 2026 06:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789194034; cv=none; b=CrL3/o7HAK0GLXcSfnhOCNsznFEJqiMgwbJPX8R/UXLo9tXxs9lhb9pcIlYM+YvwjPtaF0JRPu6IiAzEX/xFQ7DFcEwTvcH5VfuMC7LVhnwUiBU5ZdMZIppXvYW2nMaIAGwQOhtOx5Sf0s7cgKCVmohUxt0cMbSvtu2lKyhYtVc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789194034; c=relaxed/simple;
	bh=gLB2FJgMcUXzczRKr2UZs9oJ6lSMf+taLkPReqcnCNU=;
	h=To:Subject:From:Message-Id:Date; b=eszCAozBzDAms2vt8npoN0muJOffg0AgcMDHYiAmyWtWx3/HKNzOoqGAZlSn9HpFjoJYzszVn6o5tuC9rAXH6Z1dZXxIIDf5UmQ1dUcArlqtzFImfbBDFFy4dT58qjCoZP6cUCn9mD+51oN6KBlPu2pTqSKCZAalteJSjOEaamI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Pqgk5n3E; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Pqgk5n3E"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD0D4C2BCF4
	for <ddprobe@lists.linux.dev>; Sat, 12 Sep 2026 06:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789194033;
	bh=gLB2FJgMcUXzczRKr2UZs9oJ6lSMf+taLkPReqcnCNU=;
	h=To:Subject:From:Date:From;
	b=Pqgk5n3EgR6DrcPRNvGfwncQ0rAMWVj1DvafAEsEi95Qwi3CPLGaq2tpXx4n3Jh87
	 qIspLiSHZgbPunmZvy6/rPIzVUapiVye3YIcBVKv5CDwmTIce11OSad49MfnXS/iII
	 a8kSPk6cKJszWBsd+04BQ0+3TOU0TeI/SsWRJcbuPx1dMK/nwZ7B3AgAkTo04fclwT
	 53h+evs9t9mtEwqRTlLux9SrCvW3JQW4GRoNyQAAHhS9N3V+bfOHUKIZg2ft0VZpo0
	 sX9NorbywCnon291c9BHUZZ1fp8UfXJrx6XZd1MuV1O1nUX9Cy7Yc1XrQ64iLwnXdX
	 7tc6m/ET4iNVA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA226C79FB6
	for <ddprobe@lists.linux.dev>; Sat, 12 Sep 2026 06:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178919403368.29219.3869522818380101408.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c52c8302b44b562e2d2bfc241d47bdcd7f556ebf92aa27da3c6b50c447bc8179
Date: Sat, 12 Sep 2026 06:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789194033
