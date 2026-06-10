Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 431463BB684
	for <ddprobe@lists.linux.dev>; Wed, 10 Jun 2026 09:15:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781082934; cv=none; b=pUiBjLfvqyeqCF/Zhmo2/E/6vLNtne42MHHlIPza7oCZbeBo0GlnFYcMvzH2RMhAFm/tyyzCR573M3A8UTaFEkf/5ku4v/5NhMqiWMgkBfGeQxCX1D9YkrPZa03/qLRRx64WRW801PyMuKjuRIaBdKqMM2W/IQb2y/vWwaAZTw0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781082934; c=relaxed/simple;
	bh=B3JmtY7/BteRnSIOfp78u5mVhIFUoQ0gHsquSbirako=;
	h=To:Subject:From:Message-Id:Date; b=uS7yzdk+7TVT/Q8uWzF+b2B8l/W5N9XyoHJPL2WhifnK0RbgNV07RMXM7Y5YkvR6ul8WQpaMaAQn01//otXgSn23T+N6VQrNRuA8ZjzVCt6QWJmgKDA2J56RLoTuof9YjgKJuGBifhyK+5aBvWmX7SU/e29pgR3SoqNi3paO4uM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IdMXFcUT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IdMXFcUT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C3972C2BCB8
	for <ddprobe@lists.linux.dev>; Wed, 10 Jun 2026 09:15:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781082933;
	bh=B3JmtY7/BteRnSIOfp78u5mVhIFUoQ0gHsquSbirako=;
	h=To:Subject:From:Date:From;
	b=IdMXFcUTag8c8Q68QtFFNwiGNTKPi0TF3szsRdTXZCBh+0jrXm4mY3VaFbDS2HS5R
	 HmP6rb0t3Hoc670vBpeNdxVQhuXPwu1pC+eWcYJrgSeCx1q0hFKfyZBYbUJSC/xFDc
	 6GDl3Cd2Bx5an4jkL77NOH5HWg99kR8MJhHlcJHOrx0PCtlnoBS+B2ITVGj34cVc/1
	 v4FfnKZZm+VbCVY5t07V+7K2POqK3jq6TuK0WEKbH1y+ImrZO30vHMtNolwmcxrwNJ
	 gGGDea16GF/9ElaOX+EFGX9KF3oBLGcq86JMekI8nn4MuvLZfoYUVcZDjK0ei7VIXQ
	 MsCgufg/az44Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A998ECD98C7
	for <ddprobe@lists.linux.dev>; Wed, 10 Jun 2026 09:15:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178108293368.14478.3737093803090128135.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 98a6a7e62aafb80041d954fba172a5cb09eb9b0971cb386622db6e91ddd0a900
Date: Wed, 10 Jun 2026 09:15:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781082933
