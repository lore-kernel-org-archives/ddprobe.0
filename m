Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3201E1F4C8E
	for <ddprobe@lists.linux.dev>; Tue, 30 Dec 2025 06:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767074634; cv=none; b=WzBDnlZ2rryKtWcdiN7BbXKPT6Ag+1xzGuP+QeWZJXw4iMsnmu+9IUONpVjl+XhYl1GYNHo9rL03Opkth82ZnvXg5iF2aen8pdpddmJ0LwhXK2iGlqfc7H3K0zMLIRFYNEv9IBhgTVM8lzC9mR979ogdYiWk8MBJ38ODrxhQsa4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767074634; c=relaxed/simple;
	bh=f6SaTnvMUgKpDu4kG0KGQMOgeCzSfHBNurUtpDsZsj4=;
	h=To:Subject:From:Message-Id:Date; b=puQInozWAnnnrv+x8rgM75JN8H4HJu+baTfWbXJZZrmgM0KZ+0NZAFg8l3IsBZk+0thULTf/gr2iBM2aL7+EqYXeXcsgnDpTBG7LaGqsAjPNczLYA02zdYaod4Ucd2iJneFrofUuKF37NV8P6E8syBP+k9GBv2BTBIsjwuAGwrA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pr604sYk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pr604sYk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5598C4CEFB
	for <ddprobe@lists.linux.dev>; Tue, 30 Dec 2025 06:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767074633;
	bh=f6SaTnvMUgKpDu4kG0KGQMOgeCzSfHBNurUtpDsZsj4=;
	h=To:Subject:From:Date:From;
	b=pr604sYk6oLJRsP0cUwIJDb7qEo/rRAJyxnLf7wi+VYK3e4CMEqXa+AJyvzcWXTfz
	 fsrbBk+85PMaRrRTTRe9SMvCAFGXoCC5lsYsF0THdnp+8/wWXIXW1D6nsobyBktMle
	 913jdlCqtketRt79ZDBeaHhrJfL4narFXgY5eFKl0FHq7N6rkR/N+YLGWm1APYkuL9
	 VU438b5d2OzD+35RF0FgVPIRZq5cSPtYhiP6sG+zvmQb3R3zOxakae23aM2puVbvAD
	 2besyhS+eD7S+0N/9+xRSn28zXQV4q/BRJl0L5dONlLKni8j/iD00gt3Xqv9WbzYxR
	 Nrhj1wy8r9OxA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91E0DE9410F
	for <ddprobe@lists.linux.dev>; Tue, 30 Dec 2025 06:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176707463358.32342.1376838262858429792.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b85a45812d037b5079415d428ab3d67416f39ba654150d6886305c26bf58d41b
Date: Tue, 30 Dec 2025 06:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767074633
