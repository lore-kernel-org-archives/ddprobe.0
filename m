Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A984279DB8
	for <ddprobe@lists.linux.dev>; Sun, 13 Jul 2025 14:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752418194; cv=none; b=mQwtf1uN1GaJsbq+WWc2RNNjj9L3RVLpXFTcqUCuH80cbhe1qcbPpYu0TC3eLMRV9A93UH7bnjoAk7RsWoL3qyNoX8fgkwOfk6lD/4nn2MVW6LHKG32XAvgqvpan7mYs7TFQ1REIj13EseP9MVQcNwSrC0Ar2YpKvChPjsREGmc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752418194; c=relaxed/simple;
	bh=PaXnkQXmUXyXfTwVBL4ekyVmWKZEY+iYSU+ac0UCV2k=;
	h=To:Subject:From:Message-Id:Date; b=JibqjMezGdTjVc4qZM35CHKIgWuPZPVCGLUHfv931H8gyDplO37l1laCpxtoZ65svSFyoit286WMhf+4hGQAc6/h7Cv2n+TXrVU1KpR/gIxgpHExs/vuVr7yz1doorbA+46knqy/f857EWbD2hRVy/gfLHqfQbCjaN3Re0OH5YM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RP/b4tFy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RP/b4tFy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5384C4CEE3
	for <ddprobe@lists.linux.dev>; Sun, 13 Jul 2025 14:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752418193;
	bh=PaXnkQXmUXyXfTwVBL4ekyVmWKZEY+iYSU+ac0UCV2k=;
	h=To:Subject:From:Date:From;
	b=RP/b4tFynmRW3QlG+BRa97310x2s903rFeU57VMWa0rSZynd3R0X7mHl90WRFeKjA
	 Z1ZUcCP7G5wJz3Hy5rNfRVc0W4kBYbp/ZQs0TcwEosQMtebRkZVI+n9bZ4qqjEwvLS
	 7Hbpr/1vr7KN1YGlhvI1cPcMMw/MBZcHWPrhUxvRcPRLQPov8DxbYgNdooMsPUyVo3
	 if8rl1RsuNREWswAwmAbr75Kvs2eHkGhNU+ssg7bKC/nGfCaXS3aS1AeHQgMl/iPzS
	 1e6hNYbmVtz6loqcNrr+3iObKscU6arLHqP0qp0G9wz00lOlPAMw+Xo432zaprvgFT
	 od/NOCMqcGOYg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96631C83F17
	for <ddprobe@lists.linux.dev>; Sun, 13 Jul 2025 14:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175241819360.15414.10554418791177999573.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d9f147ac2e726306948e69511e963becc2fc73bc67ebc0180fbebf52807d8a3b
Date: Sun, 13 Jul 2025 14:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752418193
