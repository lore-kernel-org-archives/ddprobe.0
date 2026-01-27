Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F2E27342CB1
	for <ddprobe@lists.linux.dev>; Tue, 27 Jan 2026 15:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769528634; cv=none; b=HByPvTVj7sYtiuUx1M9gdVk4o6hVO5VjouAGEBXnJ2AXMrWIYKAOCk5febi5W805fRC4cGq7XIgEuCczFSOg6yR+bPsGT+XLacdT5mdbcg2P2aV1LkDn4TmPVPt59imLMBjTGenNsndFEUdhm4ekIIru0Y0KtJpksFCwNth+00s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769528634; c=relaxed/simple;
	bh=ZWmVNxixRSDZQhiITG2Gx85TkNLMLW1IHRCQQDLZt9c=;
	h=To:Subject:From:Message-Id:Date; b=o1Hk0hbNEENTuDk3Oyc+FikIstAWECZ1xO7HMqa3e4FuTW1nt+iOY6T5dcslGiiADcPN6KWmsqVSIwicuRW4zqkTiu03wN7lScxZ4JuLkPGfSF7HOQtn7rjBVpcOI9KzSVzBM+GnlIVndmQycdioLl+PPJm4xbyl3ilbrV/qIUM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=by/SFWS3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="by/SFWS3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2816C19422
	for <ddprobe@lists.linux.dev>; Tue, 27 Jan 2026 15:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769528633;
	bh=ZWmVNxixRSDZQhiITG2Gx85TkNLMLW1IHRCQQDLZt9c=;
	h=To:Subject:From:Date:From;
	b=by/SFWS34FsKNHXBt36iUMPSh5LPjhAfvd66owEx3qRogjPKHYr7zf6999JEqiMxT
	 8jSW7E+6kRp3eHBBau/WQGvgDsGFgxLL2bz7Dx9Ze+NuSnqNJmGB1KBdvRiTXwmwgb
	 33i35WJKLG03y7qg0sBGE/aGVfDxu4C+rEupsza5cQI+197EbakW+LuaMabwWrHgJ4
	 s16vNHL+fBiJaxmlnFbuLAUWCeS+fNleiujYnGkOkYoICKTaoG+bFd5JXeS+Kaevqt
	 cxuWld9OH3ItQHNo8BBNe+A5/xIi0kkkXDyVK/0Bs5/zMQF0pU7S4Ow63l6h9rrnav
	 cfzDWxW04fz9A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9262ED3408D
	for <ddprobe@lists.linux.dev>; Tue, 27 Jan 2026 15:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176952863359.21980.1582713817267474012.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7f063fc0884bafb258eb711b016ae70bf2a9ec30616fbd9b154881ce00185790
Date: Tue, 27 Jan 2026 15:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769528633
