Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16FE93DA5D3
	for <ddprobe@lists.linux.dev>; Thu, 30 Apr 2026 11:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777548454; cv=none; b=QuRUlJBvliLwcGw9BytW4ITg0Xh81gniETefyslJ0UpY0s3jkBSCPxkSXf1rk82m/BuXSQHSQx/sc6gk+V+aYq5xGEdBGEeyIkrl9y7J9/qjr2DTAyyhLLpNV104hre49XS7hO5/KUU1qB6VaXwyN+XqyPhknasIwAIILQ+OG8s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777548454; c=relaxed/simple;
	bh=fZWjRY0DxKi058bhbCDVaBmGJW5rFyslLlRmgVdtlKI=;
	h=To:Subject:From:Message-Id:Date; b=LMni7sKSDacn8Y+2+nRxvYRZhZeP3rqzWYpgPU6K+EWY2WFc4QUl4WaUGeF2QxPjmVDFVBdCiERx0gZQXcHBGvkz+DEQXa9QCIQc2Le+X1gJRkRpXSasAwW5V+H91GIpwiIGBaCngz2SzFXz37MrVCaWMXl1CpBjtnWhSeS/wL8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AgJr+A+R; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AgJr+A+R"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B93A6C2BCC4
	for <ddprobe@lists.linux.dev>; Thu, 30 Apr 2026 11:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777548453;
	bh=fZWjRY0DxKi058bhbCDVaBmGJW5rFyslLlRmgVdtlKI=;
	h=To:Subject:From:Date:From;
	b=AgJr+A+R509KFeY3oULeLIIUWH8+Maa8kPgecS7hsSJhpyDXGtixjaeHrJbFsxzMi
	 iZV15hL5T0PXtx7fNsDcXsl+Kdsvpwp3fC2DTgDUWeOGu+FDV5x65v8Hc9OWS+WKtC
	 IyyAqzTWz2Sp0B8RraB12QYIm2w+HTtZDExKMYwCq3i56jtoB591V/k68nuQ7vJFj3
	 GOGp68IbqazoO3aHEcm7KtJabA3iO53d/quL3/mTq4zB+3YW+va72kuuIZw6L1/aMK
	 JnPNZCGZPAQ8VWRtclAaWP5f6WQTLWlWpFIMWabJ9kpA8Ryy7+qmk/BQKV2M0C9vvf
	 0e5n8ne5c7a4A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA809CCFA13
	for <ddprobe@lists.linux.dev>; Thu, 30 Apr 2026 11:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177754845368.26453.15992688144237094164.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f0a90bb02f9a6d1e72ea7194f755f051807d2bf9dc58f0ae02e3137ee0ea802a
Date: Thu, 30 Apr 2026 11:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777548453
