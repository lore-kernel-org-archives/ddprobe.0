Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CE4C35963
	for <ddprobe@lists.linux.dev>; Fri, 25 Apr 2025 20:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745612394; cv=none; b=Ll7cdRxMa2fiOPdqemVJ8hQGCAmjzv+ahccqiC5BmHFoe0V6rQ9JelJfL5hM67JJZY1RLsnBBFkvW3D/w6D53fQkuYJbNSl8cGns6qGVBbCvwq/DwPU2DCc6c6T2DguJ179ZJudHwaFdmfLoWtoN3o725aA8TBcnwnef09xO7nA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745612394; c=relaxed/simple;
	bh=9dkAV1Er2P+sByibjFECaR1+FMrSu7uHog0hD6qqvsM=;
	h=To:Subject:From:Message-Id:Date; b=G2CPCShZgdOCJpKgEH3TkLhYXEEoIEs/68IYJWe74lz28gpKtlVH+njIWe8bsaa9BRsqteDZKydST9losas9U57ORXuDgr86rp6wBFg6ts71abWpbe3wSwnmo0Rm1UGx+24B66yqL5tePpc6qX3JsdyxQ5YlPmp4GIwWHRl/lEs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dIq7ek0+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dIq7ek0+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E34FC4CEE4
	for <ddprobe@lists.linux.dev>; Fri, 25 Apr 2025 20:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745612393;
	bh=9dkAV1Er2P+sByibjFECaR1+FMrSu7uHog0hD6qqvsM=;
	h=To:Subject:From:Date:From;
	b=dIq7ek0+24LfeZ8tODdvBe6QxNV+cSKxNzebc64NzlPvxvTZ8cW0HPhVAqF5/LBOR
	 ENE80dRRysiwnum8nDD4HIRPUmMbor8UJHWzSkAw7wpyT6GWgfA/XYHV0NK2RVWsDh
	 a/j7HrkOzjKUYcYYCwR+ZskVBr+fsqPBjJzrwPggy2alAreb2kR799kCDmW20UHa00
	 8npnbXZiDQ7L+UoOXQoepkNXUCSqa1pSO/PNaRAeX0w59Sb70wCucDfJlacNBKMFzf
	 yudEWeUeeUHy0IVSFy75l8FNCB438XxhK4dZtDzOxBxpAT/tBylOnmscbIP2uS+MQ9
	 GeiW9e2vcTesg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E937C369C2
	for <ddprobe@lists.linux.dev>; Fri, 25 Apr 2025 20:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174561239357.11971.1086062127118753914.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 166f641751191f295cf40ef46985e00c43b0bb9fde57a781932eb5da440d50a7
Date: Fri, 25 Apr 2025 20:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745612393
