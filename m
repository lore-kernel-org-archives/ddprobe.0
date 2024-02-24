Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 189CD3A29B
	for <ddprobe@lists.linux.dev>; Sat, 24 Feb 2024 13:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708781297; cv=none; b=sIHtQcFoGj/cuWs7uKz2N6D1npIFiyTFo/cm8elcb4r21DArJuvoUW702oMx9e9ff7aN3eEjAxcjmthIrX2iUVrA4Y1Vb8W2htq7v4w6GaYXqoV0YLHkEJJqx+iRPVq26mIYPCvOQD4BRFUbMVdQpuGFlf+7wpfnldlYGU8zNko=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708781297; c=relaxed/simple;
	bh=Th9Iyo3IR3SemyVNiSnRwGbpM0jpz8hRn/F/cckwxtY=;
	h=To:Subject:From:Message-Id:Date; b=LW2uOti4uBEe60Ft4wxTxGUW77wU6uVUQjpiRO7FSvIZ1bzhEVXXuc6DpBDKR+yVrqjuvfMV8pGrxAmuCWj95qWWWgai/Bb5J2GAns7S735inOjknD0+MKqrVopTvNJ41XrdrIHcOTmkLM0c4g+h6J70t0xTDBzn9Wi/eU3SxSg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rV9579KS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rV9579KS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 844ADC433C7
	for <ddprobe@lists.linux.dev>; Sat, 24 Feb 2024 13:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1708781296;
	bh=Th9Iyo3IR3SemyVNiSnRwGbpM0jpz8hRn/F/cckwxtY=;
	h=To:Subject:From:Date:From;
	b=rV9579KSrqSAQmHs4E5O8/yUPQ5oGIjz8cm+zCbZY3wcIP6WYWjWRTy2Uhiwv4CxD
	 M0mNjEEYgpF0dh3MwUXyqSgyqhJSYZ+86ABuSSMe6CON+IPu0uLM5L8pLQjdzYRyAH
	 aIhujGfI7caDd73iZ/CKMQWi682RG3+8Mu2L/Ep9HhtxrKUZmbky/mkTE7Ac3pswxn
	 XByeNvunw419wl/lkLnzd1FSTZBgli50yrQsaVYhjWaO7u9mAf5pzomI8OVzcVCnNw
	 d8lf+MKQuggdxvhNoz9eoc0fKUL2SAbBvjhB+QzdFpGYmvAhUFlBvm81m7Xkj/+Xso
	 p2nSjBG7eqHlw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 61AEDC48BF6
	for <ddprobe@lists.linux.dev>; Sat, 24 Feb 2024 13:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170878129637.8609.315335595306746415.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b8be6f233e394a38563b9f5c4c79338391d47c172454f7e48aea6a6afa3ab03e
Date: Sat, 24 Feb 2024 13:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1708781296
