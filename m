Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 674DC3EAC89
	for <ddprobe@lists.linux.dev>; Fri, 29 May 2026 14:32:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780065154; cv=none; b=fikIyv+1VOoVtKKd95xI72HP0Zz+Yx/xL6Yj0WVwnrVL3iH/PJIt2JmLXoiZcj0MmjHYhefB/g/mjBgbVyEjSSkuwEj0ECDN3rcUB/wZiqC5cJ9aq+bnp9hw7J3iEz955pw3JNCwTCmL5U7uF3XAT8rVb0AukC8FiUQWxGOuGy0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780065154; c=relaxed/simple;
	bh=u48+W2OVz7Qbdob+VL2Nh0TlpvmnQ+V990OStUAuYjE=;
	h=To:Subject:From:Message-Id:Date; b=GZokL4H2KnVJRfzUQPAnBph5pRsbU0/Y2+YTaqgfo7PCsHG0QlcH8YUvyt0rtTNuDea/1sVu/+m9fkovYAcq5OK1wE2MRdPUaKB4VLyUJbYde1Q/y5RPx3VxJgLgfMSO4fBuGNTiSi909q5RjjzclGKGvEPEs9zIS7uylRj36kg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Z8r8021x; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Z8r8021x"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E8832C2BCB3
	for <ddprobe@lists.linux.dev>; Fri, 29 May 2026 14:32:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780065153;
	bh=u48+W2OVz7Qbdob+VL2Nh0TlpvmnQ+V990OStUAuYjE=;
	h=To:Subject:From:Date:From;
	b=Z8r8021xLuDAQC9BuOYm0Qj/8oSh8NZZ5p9AShutsksOmEwEB9IdRtJc3PPtTXqBX
	 czWky6uGpmPIjKZAiyOy8SEYoYV5IetM4J25P0uwZaQrNudP+hw8sysR85RqS2VXnJ
	 1wk3Zqffx7wTT459aMx3inb5hO51sbw7heVILyp+k//JAj9yytVygT1oRWGKFdot1x
	 +6v1wn7Ag3bk0kwVTSaepTvPTOVXUFMn3+rGMtOf7hDCPPEPcjrFQ8+buYQuoMK/IW
	 is6dvm408v2WIyyx8WqL4OlGT/VDPTPfKv9FENFmLQ6y/xy/Psu1r2uH3CdjET5UY0
	 xTjq3DVK0SJCw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2B16CD6E50
	for <ddprobe@lists.linux.dev>; Fri, 29 May 2026 14:32:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178006515377.9410.15461945353362328904.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 53c23afd8ed4877a7accea2ac47637fef5f50ce22381a63c0042643bf732240a
Date: Fri, 29 May 2026 14:32:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780065153
