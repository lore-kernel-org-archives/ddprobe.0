Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 01308268683
	for <ddprobe@lists.linux.dev>; Tue,  8 Apr 2025 11:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744110594; cv=none; b=Ab2xwb2ftSz0ug2lpKa6+NBP+baJiwJgA3ytcJVmYgU76dPyAWngk4LYdSpbeopsIm+TkrLfqkXNb5zb3WvlmsWPSYySPIbbonQQA2x8F374246cPMUPxeJq+WTRcuhhew4hdqNc6SZT69BJIXfS3RtOTkHOBcRVYE5ckgzUUsk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744110594; c=relaxed/simple;
	bh=YJhZgwJWXgzFrssAQn9RXg5PR8g67Lzr5QI8c98+qBU=;
	h=To:Subject:From:Message-Id:Date; b=hRMAeRVbOAesIGl1vLFXEEy6tCTIsk9vIzgj6VrTf+WTcnVMQW7TWhV8j//5enhUPpH2nbvHm3GbnzhDv6//hweQOhaDU3dt8vByuEantqn6/QbBfFhLe8ZcVRyEZRV7BLHxSfc8SsIH1ixTAqmTpDAHWDj66wUnc0Y3WbbsL4E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=P9hx9F41; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="P9hx9F41"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4216C4CEE7
	for <ddprobe@lists.linux.dev>; Tue,  8 Apr 2025 11:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744110593;
	bh=YJhZgwJWXgzFrssAQn9RXg5PR8g67Lzr5QI8c98+qBU=;
	h=To:Subject:From:Date:From;
	b=P9hx9F41OoSI/ftCiG3Sfw4L/lTnIMN5Y12foxZZxw1WMkNcX15X3vqUfvp3uYGE6
	 DPhBQiOzKnzi578zOhNRnzyCOa92T1HS5kHGUSRTAyxntC0NrjpJHX/MJt4syzYhbU
	 NNEJd+qoCCQpJf2KW8T+cxmvupQUlanh+G4EtLF61P7Mv3qNeTbbSbsxLgFKaFfSZt
	 BNKFXV6EKcee+yhxO3bACdUAiWwhu6nIE25O9zmLXFUqS7l6LA1rx+iva/3rbCwEwq
	 B74/iyLklQ0ulEq1XPgMBpy/etzuBfJsVz4xgt/vH567c8O/nA2K2y1T2qJ1CzcoTN
	 54mUnwd42Unmg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A6143C3600C
	for <ddprobe@lists.linux.dev>; Tue,  8 Apr 2025 11:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174411059366.20831.17055356084203206102.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3cd8c80ff004e19ee63c331ed45e3569fb1a1c9626ede8ded26b1e713f180808
Date: Tue, 08 Apr 2025 11:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744110593
