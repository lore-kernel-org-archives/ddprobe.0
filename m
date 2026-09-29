Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D2C5D5158B3
	for <ddprobe@lists.linux.dev>; Tue, 29 Sep 2026 10:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790678434; cv=none; b=ZEuiIFkxf06Nv+B0yFy+wN1BSI3lTYX/NJb5B2z3VHSCkGnH+fOp6rRqXZ1kSCLcEsg9657/vQsOfI2RUZo6y7C8B8YayClF5hi53+Db4+Q9LIIp0xQ/XveUtz6qvAYluYRviMXtXZd92nb3NK1tMJN6d5xO3OUaOTvpIUnMTOs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790678434; c=relaxed/simple;
	bh=eaUTwqF5wumtZfKPu8GIYtq661De3APe0ceoeybsVHU=;
	h=To:Subject:From:Message-Id:Date; b=tY1bt15+WimR2z7ohASLd9tWLHyi+LbZjoElhbStHzjzPccjyWVOFkOTCGRHKC+5jXQc8HpVgMZXrQQp4FjfoY6tD9dWRMBu547zdeoaK/4gnUYIgCdU+5VjtHz0u4z35AMrXaLzVaMEujdVPVKAzlRVg7vzX89E3DQIhVDt92Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=f+nirvft; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="f+nirvft"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2F94C2BCF6
	for <ddprobe@lists.linux.dev>; Tue, 29 Sep 2026 10:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790678433;
	bh=eaUTwqF5wumtZfKPu8GIYtq661De3APe0ceoeybsVHU=;
	h=To:Subject:From:Date:From;
	b=f+nirvft9urJDStdQ564fdf/o4q/8mYH3hMRgcAIQ8eP/K6FBx2KVs4CC14Biip+9
	 TZj9t2iLEEqp8fuUqtrI95EUsPqEHSYNKY8rLFwVu6UGzE90V2g+fuZLTUEFSZzyYu
	 tPGcQ77Z0R6M5dGu/O/ucQmmlf8tiU35EN4qiMB/eJefB2v+5d/g8wBPXcvILoE7pm
	 FlfB1Day5p0aK1g69jsMKW7fAzV3jUJ6Vqg5XgwUbH9D4m5/KogXdhx9CqmIHztE1Q
	 CY7Y1PivWifuz14vZYTGAbsl5wx9MrkuhLjagU0xmahRJFUWLfeUeS+eL4kJ4KPlLK
	 vfF2Bo8ieR9Jw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD047CA5FA5
	for <ddprobe@lists.linux.dev>; Tue, 29 Sep 2026 10:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179067843369.401.456695432045257.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f756ee8ee27bc5502fda834128dadf60352a69caa000d074267c6125534a1610
Date: Tue, 29 Sep 2026 10:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790678433
