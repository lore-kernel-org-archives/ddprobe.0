Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1400D18732A
	for <ddprobe@lists.linux.dev>; Wed, 16 Oct 2024 22:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729116354; cv=none; b=IK/HsYO6WYFlJg/UkSnFRqeA32W7VLu2HKWBRbLOHPmZEq4/L9aRHEsMGorf1oadyumQPAi/RbaIfTeLoWXYj3Eoeb3fhDhmvIkE2t8nAlTSSwuSZKyoAPhqSuJJ8+EFXYSt3KN+dtspVy43qDKst7q2pCy7MMl5gsn20tHJ0AQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729116354; c=relaxed/simple;
	bh=q0KhB24pCmgKwwWF7XyXVb12sqRCxqJxr9X4HU9aa+k=;
	h=To:Subject:From:Message-Id:Date; b=B64QCB/mNPFVLRX11yGQrPyIoAeoHBWPbwdrjZBSx+Gf9e+OrHfnXUir7xEC4+oUsNXIPwHza5Lpai6lKj77tvsjYdDplqipqRM2PI3k1kHKXj1oKIx+K6sOudh4Ip2f/KheqAf2/PKGYwjcC3uPqITZ6Zl/3k7zpsaLAlMt4Qk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=S+UZacXU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="S+UZacXU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3485C4CEC5
	for <ddprobe@lists.linux.dev>; Wed, 16 Oct 2024 22:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729116353;
	bh=q0KhB24pCmgKwwWF7XyXVb12sqRCxqJxr9X4HU9aa+k=;
	h=To:Subject:From:Date:From;
	b=S+UZacXUwRCuTuMfZHqHMl5vbnhrZGoduDm32I9Y66Uy5D/hRvMXbBRcrFYIadn1M
	 YKQu9nuJCtQy2LYd4+rwj4ylQkcAwg7NpJFk9+gCR7gVM8t7BzcsTrQ51mXRS/pXYQ
	 w0tBDfoskZ3J5yBH6aCR6+bKA8QSCpOSr4gFTPAimlR5wbRuEBtUPyYPxhHQ3t/BR2
	 GMYQWjDvLb1HF3TVYyTRPQAFlDNG3wg4zLwErZeI49uhD7zhNPOZ/cc6WrmXBC8K+t
	 Nk8viMHj246T6/O9Ig1SynHBqOailIr2v3ylkMwd04VkODVxCgnhljR9rZviG2TCUE
	 OlLnT8Jp6G5JQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9259AD2F7CF
	for <ddprobe@lists.linux.dev>; Wed, 16 Oct 2024 22:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172911635359.17769.4915545129210958603.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 44c76a2648415b0866d9395995bc70fc377ad5cf30a68924edaf2a09ee4ec26b
Date: Wed, 16 Oct 2024 22:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729116353
