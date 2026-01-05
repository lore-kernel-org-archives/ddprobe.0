Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2186231A07F
	for <ddprobe@lists.linux.dev>; Mon,  5 Jan 2026 11:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767612234; cv=none; b=ZK5BiThCeDy27XmixfdQCzSxEVWVEHwZhQVP5h0stnUeeYNTlsvV/laB4wQIYyVyzD0AJ0qvo8Rs0h9ZH2HReF8RCJdK0IChOE5/lSz5sKhGFdKUy0gF1HV/0nIvb76MrVgzV/7+Z132OUuBHON+l27wzTUfXxgriIdL14gBPWs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767612234; c=relaxed/simple;
	bh=70EwtZoVXfuwYZkhZp6nAk/F/eeWSU6Z2IX96ScZ4zM=;
	h=To:Subject:From:Message-Id:Date; b=IPCT+TiH4xfwJeTY4D8wLZqpy1l9YapNH7P04raceR8sOYYfu0sYr0Sn/dmJRmbQPGmEYQY25Te8a7Wt6vMRPo/R/Oz/WtpAWfC7Rauta2ACMu7+bdC0VGysnMtfXxhLLC1OgqPVRf5Hq85e9fhS4wD5a3jRyoEYtP4K6e0H128=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Bkyng1fk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Bkyng1fk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F08FC19421
	for <ddprobe@lists.linux.dev>; Mon,  5 Jan 2026 11:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767612233;
	bh=70EwtZoVXfuwYZkhZp6nAk/F/eeWSU6Z2IX96ScZ4zM=;
	h=To:Subject:From:Date:From;
	b=Bkyng1fkQHZ/VGbP5ah0d6e0BjD8ZZP4ETE0uGTJvaP1qf4xVuAS2zYl9IrhLkdo6
	 /e/mjjIYaPofyin12og/whAV6a837tP3D/Q6X8DZ5Wul2nsD/ZnQ3WgwtAy5JTqFz8
	 yTwg+oI/x7h+b1j5oeDRD8x/qTm8k6WsWmiM/1/8uklgULojtuPgrqqo672ThqZoIp
	 N7gemT83Rjm1jOSXdv2d/41lBK30jGmJ4Q05F98zKaXs6UvCsC7pjuqY9Ofb8V8hMc
	 XUvQs9idF6KsDfbLArEfknNED4/Oj3VMvPad+jJt+sb+wppoYLou/3lBOH/52M8XTW
	 O4C9Z+PkY39FQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E2E4C2A099
	for <ddprobe@lists.linux.dev>; Mon,  5 Jan 2026 11:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176761223357.30988.958640038476288780.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 98456a43c00d7ac1f76f6b2a336502b8d208eb5d56648601b18aab2ef4d35870
Date: Mon, 05 Jan 2026 11:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767612233
