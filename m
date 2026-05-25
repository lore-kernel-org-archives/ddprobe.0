Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A02939769E
	for <ddprobe@lists.linux.dev>; Mon, 25 May 2026 20:32:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779741154; cv=none; b=ZTe+U+0oenYcc7u2lMFKA2KzgH7qpjo+BfOh7mfm8OHt14to2k6mdkNJ1eGxVZQ2rEQ6i6R6uxJVq3tARs6kjMCLawjsa/AAgWvcpk399t7rFkQ9bT524OM7vIJOwOtfqWxQat0latsA4yQsrsDy17Agz4zQEKcj1vI8WvUKEhk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779741154; c=relaxed/simple;
	bh=L0kX1F+aRhUAeAvjLAWB0eGogtCP1lFhlXSL4qg9280=;
	h=To:Subject:From:Message-Id:Date; b=Aj4PKIy+VeOJMMLp/K6Td3ePG+WZ5FRu/+qC5o8ARedwGV8bQvsvVsgPss89o/mkVSLXXhnGJB4lovxjWxqfxb0DUDmn6AcAyu1MJrALq0vVm7aOJquLnshtK3uebGRAEL2z0n+fhBWlZAOKaWaEIJtXCV6fEBrBEv3H1izCanA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YQE6PwwP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YQE6PwwP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DE841C2BCB3
	for <ddprobe@lists.linux.dev>; Mon, 25 May 2026 20:32:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779741153;
	bh=L0kX1F+aRhUAeAvjLAWB0eGogtCP1lFhlXSL4qg9280=;
	h=To:Subject:From:Date:From;
	b=YQE6PwwPAk3pxVk8PyUfgVjCuGCwDT1SjZIjURS/6PywgBE8aRXtIK5PoK0kGv9G2
	 yGr7ycmRQlQUWL12aOpHH2Ese/rGAYxRwFHOmyYM+2sXc9n4SxUBGAtf03Mh+tuFud
	 N2Jkn0jDDI119KiYOswkkQwJc7c8zXUm6veCiYxc2XvJ+jzshD5pNP3Ht/Z1qsOExM
	 5C5w0CvZojiqOeCm8/caln17PhOpjg2nAX8LVbDmIDBwG99ZUm5umw9D+atcVZp2Ej
	 5DvTGefuPgmw4FueIPYf1kSqI5Qiti7hbGi313GOBD1J9he93XVHQjqlY/4J4wXt2G
	 eL4j9X5HESvVg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C5579CD5BC9
	for <ddprobe@lists.linux.dev>; Mon, 25 May 2026 20:32:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177974115379.5556.16302274774839169249.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e8aa9232bfeb67ef4b7c70d1a7d4a16502e92c9abb5007dd17ac58dac50245b1
Date: Mon, 25 May 2026 20:32:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779741153
