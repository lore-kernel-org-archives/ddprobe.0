Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0BDC11F91D6
	for <ddprobe@lists.linux.dev>; Sat,  7 Feb 2026 08:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770454434; cv=none; b=QBhB9UA+a6EPvk61ovLdlB2cPSd7i0Grw/7cg2XjyNDNbQnKbLd8lGMOIZ5HqXGBuwzoyipqxgyX2b3xJRWVGLJn6G/29mZJelkQQ50KV/jeEFwACS5m8qLBykFf4clVZYwNS0P0B+/Dlx2ebp/3E+Dv2M23ryO1CfC+tHrbiVo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770454434; c=relaxed/simple;
	bh=+bg/kE28Xlb18YtmcurHGc0kwOOUKKjRo2WokcOByzM=;
	h=To:Subject:From:Message-Id:Date; b=QWDyVFcMNbtI95eRhK4heuxWSRfokKBgwx6DttR+7NXOgrAYvC7RtwQNDVhskjYTkF547GhgdpmlTWrt/XqzkOLCOTy2oHVRJiOcTHS2h8mOMMjBvnHzYZ96rFFc5qT3DBq64T88IJE485NDy5l1iePGLKL1JFjxwSLmdoNq+q8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jQMAES8O; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jQMAES8O"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2CE8C16AAE
	for <ddprobe@lists.linux.dev>; Sat,  7 Feb 2026 08:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770454433;
	bh=+bg/kE28Xlb18YtmcurHGc0kwOOUKKjRo2WokcOByzM=;
	h=To:Subject:From:Date:From;
	b=jQMAES8Oj9+VF7spT5JZlQCgEqETpL77/M/tkdju5GQQhAAdKW1+TomubUMZW2/dM
	 3Mg6KUuY6SJnEXFP9RCRp+BAwhYE2BOB6jMw/00LkfDc6KGv7uGwy8SXc/XrooD9Zx
	 M51z/35dPlJQJqQUmjvpydoBlDbBkPMc97foF9YTb6dIAiwgD4TfX7lHNtBoZZtN9Y
	 fMn6QvaPT6a692SFbcu3/SZtFz4eXOKobOKIu5oXMAZnDdsQZoJ5Mwhz6D1mnjl9BI
	 Y4AE0wTSZpBQwr/yERnoEVR77F8pCCm/OG9xXWMzU1e6qC0t6Km5IwGgFJ3eZ9VT/E
	 Bri0MSE5B1t4A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 910A1EE6B7F
	for <ddprobe@lists.linux.dev>; Sat,  7 Feb 2026 08:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177045443358.27516.1945101060509821150.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a8a92d19fc4bc786546c2067817d29a2ba76fa3ef262b3f092d46cecd9ae60f2
Date: Sat, 07 Feb 2026 08:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770454433
