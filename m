Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40B8214A91
	for <ddprobe@lists.linux.dev>; Sun, 29 Sep 2024 15:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727622354; cv=none; b=fJPe7HHSjkuu2Bi9vPYKGA25IrJnbUZIsU7QhcWjMRUST32xrEufZSBLFFtoH5mD2Mr1/S+eUbdI70IiqE7kPHBxUCBuY1rO9yp2Ml4hNkaY6NEvUXUHxwtFfKnpIkE5o/aQ2JEqywnBBZx6XyoF8dvqGlZrQQjFpnHGBi/fuV8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727622354; c=relaxed/simple;
	bh=BUBmJWHl3cXqMGPUzRuAq1gRb1nq/yxXMVaBME2mbok=;
	h=To:Subject:From:Message-Id:Date; b=n7oUpKDdRfygOKKSKNrWJaHy4t3MNKY0IV2+lhTPkjD/2+juoOOQ5Tc5J0zbjqqfw5kBkr0haRFlow8ZuSTpNE6o+J2WX37SBWRLovzw9GEFV1EKTt4tkAzPHx6hlZN4Oy/KmCOFb4aWzOJ6hPZfeGtlYJTKzFwjtkwxTf4L9R8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MOiGb7gi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MOiGb7gi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B62B2C4CEC5
	for <ddprobe@lists.linux.dev>; Sun, 29 Sep 2024 15:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727622353;
	bh=BUBmJWHl3cXqMGPUzRuAq1gRb1nq/yxXMVaBME2mbok=;
	h=To:Subject:From:Date:From;
	b=MOiGb7giVgTb4qGvsCQS2uNMW0wGuNK8SR48HQBQQvRNJG1HoEKGN8tnt6ZdHP9wy
	 Yep/KGt6xHT/vFQf/Rid8Udttw7xrZQ4OqxWtC+lSut8/uvQx0VtC1xmVUAtdLDDdq
	 qUh5nSh+Sgk4wdHboh4fpH7in9McVadWO2Apzg6Ls46j7iZMHBiUyp7vGrmjtV8uDZ
	 mIPzNvNnpuyrkyhXfnpUIiH//cu5IVDHWg4khawTTrQzygi7m+lDer4/M1IA5CHocA
	 W4UxGJnftLJizOYP0VSflHJkTvu1BzjKJlS7CQIR7Dhm6cM81nLWqit0PCmnln5LKE
	 3FiPhjR3sjg1Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A3CBACF6495
	for <ddprobe@lists.linux.dev>; Sun, 29 Sep 2024 15:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172762235362.11344.6400577288770715058.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b0dbe1e58a4629ccd5e3e862df896db21c3d2108c7fbb6aa9efeb5defbff9e8b
Date: Sun, 29 Sep 2024 15:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727622353
