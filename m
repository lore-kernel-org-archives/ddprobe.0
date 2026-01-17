Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 05791229B18
	for <ddprobe@lists.linux.dev>; Sat, 17 Jan 2026 09:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768643034; cv=none; b=GNfpXSHv4f6/1iDDvrz9HAkXskFw2IrOWj/SdyRtE0DaDK0NQrxtmYJRpERcV7oglFbRL6lIo8/FaiqVmOEAq9YzO69wJ9x8dZ0DOgC0lHPxh3C1KQtqj4co3CH4eLdnDNyk4uL5g1w211tiVl94qVPsphtmWZJmEZ8+Bt8nXJ4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768643034; c=relaxed/simple;
	bh=9RRIn4wty+vH/5v4BT2yxsyIIspnQr0fa8h0SICout0=;
	h=To:Subject:From:Message-Id:Date; b=VbR4ueGbS3teKw60K6TVKnmlA86yR1lTiLu5LdHTiXMYbMQTf0f2rWT8vJOrVnUrGgOeoTmImzPr7nwtZyY6iW/sQfS/PPdsGBxQXWTvJgqtZ5TebreXO1lfr1uJRs/Reb5hOJsm6xmDrw2G2VXx/ZorMdhMIpjntMVgjLUGHno=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kpA1w3pU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kpA1w3pU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5D8EC4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 17 Jan 2026 09:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768643033;
	bh=9RRIn4wty+vH/5v4BT2yxsyIIspnQr0fa8h0SICout0=;
	h=To:Subject:From:Date:From;
	b=kpA1w3pUxlTnhkbtyP5XHECmgG2mMsuI7RVwgKyI4DlmSQIqHNZCyMYIMRNLwIKLO
	 vuhSVPIVq0gDr1WK3qFrxIYLUXGafFIxa+kE9udd8nOCJrB70ETCF/zS8B3LyzwKsc
	 DMwGpO95n6yuQWtV2HjRAEEdeozkZwlNDfqW/z8j8wT/FOPpjUzi37px/Ojt7zziW4
	 XQHZryFSit3dYfuOWXPoI7+7daTl2fIEVCi+poDh9Pt2UYgtu0nJ+yn8QcLc4aX3H+
	 9WEmkM6SrtGpYWmP+9OiO2pu9EtXUG9slHwCvGYfIxy8cYmvz3txh/HjCgeZmFvFjf
	 AfEhk20pO1i6g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92976C98310
	for <ddprobe@lists.linux.dev>; Sat, 17 Jan 2026 09:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176864303358.12727.958103103107526756.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2813819601513521513c2c6a609ff5529773fa93f9e2e4481edd44abaa69bd2f
Date: Sat, 17 Jan 2026 09:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768643033
