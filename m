Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 316981D5CEA
	for <ddprobe@lists.linux.dev>; Fri,  5 Sep 2025 00:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757033994; cv=none; b=ohbAEQEFjaYSxlfwP8jKA5JdCvchUn5gn3TezvJ6i3X8FglRb9MxN47bfepjfrFet9h+4PAdp0S8p9DBqM2OZY5TnNeJ6pCYzKFDz8WtvRrGrID71IioSd6W1IdDHMohieLy47+RdjQ0hyuRjOvtDosGH88OZ994yayhbfibbPQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757033994; c=relaxed/simple;
	bh=3HC2vR0O7f0ft+rEe+ctVNFU9GSLhihHAhuEetV1Br8=;
	h=To:Subject:From:Message-Id:Date; b=O9zeprl4B76XmSfOYz7pHsXSxqEbqxA7y4cm8cfly06qTHGnb9fxxJd8pt2THQ3I//IDS7Yze3ftEcOFwuGg7gtkp+rHuf8eC3FQ7xaIqabHB4RyPshh8B7bgDGVuluW3jTuiVR7IJ6Tc1rMlZV3a8n6kjedWWN5IEV8DZAQe3Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ttblGdpP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ttblGdpP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3A74C4CEF0
	for <ddprobe@lists.linux.dev>; Fri,  5 Sep 2025 00:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757033993;
	bh=3HC2vR0O7f0ft+rEe+ctVNFU9GSLhihHAhuEetV1Br8=;
	h=To:Subject:From:Date:From;
	b=ttblGdpPsbOMDxI+pgHNh7T+db6+3nrunQDFF0zO7XWzalErz+kEeF50+nwkyBzrN
	 hSMbsPgiqrTXxQ7SW44KQqpFiiedO/sqKKpSeHfGYOqlXm8ThG+fdjf/9RGMtnNIdS
	 hlp96oyif7RgxJS6PWyG6ZVJqJWtchMYmZ8YQBtU9OXifBNPOtXw50JckSMSpkqDZT
	 wZHMFw/v41kuWJ1nxiGHB8Z19upzZVfCcBQ/6qQwpq3Y64TPrca9IZ/ywW+5XqHLCK
	 ESP2IK8PjWP2aPJUlOqTbSxt3uZuKMONeET/bPwGN8mNSkv1ZESAr9TUz+QHhKOP24
	 elkMShNWiqckQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F577CA1002
	for <ddprobe@lists.linux.dev>; Fri,  5 Sep 2025 00:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175703399358.25124.4728567995086450474.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f9defc4cefad619a39e2a6f40f5d0dfa4e96db1fbc69254c96a090fe77f46691
Date: Fri, 05 Sep 2025 00:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757033993
