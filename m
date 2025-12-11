Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D30D288C2D
	for <ddprobe@lists.linux.dev>; Thu, 11 Dec 2025 17:12:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765473174; cv=none; b=MR0xagFWUpjv94SBmBefArgfquCILWsuwHWTSJ4LVgAWHWF09K5JYl5MZm02nrODzAv6bTzl2rxxKa+IwpZ4JdiLgTJ2IQNd+rgpXjcbBXMhdroCsSwtM9aLv64euvoxL7PaDS4NRk5vzBXMQb7WeP7MbW1WJfgcBUmzbeQOeYc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765473174; c=relaxed/simple;
	bh=H5H1lxVFykmfaHsB8UfepB1lxFE8PBiXTAddQLx2F9w=;
	h=To:Subject:From:Message-Id:Date; b=JoSNGLCog1SQqTGwRKggUJ/z2bpxJ50Xn5SiCduHq2+Of2LnvJmw3C2xynK6wxUx0/v8AJWbvRDC/Lk8DnOmJSPTwzlTPg8WXlkgzDC4U2+SEkgJ8iWW52wTKrf5xGPdiyBUf4i7Zkl6L6Gs6CtbdX3x7jDL/p7jZfaH6mfOnkI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=X9PfFXFB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="X9PfFXFB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8456C4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 11 Dec 2025 17:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765473173;
	bh=H5H1lxVFykmfaHsB8UfepB1lxFE8PBiXTAddQLx2F9w=;
	h=To:Subject:From:Date:From;
	b=X9PfFXFB9jlfmQLo09he5mtDXHI0fncWu7d1Hgrvg9pGrQksQpNAfYTocqLtZ1toz
	 sM2RHgFxEZg+eYJNVhthSMkzO/mLZI+Q11f00mFOV+202ZNecTrqpTU+R/AOLCeqh2
	 d++scrP3fR+goJlUWr2UpBxhaIkQMZyDzuIxKV6ZgDJAfRCuJcarZ1jUgZeqw8Bkf3
	 pgFFcN5U+UJJQbXU92Lp5M0q229Kj/4IaNrYmPHSD49d5lNkc+2O5lYZoIHxYl9LVQ
	 AtQzfXIW8jfTkuQ8DyFtfExd+A+BxMuG8LOK7EDZBXx7XfQRZ5qvsSI98hmqAQ8X+O
	 4Ww57nvRkl+jA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95AB3D41D68
	for <ddprobe@lists.linux.dev>; Thu, 11 Dec 2025 17:12:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176547317359.29115.18164501257199938225.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a9577a49eaa0b3d003350e71cc7e9c9714d9f2ad0afbfe30a8de2581a0ba5df8
Date: Thu, 11 Dec 2025 17:12:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765473173
