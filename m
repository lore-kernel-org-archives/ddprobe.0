Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3059D2F066A
	for <ddprobe@lists.linux.dev>; Tue, 14 Oct 2025 10:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760436594; cv=none; b=Kz9QtPpUPrT/tymp1I05X0GpC8zWQWzPzZvLZ+WcPExK4qMVfw2zNApnuk1zT0ydsCpyBf3lfGT1vGfCP7qLYJ0rHZ9bjfMAlVcKe+ILr1E5YbyjPkjVsx0fCOngMKwAQLGLVlg9U4RQV0hL8k9c/gwUllELjWxOagydGHgrMPk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760436594; c=relaxed/simple;
	bh=qbTFfGZTE4Cn04+gLSOUiX9BVK5KjmzaXj5A0y3O3IA=;
	h=To:Subject:From:Message-Id:Date; b=eea7Is8NiDj6I3no3W1EqFigivxPRvJG3a532YypLCSwKH+mAP7pVfIYFpSvCL5t/6KuQDQzkvxUbMaNGHEyH+Z8xLTqPfsDe2JvKC02o6qq30y9+eOkkl0aI3LHugjUAj7/yLDWLIgLZQAIiU+7usMMOYYNvJihFZcTGSwiI1E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FVVH7sir; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FVVH7sir"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A90ACC4CEE7
	for <ddprobe@lists.linux.dev>; Tue, 14 Oct 2025 10:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760436593;
	bh=qbTFfGZTE4Cn04+gLSOUiX9BVK5KjmzaXj5A0y3O3IA=;
	h=To:Subject:From:Date:From;
	b=FVVH7sirveOy0tdxdieIVxPqQgDJuPXVMywbVvff04ifUnXN4SRVWiekHKJjtolUb
	 dF1OwshCzkadQ37PHEe3wz1SJ0+aUoDxJXvvmcqPU2cQ7vyVZ8h3Su4WM9U+mZt0tk
	 +c7xtMSRAgWoqJSTuUNk+YGVwEpZio7DshyrbSg/kgHPdSjvxDCXUUGcmfx+zrMrTf
	 oA3WG2qagS+GWY+HM1PEfaOyWT3tmwlAQq0gf/5X+eHzKIcMhQc/kDRK/15YCBJ6IN
	 c0mWvAu9fyrAdhug3ajWlWNuiQtlpZwKWjG+uAmvv3mnwtHG89GNzXs4+x8oZBYqIm
	 kAPy/ZmfUl1Wg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97D36CCD192
	for <ddprobe@lists.linux.dev>; Tue, 14 Oct 2025 10:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176043659361.5824.11680177390450822964.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 967a8a8cc3e35666f47f187eacc1e9ad8dac3c276afb3ec22b65cd516f43014b
Date: Tue, 14 Oct 2025 10:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760436593
