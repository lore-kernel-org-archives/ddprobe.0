Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 263521D12F4
	for <ddprobe@lists.linux.dev>; Wed, 21 Aug 2024 20:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724270754; cv=none; b=bUcLr6PIpTjQg69oqDdHLQFy5U9YgUoYKx0DsMljuWXB5ZHfrUjOF1b/oKFzC3+AvV8GMvaACR8PvalMwYVbJ4FzUg41K5au1quqLlr+HJ/xtqIJfEFszMKF6e/KRVJ7v7gd0/uvWzYlwkQ7aiLtGm6zWNkiCkClvDej0qj3QGk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724270754; c=relaxed/simple;
	bh=Ri/fTliVusD6RR/7Z/rceJbnQGAIV13/eDA/akBKSxw=;
	h=To:Subject:From:Message-Id:Date; b=QRn/kt/7/cOiKAA+bC4YB7qIw0VsCfIvhUXAroscPBcHWbByn59lg4AczU9Pa3+C0s+tHz3G5ivNJsEahJOzFOCpl/UHQJKKQ2JPhXyQYZKcrNXmRojm6tBIS7yPYR7/AM1i+3UUc8Q0BjdBXCIaBH23KMMsosS/iBx8xIchQd8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tzkNMFj3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tzkNMFj3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5344C32781
	for <ddprobe@lists.linux.dev>; Wed, 21 Aug 2024 20:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724270753;
	bh=Ri/fTliVusD6RR/7Z/rceJbnQGAIV13/eDA/akBKSxw=;
	h=To:Subject:From:Date:From;
	b=tzkNMFj30ao5yUrkRDf7mk6clZSbrNjdbunUAnJwF5wHUl7HiovR1HToOK2lwkSNl
	 udOn/KWeVIPVlZe8r2dOOecBJVFePZ8dJm1Yy+JosPLYiK2tsQjcFSRZXhyID+1BAG
	 J5BpMj8Jt7XjEVmNpSEuAfY9CheHWazDp/oHrZedzSG6RbBvAnLvA+WH+oWhU5d8Q5
	 MP8XLaujM6HFi1prBcInxbgBkCN/rszGwXx5a6FoIK9MSG4+F1F5hTHrX6g1OtSphX
	 Lvv3lA/Eak8hdi25/Z9legTZBdKy30PWVRWFhXMzLam/ygyMHmBCcWliuw2C9puqt2
	 teri2+Z4mUXIw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9520AC52D6F
	for <ddprobe@lists.linux.dev>; Wed, 21 Aug 2024 20:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172427075357.3353.15332687446475811263.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6475ff9ef852d126a26891d63737809b219d0cf22fba5b987fa9ed76f7e50eef
Date: Wed, 21 Aug 2024 20:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724270753
