Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 096C33264CD
	for <ddprobe@lists.linux.dev>; Thu,  2 Apr 2026 04:45:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775105134; cv=none; b=nmTquwQuctf5G5ThziL69e3s4/75bIyJfO1zFjcGi1kSzWa5Wk8CBN9JYXevWyWWiGPYYOg7fjWgjAwZDiUqfNvv4AzNlMRb7WuNG99TmFZflSpnnjBkRtlvlCiXd8J8uxSVDy+R2gtn1mmYnK974XIDUv+cjhPdyJeiZtQJ7w0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775105134; c=relaxed/simple;
	bh=N+Yd6G2NZcnH7tEPMNX9FZXJVp50zUtAEyQo5kLHtCg=;
	h=To:Subject:From:Message-Id:Date; b=GSpINsYkhIElkTqOxfvg3hBHWMl7twggov9V3HeE+ggbT6dvgDWyHSeCl2GyDZB24EpFsgL4BKfe6hQ2/iS2vNj8yVdQwTYJY/o3rrGE0p0YA9wrCssoFGImroXGqDhXakYPyz0lUWmYYpjwIlvb9P2qBRIMgSZQmTW7y+XRvG8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TOSMcXcs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TOSMcXcs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C5C37C2BCB0
	for <ddprobe@lists.linux.dev>; Thu,  2 Apr 2026 04:45:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775105133;
	bh=N+Yd6G2NZcnH7tEPMNX9FZXJVp50zUtAEyQo5kLHtCg=;
	h=To:Subject:From:Date:From;
	b=TOSMcXcsfZpflTt24sHx8ExpV0OkQ0Iwr+sCM93S3eEEtSlmKthfUAgNFJmFeu7xF
	 n7R4AnyNCK1OcwhSiDESlJbjjICoIyPQ7XVqlEmiTpuqEO9Pw39aBpkJrrFReS9ejT
	 NKUdQKpdT+gni7x0GhX2fez2dM8owaSTrYzbJUtEQXayGg/xB3sQgTIThWAqk7hFZk
	 MAQ07WZz+4/fsuwtHUt4cazNEiw9yK59YHdrELjtm3lLlfVZRO+5sEHkTYrDQkaQP/
	 HOObAWja7HWslX7ZVNo4krZNBqV5znw3HuGJlyxnj7MOi4H3I/W2YzTIrpHtkgiViQ
	 7nGy7fpL37J3g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF36DCC6B01
	for <ddprobe@lists.linux.dev>; Thu,  2 Apr 2026 04:45:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177510513369.9585.14409154176355487468.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 88e801da44febad1eabfdafd13302a7f5ea1583c8542d23ae7ceebb128bd2d3a
Date: Thu, 02 Apr 2026 04:45:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775105133
