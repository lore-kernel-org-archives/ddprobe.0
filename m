Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D08E211A09
	for <ddprobe@lists.linux.dev>; Thu, 30 Oct 2025 00:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761785994; cv=none; b=bfo0XXDLVvaCsK7+yCW+2HhCYbiOertek0T5QcUhzzFXbrzwbz4motqmhKgVxhr+IEzAVq/22iMKApr7ZEKni5gvlat5cFCf7dJWqc/iTh7zE4b4Z0UFv8Y1C2rlPyys7J5Ecne2OSlTuOdQCMWqlpXOeLbjMQnp9e/zHE8kInY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761785994; c=relaxed/simple;
	bh=lIj3Vz7wU2sd+DRMMRzhzHPDZv/X9CnJrCjL0DBKZb8=;
	h=To:Subject:From:Message-Id:Date; b=RXWqaDYzKGWtsN1JYsx8TFiih+hf9xWOPgd4VPAc687iNIOWSwsXCs7FtSkKsnD36hOrmbFUv3Zj/lSfpkclybxIVbhVOR2SYtGclXhvUdZb1I7Q6yt0/awJxfmmp5jFBzCKx1IRneDUyfsrLFLDCYs/yJLcu6UEjiV2+9BdU0c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ENovq7Uq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ENovq7Uq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA95EC4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 30 Oct 2025 00:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761785993;
	bh=lIj3Vz7wU2sd+DRMMRzhzHPDZv/X9CnJrCjL0DBKZb8=;
	h=To:Subject:From:Date:From;
	b=ENovq7UquwsHPnLxx9LL0Uz98m6+FBXwDqFLpMUvU1jciiOOH3zDcQPGznUFMZF0Q
	 Gyla6fSGZ1QL0/o86qqhJotd7BR4Drmb5L0OeEPKOkrOv39tDtgOMyrSipCbdxy5Ue
	 O651KN/tj0JDqrEmpIteGbn+YCafMzZ8vZxW1g4nL7QAJg+rnS2qtzv/YwuCQp8uPg
	 yInpAZVInffd1nn1pnQvZGCJFxLStiJcjKslAdkuYyQFYgs1hNh77B6P+wpFf8HZIe
	 IwQOUqfZ19P4t5WvB7zXi0XhXw7ChH1feFWdK+ZG08Nd5vqTb6PDJ7OrFqZwDEqM4/
	 aItGp2rEXD9Yw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97527CCF9EB
	for <ddprobe@lists.linux.dev>; Thu, 30 Oct 2025 00:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176178599358.19644.5082409890114271781.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f6e93a949794a04d6f2fabf9f22cc15089ce47387ef0383097300f4873d9d314
Date: Thu, 30 Oct 2025 00:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761785993
