Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0504A21FF46
	for <ddprobe@lists.linux.dev>; Thu, 15 Jan 2026 20:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768510434; cv=none; b=XZ/GHuEpqYWxgSHwnSk4K1ZPXIlaySzmcJ3iPmcbKTLLIXgBNDeX2Dc8sWos0/sTQguo9jwogTGKdEiNbw9YFKJ4tsFBdjiR71UjeDJ5+VE/sgngSsEbNeXEBqyllz8pi7UedJ/2Qi2tGP1Ilyq8864IjnB0dyrd8kwxalpbqXc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768510434; c=relaxed/simple;
	bh=dBuTNygo4bv1eneAjVU9Uw7g3liFSQ/Wtm7FT2Sg5Kg=;
	h=To:Subject:From:Message-Id:Date; b=VrgUYTIjcZ2g+mABv5OqBUXF07ux6/FYgVNi99yMM0g7hJQKDJchJUAPWSHGPaeTvOib48YUxU+760klkg9L6hlfCrvIz1d7p7OcfQJdXPiL0n4yUNlVJTrDBsO6u9xc0jyqLn2ycFcTMq/rjAWjiIrnDNjjvs4+RtQB3JjjaeQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=i1Ft5TfQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="i1Ft5TfQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C86CC16AAE
	for <ddprobe@lists.linux.dev>; Thu, 15 Jan 2026 20:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768510433;
	bh=dBuTNygo4bv1eneAjVU9Uw7g3liFSQ/Wtm7FT2Sg5Kg=;
	h=To:Subject:From:Date:From;
	b=i1Ft5TfQjI8UR2xjlYrcad9bS/4jyTxNpJLCM3gP4RiTqWJzaNz8DJlHKwJcPAst2
	 nAHWxQZ1Q8k3n7LwmJ1hMqlVDzdIR4FIXzywwIjB6rNq3DjL8vLfl4P9RKkim+qo0S
	 BW5ul4/3QrgZKqHIO5vqojd3HiPOzJ3FhmcNmPXGgTJt1SV97sPw0RYDVGJG5jRBpR
	 0AEPNUT0XC81NLSGp1ZQUQsyyzAaNyVfcJqE4uywjV19K7v+eGcTB+YOv7Cf01Wja3
	 CKfuSWFjnDyqe8+/kSqjQyG0c7wj7TQN14Su4MpNTqgLgaG/JOPwY2JF15xwNz7+wB
	 X7mqJp/1Tzr7w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8ECBFD46617
	for <ddprobe@lists.linux.dev>; Thu, 15 Jan 2026 20:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176851043357.12761.10058704396079889911.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 372e7617931740061d481507277cdf8665b893609b2ae881c5d75be170747804
Date: Thu, 15 Jan 2026 20:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768510433
