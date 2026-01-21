Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2592E31AAAF
	for <ddprobe@lists.linux.dev>; Wed, 21 Jan 2026 11:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768996434; cv=none; b=MMH4vb5RspbhY6atJPiddNmqiPKgLoaazdKOlJNcAgyGzsM9+mygKbsI4DePp/OnmK7Uf376oLD6xmQGAuTEprPfWGWVg1YJCPCdi1bOfzFUu1Oh+Fozx6Qw2J1/K/AVZlsfFSoLo+greFvL+vFv9vxRv2/srJDrkdafNoUHns8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768996434; c=relaxed/simple;
	bh=v1pR684Q8sBgkBlXshD0EGsydnjgHQpKFcAnJJo0Mds=;
	h=To:Subject:From:Message-Id:Date; b=sRsiRYC5tEf38LOBakdzkqLOl2zLVzdeH+mQ3BZ9QeNmMB69FjN+RRf8k/Su1AGpSAf4f6f6JWq3HKpoWTp8RtTifjMwODoN3DXPKUbxkvUz7lVbKXgF/PgdlufsJelj1swvGF1KsuP7m5JlnKn8CHoFdYDyQjznHuwdERJei8U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hnXqPd+e; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hnXqPd+e"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A10FDC116D0
	for <ddprobe@lists.linux.dev>; Wed, 21 Jan 2026 11:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768996433;
	bh=v1pR684Q8sBgkBlXshD0EGsydnjgHQpKFcAnJJo0Mds=;
	h=To:Subject:From:Date:From;
	b=hnXqPd+eIQpef8Q9I/xe40lbvu/HPy83GrzihT1YzFwSgt2EOGWwiWIb1xVVlQDMs
	 Q/yVtKGrtn9TmjEEFuwWaVSXjB04qkUQG5HBCnL1jSGEyHdkBraDGJSxRZdqA+Ab36
	 Q5INk90ZQOPZpBYA2+8sITdekgmP+vt3GT5Vpfm0BQtZp68se5msG7nGSlGphtnGCm
	 m1qhguFfdFkbmTKJQdR6RBFNbRoUZd5vSy+BQnSfh+Y6VymqxeLLhfpdUvJ9mtanhL
	 zzHMH4f7XIHwsz3mv598K7ddB8G9eASDXAPOc2mA5r1lm5bUDMF2PQI1kN+LCCGl7r
	 LP3qS7zZmU5GQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91B7FC4450D
	for <ddprobe@lists.linux.dev>; Wed, 21 Jan 2026 11:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176899643358.14138.4995367529941864219.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 030441e7e987e193ae3ce9dd09d50880363396aac0ef652ce11e5a8e87c15edd
Date: Wed, 21 Jan 2026 11:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768996433
