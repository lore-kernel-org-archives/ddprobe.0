Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 02FB829E101
	for <ddprobe@lists.linux.dev>; Sat, 31 Jan 2026 02:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769825034; cv=none; b=l+BiTc+aCzn91SE7QuwKZmXwoNInde2EvyUwydJxHuWQi+DO/0Jm/iYQ2yMukAzQYvW2NQ2UzeBibNpj1Spnd+8ImZ53BgL9y2JhfKZKRsQ7IGXakS9+QOUoocZpK06FkSw2fDc0aSXd8dDlzdGHF2jCWtso1KUpEDArdxZxWb4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769825034; c=relaxed/simple;
	bh=EgFEUxe34ysd84Vb29liZDTcwk4nx1l9ST5heLYq6fs=;
	h=To:Subject:From:Message-Id:Date; b=dxXQxMtZxegps15cXc4P5HhE09LZHR71D5kzUz+zTUCZk273rtNXwNPtoK2Mw1kDt4uQf1G9uPw+pjInCUaMv1vGle+arr+XnUx8FQifE8a7ULWb+yZk5GgiCAde8KP8JchzeTK78v6duiuKO7U+IWLIlWq7GeVNB9O/fM/TklU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gcdc29tP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gcdc29tP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA814C4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 31 Jan 2026 02:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769825033;
	bh=EgFEUxe34ysd84Vb29liZDTcwk4nx1l9ST5heLYq6fs=;
	h=To:Subject:From:Date:From;
	b=gcdc29tP8pPVQ+X66z2a2uoxk4fXxJ/WR0RF7Evftx/KnXWs/SqUiBJgKDE+vzutk
	 roPnqEGf6laqwFWc9c3+kDwcO6/b0dXHR00bxBLY2MQmpS2xwqxSLbBmaeTLGZbXAR
	 9pijjYZQLzM0BV9wZssDxxnUAi14d2Xh7Y9kUrnysg7IrBAAmg92ILpS9wd0lTC7DK
	 WU5i0RIp0BJo5t/79o4KXy+QjzDY4V2BPdL76Tecp5DOs5+A0haaVEATJTO/1BXsmD
	 VQMFdEHhie625w+yU7zXxxFV0+gWaP9hzHCHJnTYi7nQL7Ouvo8ln2RxS+jvgQYrj+
	 zzr/o0E203jSw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98E9EE6BF3C
	for <ddprobe@lists.linux.dev>; Sat, 31 Jan 2026 02:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176982503361.20947.14914539635877650743.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3afcc7e3f57b138ec7abc27cc7ac49371db5df5942d336fef5b823cf607f04fc
Date: Sat, 31 Jan 2026 02:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769825033
