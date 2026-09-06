Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4375D3AA4F2
	for <ddprobe@lists.linux.dev>; Sun,  6 Sep 2026 14:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788704434; cv=none; b=GWKtpS1HBinumwM7N0ScQCPxVAXR5UmDysI6DP1IZawy6rCAWaCTIBnyyA8qoTqwrmjyco54WQEtEajCZE+kBoOhFjCL6iTfUHZSkakZc9FT6HwNDwjdAmq/3G4Yc2kw9IOOhUf6PgJFV4ImTRBO7snKx8WuxNvLFYjs4l46GEI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788704434; c=relaxed/simple;
	bh=l4U3twVh7VRrO+sZmti9P7ceu8ZfzWwvHDw4TtxarFM=;
	h=To:Subject:From:Message-Id:Date; b=SGvVE4zeOdFe5v63sO7t54imHW8q22ndAybz2hVvYhwqOyKyOETPJXSS4mfYTPnTQAreUQxP1GyjhFibNLTQu5I4xpw9s0LUaKuIj7WsViKXD5CESDhLJLzwH6wwcJhXqCbPGBXHU5nletp6fZQw+l6gHS3fZuu7Ov2GzDdA10A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hWrCItLk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hWrCItLk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5DECC2BCFA
	for <ddprobe@lists.linux.dev>; Sun,  6 Sep 2026 14:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788704433;
	bh=l4U3twVh7VRrO+sZmti9P7ceu8ZfzWwvHDw4TtxarFM=;
	h=To:Subject:From:Date:From;
	b=hWrCItLkFCPJQpjGGivzQNK15j0bLhJkTOxizrSeRpiv6qAor/lvAKCOn43x42imS
	 JdS/L4gz1MRKkhtZr0hSireckUNx1DdwC//LwsU7YOflBpqtgj0ASx3PEyl+Jmznjc
	 C4jic6ZJc/sAry2CH8/DKQrcXAA5yQeZybJyp0OansmaS5yiQFGJXkVjq1ce+YndpT
	 Uukobyd10UToUj0CTSihLn0adUc46++CCBxE5XvrQZuC0uNw2ZqIg9+sc1F5Ue+nSJ
	 9Pe1BMhBiyWkH0WgIPzTLybkYLC2QAwFRvZCS7fafOovQehXtFDw2OI4BRoYlU7vfh
	 zBbI4Rt3ZGBsw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEB36C79F9F
	for <ddprobe@lists.linux.dev>; Sun,  6 Sep 2026 14:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178870443369.27095.972865849041117386.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 40024f824e8262fc510a9baa144bbf92cebafcf6381c4e16b2bb0409edf32da3
Date: Sun, 06 Sep 2026 14:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788704433
