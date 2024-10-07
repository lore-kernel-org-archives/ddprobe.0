Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C65C18BBA5
	for <ddprobe@lists.linux.dev>; Mon,  7 Oct 2024 10:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728297954; cv=none; b=oOyKgVUNU2v2Z+t4vJvhiwPkUfu5n1lTzpga8ezBDqtuIuu3TDcCqQPkfz2USGziX+ToS1l0zeQ8J3WXc4sL+BgeGT3lKiJUEKb+g9SA6xiRya4RlPJfGeXm5YOmbs1Ybm2ItDvcHPcvsd9V1gr503uR0xEUL8Ld3E6wCzV8zgU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728297954; c=relaxed/simple;
	bh=A5wZWRSEmyIqsUSkuFQS2EYspmlNcLRyddOeY4pY068=;
	h=To:Subject:From:Message-Id:Date; b=olILtTQd5uBrO4NFaLVu0MOsi0YxYjFbDyD8jg54akYo56Je0kbZr7dOiK4qgQW/b3dDvCtUIlAeZK2X3S6I7v8cvLuu6DHoMykb07ahFSJhkR0UnENpooFWPK/1TuiS6kK3LlUjc7YrX+o6lta2OlMORzXX4bqZu+bbnVOrppo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CFyP6eyq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CFyP6eyq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AEC9CC4CEC6
	for <ddprobe@lists.linux.dev>; Mon,  7 Oct 2024 10:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728297953;
	bh=A5wZWRSEmyIqsUSkuFQS2EYspmlNcLRyddOeY4pY068=;
	h=To:Subject:From:Date:From;
	b=CFyP6eyqyxcM76jRr3whJ8bd8mZ29BK7x9A50HvdxWSnN/i/pJCgL1RB2uJbpR8P1
	 fC30ynb2X7tIRzLNI6l+g6yJejoxB1obWImdGadDf/HDpJc2AnetwoWCFoPtKo+9+g
	 93eZ4oWp7SVOBLqgxLJL1jaxqofxeO+Ap+zRkOiBajKF2qUzcatE89VPaI4fDlpFsA
	 gINDy2u3fYeSFDxN5qZZbujQpMMNVrmzM2a5mXwJv6VAy3uIbFx4IElNfyOeJ2gFIe
	 YEjtvGQzjuGrgVXaF63iT3wFw2GP+0yTfqQcscbcUyMcf6FVqug3Djnx/yKFzWEtVb
	 0n3oc40nXEqRw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 998C6CFB43F
	for <ddprobe@lists.linux.dev>; Mon,  7 Oct 2024 10:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172829795361.28054.18442358860214636289.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a2ac9435fbe7e725946f33db76eea2c0b367f51b4432ede9204600d20c076825
Date: Mon, 07 Oct 2024 10:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728297953
