Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 022AE3002A9
	for <ddprobe@lists.linux.dev>; Tue,  6 Jan 2026 05:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767677034; cv=none; b=gFWKen6Of3NaMi+Ck4S56YMm6YCSfci3lg9Q9pFMnGYUImd8AqTxQadU1qkSw6wgkB7EvoP38KkIBQmhb7n5yLW8x50EDvoswCpMl+ee3bUACl3O4rqSuBVLCpdeWWYY+Tv3SukeNCvcEWDkWFkIqUGHe+ojnpc0a+q5SbNoJ1U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767677034; c=relaxed/simple;
	bh=FzimgVpFHOVep2dU4E1hR7KzuvmHMkQviij6ToTToy4=;
	h=To:Subject:From:Message-Id:Date; b=a5+gg4phMFpe/KOC/FPP0LIWQw96cWV/yczi278kGTfuEJGG0AJIwchJfnTHgAQNIrXuZyBgE1Na+GiitzkkLomvtZ0y8uKpvzPO1fIE9ly6al5SJPAxe4bIQwmwyrvnJyd6jMz4o0PEjrCUTGZYytpW+63IBAAnBXNeW3DhSuM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EJgaS8Jo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EJgaS8Jo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD533C116C6
	for <ddprobe@lists.linux.dev>; Tue,  6 Jan 2026 05:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767677033;
	bh=FzimgVpFHOVep2dU4E1hR7KzuvmHMkQviij6ToTToy4=;
	h=To:Subject:From:Date:From;
	b=EJgaS8JoW2gyQG6WezpVBJFY0VWvymSY5ykc8ALbQPPKaZAe/W7/XcC87fXNGw7Mg
	 egb+JZMgDqIsMwUd7bAMSehUOSJQNEDfE0nSrAl4wgvYeyMlwAHTcMiwOGPmWJUHRI
	 9y1UFDkqlcKzfnfAkj4FjhWUqCploVA2mUOLfpwHPi1GJlRaCXjYlKsnPjht7XOVC0
	 qzcPnQBqpJpayzPBIu35dhy9KrUrtJwqP30kg6y4BnjhSNhOJJnyUVXAsHtZ3hIgSr
	 Zr6HkkqTqI7YOrdMIRhU8zIHiZ9wYD08T/7EBr3TEru/rOImqPbxEACtxA8PLTQ1J6
	 IL5GeyBe6KCgQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93797CD0438
	for <ddprobe@lists.linux.dev>; Tue,  6 Jan 2026 05:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176767703359.12977.5448436703993562106.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8dc621af032b2f37bc86dd765151901e1096c8f6a52dafd49b8dd1f43ed1679c
Date: Tue, 06 Jan 2026 05:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767677033
