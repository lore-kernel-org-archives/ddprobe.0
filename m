Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0808228690
	for <ddprobe@lists.linux.dev>; Sun,  7 Jun 2026 03:14:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780802074; cv=none; b=stDWga+//49Ov6nG45/mP2mGBcUrQlFnG7kT0a8LaUuNjSd8GrxRq0JVk2RBznlZH7AxPGyDEMXUaPggKGDfqYmlCh9KI9gobU5g6QEOO43a38PKmfdqXQX5MhT/OM/pcq2/b6Atj5pAFEy75xVA6ieMr2FDGPXVIZEqtaZyyZg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780802074; c=relaxed/simple;
	bh=28dfL4LmB5726+m+p097GL7owytFKXxh8x2cyQnCyzU=;
	h=To:Subject:From:Message-Id:Date; b=e7T85BCIncbVzx+jcAzsj1Q1gbX2EPYqGdzW7koQQceIENQNWgxLM2EzM0bBTr5extfmLJO6+OOyIX0CzVr3Q6eJnRKvZ1RroplFKuTmDxnmzDUL0sNXcKbyOA4cEVd5yfehXcNJkz6xTcgO17h5EGCQ8/ibCL4S78bd32u9lOM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GnlZzAfd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GnlZzAfd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C68ECC2BCB0
	for <ddprobe@lists.linux.dev>; Sun,  7 Jun 2026 03:14:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780802073;
	bh=28dfL4LmB5726+m+p097GL7owytFKXxh8x2cyQnCyzU=;
	h=To:Subject:From:Date:From;
	b=GnlZzAfdK0wpDf4FaMYIFEjTERL4B1wRf/QshzU0LhI2yD04gb8WOQWxV460uVMYu
	 95KFLOh0ov0GAwrDZwArPsXhY8m5RsU89Hy0f833KyUqH8Akc9dWL7rvY6vRjVTFRG
	 s90CFmSY2Btqg//j3TM86e46Yb5YiTU5R3oas54pOPhFFXmiDGrkRyBnXeasvlHrvp
	 udMMEQzzflDwQDyv3NMnq+W9/1Vb9C2L1jA/xCkHq8pyBnUwIoIHbaSwZ8m+JEhkse
	 AE9HqFGRJpzUP1klBmO6DJXt3u1B93IUB3VnfzSctlvswPH/3aAqmSR+8z25pT3M9F
	 GmGeWv4o5dE7A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC359CD8C89
	for <ddprobe@lists.linux.dev>; Sun,  7 Jun 2026 03:14:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178080207368.4259.9515624058662380748.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 59a00095b097b58ac85470c54d5db14cc686b6cddb7e8a38b453fef4f8a25bd9
Date: Sun, 07 Jun 2026 03:14:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780802073
