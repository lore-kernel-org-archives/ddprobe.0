Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 440772D73A5
	for <ddprobe@lists.linux.dev>; Wed, 22 Oct 2025 20:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761166794; cv=none; b=nUJlKUu0XX25hcAHz4alsBYB/5uQ5C+FLR46oXruyE7AlQjmeBdR9cMbeBrgrmnwC0B04fWSp+HDYX725W3wCnxgHq9pBUL+UVw971HHSPlPZcrKIBfuxe9x0d3puLwXOgp1iZtPBOEs9oCE8EHaSDqt1pOOBvBdYh3OUDYCgzo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761166794; c=relaxed/simple;
	bh=M58nRm8U6pJls5zpnrETlOJmc8cwXFUPo0FalcsvjuQ=;
	h=To:Subject:From:Message-Id:Date; b=JM7YNWc4KskGxryZ+NjBPfM0do3K7B+55hKGxgEbL0aPx6LDZqiICXEw89t0KYw2H35yrOY0pc5q2x9dBEhfKviJ0knU9ohZuE4fuesCtRuZbhvLMolxdKw5ipbJmpSIIKzHqDlpNSiGBjlMNW2VR+7GzKNn0lp5sK58k7SbFGw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VikznyEI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VikznyEI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B005CC4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 22 Oct 2025 20:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761166793;
	bh=M58nRm8U6pJls5zpnrETlOJmc8cwXFUPo0FalcsvjuQ=;
	h=To:Subject:From:Date:From;
	b=VikznyEIrmJ/b7bs/mLzYYIIT8hJfN2I3e3Sbv9uGuaI/2yH8Wap3t8Iah+Vz1t2Q
	 p4yzX3MD3iih91HO/W4zwLuR3d+tT1lwTfv7pOj7udt/4f2CZwEyk1dx2xlttfe6YW
	 7dKc9Rw4cnI/GVCmCoLtJrjWX2Q6xFpLcCO2YFMDvB+jFbzcwV9mO8A19a89fpM6r2
	 pDhTF6VTU5QJoO/0/dNkeZgiIFwr18x3tF01pX77GgrwlDIfL/hGwdR/cxAlFCeqt5
	 1Rd5pITO2Jb8OJ4ZZ9WWG2ulVfF6dqNvckWhEdzxL59g/icY0hTT/J+6Z0al2EvNef
	 aHWvkrcHOO2eg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F5DDCCD1BE
	for <ddprobe@lists.linux.dev>; Wed, 22 Oct 2025 20:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176116679363.2091.8828368562643641628.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a2591aecb04e5603653a72a3eddcc30433d42b909fb381e048b590703796374d
Date: Wed, 22 Oct 2025 20:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761166793
