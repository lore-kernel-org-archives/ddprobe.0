Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 058E3193
	for <ddprobe@lists.linux.dev>; Mon, 12 Feb 2024 00:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707696497; cv=none; b=kqa0x2+2x8FdF1IlDoqSFD/oWVoaqPHljBg70ZdSS6U5FQipmFfdgy6iu86EIGt+zu+amzg6yAbd5J3q1O52aeBW1nKQsjjsiicbm4TU5t1rGqqkH4QlEHuCvewoDgLhh8aeXkvobp9nF2iQaJZKC+Sbb1EbOhn/+VQICdQR5Xc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707696497; c=relaxed/simple;
	bh=sA4LO8ol+Q1pz/G39jr/nFbx3HLqxjnoQ3Ef7nlz0jM=;
	h=To:Subject:From:Message-Id:Date; b=CsL3iyP8EKx+3Ff2mjPE5GHJ4TWJbo/IAQhjNRTX7xH29At3ldAfRM99ymyfjICuIVIW+YKq7V/n/wqJ8m5lYsaNM/rHHqk8vxT1wA83g3fAZnBt+ayutFzQWh0Xgb6/fXgL50h62/W2eyPiP2ykwng7PF/BORh4tenbA89ShFw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sKI01VyF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sKI01VyF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 80DA7C433C7
	for <ddprobe@lists.linux.dev>; Mon, 12 Feb 2024 00:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1707696496;
	bh=sA4LO8ol+Q1pz/G39jr/nFbx3HLqxjnoQ3Ef7nlz0jM=;
	h=To:Subject:From:Date:From;
	b=sKI01VyFGaMfvzKjAeFrf8mU8mAZ+dE2nNf7b6Y/ET5iJQHg1hWJ5eYc9OWna+FKz
	 qSxb2XLi2vNfMRu1IMXoOsaaFB6xUm7ihoAfMqfcRV2Q1y0BFEgw3viulTDT1iFTAQ
	 2knPlIosbu+h1yFgllP16jTtswcz655KX+QYY8VVJiVGKgyy8HAnO7/jyo3/KRBxkv
	 29Q1hVInpv1CjgFWcubSJNw6YeTmHjmiUo6IXThuVvjFqIhiia0g33/H/jwxBkC1Yz
	 N0CkoSJv9Qnboa1CgwH7LYs3XZp1UOIYkIhbsCbhQCy72wzlSCwAkOUTAPvcQErmbW
	 hSQXcxfJ1A6cQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 66362C4829B
	for <ddprobe@lists.linux.dev>; Mon, 12 Feb 2024 00:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170769649638.12974.14612908905113836961.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3f78a14aee276483fa7ae40861b09c0004f7500073ecb422d67876b3b05a0802
Date: Mon, 12 Feb 2024 00:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1707696496
