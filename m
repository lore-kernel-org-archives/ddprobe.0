Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38D8A17A317
	for <ddprobe@lists.linux.dev>; Thu,  5 Jun 2025 16:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749142794; cv=none; b=i85a9ukLSyiXQNTPOxH7r3JPQnJaWyhj1Jhf8j4/d7qw2Jaw7u5mHm1G/lmhrlx/LjSVRydtLDLNd/bir6jc+09BwLT50EknPxu5+4oUhNCVlFLs+jA7pjwpWCR7sJ/ku9xjztOb+OsAO1jYOduD/PQkmXHIb5+XltjIUe5se1o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749142794; c=relaxed/simple;
	bh=au/H1tRe4g4cpy5aR8mn5naUq2EB4Ye4uPrxuetZy1I=;
	h=To:Subject:From:Message-Id:Date; b=Qqp3PwU6Dq+ykvCoeD0u2uNoCc/OiqJh01WBdz9ihxQ3cAVJs3mS2nQ9Wk06zMxwcOTX9g+sy9pm9vIazSkrrhtzw2cvYPkwetADKnDfMy9K1vK200e2C6o7h9hp+fF5PhbXH62dFVdFHlE46kdkkx6yadgqObh7yu8U4POrlT0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uJJ9AziM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uJJ9AziM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9E2EC4CEE7
	for <ddprobe@lists.linux.dev>; Thu,  5 Jun 2025 16:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749142793;
	bh=au/H1tRe4g4cpy5aR8mn5naUq2EB4Ye4uPrxuetZy1I=;
	h=To:Subject:From:Date:From;
	b=uJJ9AziMxlH1hQuvIW3mTeX1hWd1+GiLn880N6Es3PApGyPQFtL733BvGj6eNNmVS
	 Nd0EDcwCJvzEcnuekHPI3nJECzynxBynAbRq7qPZD6c7aNmLPYFukhgMOST03OpPxA
	 4zdiBGEPoS65j+xS+jcOO38fad+gA9FHU8oLUeGLOy8wahvOZKEKjgec3ZJzGH815s
	 6H2Bm4duAXnof5o9R9Luxg2I4pvZ1ox/ahbbNNrWHETe0B7hNOGBBqMRLQQ5Rxc0FW
	 BxNYzJEAWm93oNeJT+1lFEgzaJlW4DL+BOoZ8hOHP48/GasQZ2v1GH8SqOgukMm93a
	 JxFQVKsXXME0w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92B6AC5B543
	for <ddprobe@lists.linux.dev>; Thu,  5 Jun 2025 16:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174914279359.11037.10473274164937313237.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 50ccb0e678b7af183e412145ebd8dd994ebe93f347cee30446294b650ed92570
Date: Thu, 05 Jun 2025 16:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749142793
