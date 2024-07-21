Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FADC10A1F
	for <ddprobe@lists.linux.dev>; Sun, 21 Jul 2024 23:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721606154; cv=none; b=hUeDysD162qEANDnqnrQPkS4Gv0u1OchJyuDRds1sZfhNRBDBZQEbXGBlm7uNMW0W/KVlU5apds2Jji7qDOOqGDgDUBqjuGAT1eAV2ebycfD6LGmTreikkBr4wI2q+IkHHfRtD0RPxzfrJMGS3GchHU+hh9QafBW5UhGs00WxI0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721606154; c=relaxed/simple;
	bh=3HOVUXKOrI6ZXpx8saG8ijHd71RoZIrhefJFXfmXDIY=;
	h=To:Subject:From:Message-Id:Date; b=PuT6o1Fnlsny5Wav0I8XBJQEd69+UvJ3knlR3HTuXzjtJ60Uo0KBUks0Ou26mlE60+sa0N4+eA+7uDpX2p+FZje3QFKqHXyONRe17bHHsxoOH7elDznHcNr5KH7Zs+VY8/5pEzCjdZpO4Ys3OWQbBXiVMab7PFgS0ojYVXE41h0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MMbST6oi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MMbST6oi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AFB84C116B1
	for <ddprobe@lists.linux.dev>; Sun, 21 Jul 2024 23:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721606153;
	bh=3HOVUXKOrI6ZXpx8saG8ijHd71RoZIrhefJFXfmXDIY=;
	h=To:Subject:From:Date:From;
	b=MMbST6oix+x6VzcqU6cOLNVoyc1oUxQzx0Xa4qr3f5+wcfzNOzjnMGDckW4Xq92QY
	 WdzZA0Jz9mD2nXaplCJqIXyOLt32Fp88piz8sN/06vCVwRViXv9CjYJhgAIcoCsRxl
	 HgZ7XRzFkC1EVRYMz9HPYCzII+7c6ZlJ3Dk9mb/YEhrnQ8b9kDMwrEoXR2w3gYwvnr
	 m944gmYFEhYEeHj55WOpY4FnRgwv+Ws6NFR2ZrKv2NT+XDdPv5PKf1R70+qWOwFuee
	 kVraest7zHTJwmb8qihh5tiMczCG+hpzxWay4Akct3J9ZKJFqRKc1NmuHZc6ySi6Pe
	 tobANQhiVewuw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9CD03C3DA61
	for <ddprobe@lists.linux.dev>; Sun, 21 Jul 2024 23:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172160615360.20311.2790897191858834267.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9f4ff4cb2abb02df6ecbd481db8b86d9cdc4547702019016f59eeeb26ff69a31
Date: Sun, 21 Jul 2024 23:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721606153
