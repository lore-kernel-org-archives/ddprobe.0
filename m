Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E5E4231A55
	for <ddprobe@lists.linux.dev>; Tue,  3 Jun 2025 14:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748962795; cv=none; b=GoEYuI8Xk/fwRj2kv2Qkqw7ysqVWHB4asj6vp3ieAiayofdHOlMbaqiY4c6WmcgbuBo/iojQi6PJU8Jo+Og+4toRAJZYDU8dnOHCPdZrxnaS3FhTc5pheoJwhTMP/5XU/wFXG+DQ33cQvYnSnwGVYSIRtWNxLGcBmDoyVCjDIzw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748962795; c=relaxed/simple;
	bh=j3b97jRqMWZ74HNCRuYQCsTWThBiGd4cgl1MrJtdYKA=;
	h=To:Subject:From:Message-Id:Date; b=hKkH7kSWbqeOewvx1xBvfmPm0TIoEMXQV2Dl7vSNRFbvdT5RrJTS19cSSDI1EihgNAx5R9OvBvmh6nR9s7L9wwU26Br44By+4FAGuswNYcMhzUm19wCS8FNiDytONrsdP2pnJZuNlNUKj55c7Rt/Cet9EqRw4kYMKAdokRDz6Jg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mSHz1Kqo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mSHz1Kqo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C7C3C4CEEE
	for <ddprobe@lists.linux.dev>; Tue,  3 Jun 2025 14:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748962793;
	bh=j3b97jRqMWZ74HNCRuYQCsTWThBiGd4cgl1MrJtdYKA=;
	h=To:Subject:From:Date:From;
	b=mSHz1Kqo0U0tmYCTrL+D+uzvhK3QLvPKuPIGacuS7ZkqQ58OJI+8phKcmunaOjzW+
	 aIXlpzfn34CAVQw8dLFsojta+iPmVg4Z1Pac1PqbsIcbSGcC9kaFtBCMUjI5iKbXp1
	 bVrmtn51WhuLhr9bZQ9uZJWRl1yq7OUQVFYlxwh+tVlDW5Quf1pJV0LL7yxV8J3ypG
	 P6GWFv/yvw3PjH59itMGWkr8x/+tT6l1d6FusIu1TnuYYzAnZAByUGe72aYvMuTmXh
	 ApyocX+EjXpMRln1K8yQiqYKaKHbhxUBlXPy2F6jyvQQ7lkKzsypDQ8gdFRRZGF1e5
	 i6UZhiAOHK7LA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E99FC5AE59
	for <ddprobe@lists.linux.dev>; Tue,  3 Jun 2025 14:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174896279357.22719.2551277244929847662.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 586e7cde4f2e5dba5297456cc50538110b98f1658b1711468b5213050f3e8066
Date: Tue, 03 Jun 2025 14:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748962793
