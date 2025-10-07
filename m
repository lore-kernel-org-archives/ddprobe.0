Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3662B2264AA
	for <ddprobe@lists.linux.dev>; Tue,  7 Oct 2025 19:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759865994; cv=none; b=XkqXr8orz8DIUhoF/HHtPUOvyTu0+6qKi+A1/6TsOHf4ryjHAbtyxj2HrRTFq/FGXaYiGAuSInFJ79CBGXyaLKcdphwn9GoaGN86f2QUfLMt3g4EDn/8G0Y1aYuePlVaGngd5SPTwEPpSbVgnchIkTgGJtzhTOKDaWTT7Pb7dYM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759865994; c=relaxed/simple;
	bh=LwwYO2MCECdN4YobbtQPFQ0YSWTPBLe85v7LaRwFF+o=;
	h=To:Subject:From:Message-Id:Date; b=Ujq6LRfKdG0QhA/WWgRIPVTnx88+3J6F3+oq7qwtys8fkW2kZq/W2AJsY01S+1T3omG1e67bk+9uX4A7E/n6Adghl8+QGqOCRy72QpK8hPTX8q4PqwlDP3KjQLCIsrHSY7BNgFn7pFyOqnEQOnsw/TicwtbIfQJ99uV8/52AEeE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qiyzLnkx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qiyzLnkx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABF40C4CEF1
	for <ddprobe@lists.linux.dev>; Tue,  7 Oct 2025 19:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759865993;
	bh=LwwYO2MCECdN4YobbtQPFQ0YSWTPBLe85v7LaRwFF+o=;
	h=To:Subject:From:Date:From;
	b=qiyzLnkxJJ2cNLervQHKh8Q2Qm3SSJTSVhL2J6lYtBLZOWvS4cbp2nZEqRwmi2Iue
	 HCtEGyswZ32bGtubtgwj9ZEFjXIji3DjlWjRk2QauExHFJ1RO66PS9Rk69WhyM6yLw
	 +DTHluM1NcJs51/An2GFu9CmpVkQS+pllV5O4lEUFajq8evDWjK2I5izvaTQ7laMTA
	 86i+vxKFBVU6cvnZlkaLGGLNDz3QSjdJsFWpBxu43SwxeGmvheY0a9CdyA8C0rh7q6
	 IDIarpbVU+plHLluBLDTvamROQFUupSqTQscMkaTfmTw0LP0MW00D1zqpFWuC0DTv5
	 RImGzdF5ssKqA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94896CCA470
	for <ddprobe@lists.linux.dev>; Tue,  7 Oct 2025 19:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175986599359.17935.75955736402121187.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 68d510e48198c331bee4df86347aea2eb73350b55b864a3797be5aafb77bca84
Date: Tue, 07 Oct 2025 19:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759865993
