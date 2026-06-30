Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 140831C84D7
	for <ddprobe@lists.linux.dev>; Tue, 30 Jun 2026 23:38:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782862714; cv=none; b=pnyehDFKAzp1x8PzlEW9pPOZsFWoDaxE9fwFHTEdgXckWid1B4f4mb8vjP1G2ExQeU99VeNKYTiiJr4dpxZHQCXwOsm6nENCNnl3hdZSQIES2AuV50yjpISSGl7FTjDS0n0DEzV0/z3JbKfZlbObAYlHb742B1JZGtJHQW7zaec=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782862714; c=relaxed/simple;
	bh=EizGJnbkAR58u7NE5zXV83KzJMGwb6bxvrFTwodYCac=;
	h=To:Subject:From:Message-Id:Date; b=C//x1cWpdvGfUkK2+hlVMBMXQutUTkN2ptDWW7Z/07tI0lN0VrpJ61cbRzzoeotY4l01PJx2yIy0pqENTKQrKAkh/99TxsSLuNqZY6xFZU4+I7zmwdRMYb9W108X1nk2M9/7YOsi7SuOiIhkcaF0JJfC8L6kx3yW0yn8oEgFRD8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aOUV1JCx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aOUV1JCx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0044C2BCB9
	for <ddprobe@lists.linux.dev>; Tue, 30 Jun 2026 23:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782862713;
	bh=EizGJnbkAR58u7NE5zXV83KzJMGwb6bxvrFTwodYCac=;
	h=To:Subject:From:Date:From;
	b=aOUV1JCxMrMTPn8k3ID9eRbZWgx7M69O/DRB17TYHm5OOHpDgEyP7qVcgtG/wXCC8
	 9ZUppKBpKP4V93nWdWTQfDDMOYl9isnGfFkkdaAdrW7bKFn3C+9fFxMLhvqs/aJdcx
	 XAxJmhZEyccna+EkKGeW/Z9E7MSFmEzSmidJgPBuMFmJXgiMD78Sn/lunslp/w6bZV
	 WASA94u+5fyGcjYTf203kGfve1mPvI/DlwLiGMj9fN/9jje3KUx/AcOw9d+IbOdF92
	 q5+gAU6+/CY8w5ADwYuRFahkf9PZdVFo91QDuqZ4YvXBpkoVyvGpFMJZ+42CSEESS8
	 ppcE51U7ZM5Xg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8E0CC43458
	for <ddprobe@lists.linux.dev>; Tue, 30 Jun 2026 23:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178286271368.30551.14260023131949615119.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: da69ce84ce78a80b7423d612a08f96f0dc04163f4c2298d756a25e793fe0aa97
Date: Tue, 30 Jun 2026 23:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782862713
