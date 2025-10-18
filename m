Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1630F4317D
	for <ddprobe@lists.linux.dev>; Sat, 18 Oct 2025 14:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760799594; cv=none; b=XMlEfgzxao+9Xp45vWSE2onWmvmZfjYsgpIN2fx5IagplMKI+e9pgyqGrRgcha5Wqr6lNwQRNeevX6wLZ+yqm/z6kwUnZXoQq6pFjV5t3TVsdXpun4qPDpihwh4kG/BHLrIYB4048xVdS2X5kx4Cj+/xBtNja0ts6BULMk0O4lA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760799594; c=relaxed/simple;
	bh=LGVVVOmuVdlUlqVasTSStFJS0236IXh7t7P3JuHuewg=;
	h=To:Subject:From:Message-Id:Date; b=gCVZN1o6kI96zeGaw+agnNfgdJLWrPfg5k8qHN9C0AHvnfYvn6oGdr/OOHhhLa9gBQw9cSr6F2GuHEI0ZnTiR2W/ZWBNItEMYUmupZE9Ph+yf+Smo0YFd/RpJosHvS56v6tCl64eZVrdVljqOAIl1GTm162LuUNzrguZy/Z35J0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=m4hxrnJE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="m4hxrnJE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7B5DC4CEF8
	for <ddprobe@lists.linux.dev>; Sat, 18 Oct 2025 14:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760799593;
	bh=LGVVVOmuVdlUlqVasTSStFJS0236IXh7t7P3JuHuewg=;
	h=To:Subject:From:Date:From;
	b=m4hxrnJEIWq5jIoh5q6NMfSm02DYedj/hwcNmLsDNhjUYf+2Cyq4dK9mun+RCWv81
	 Cpri+dJu7alkCFjrKzYhB4Ij7xHXMO1HJ9NhJTfjuWaQvn4wdxRTdYqhZVfX43I3Sv
	 oC6gR+ZU0vezn+kHsq1a2nnbehlEc7+rNCz1pfhl9EGCjr428njBa0GAzJ3MnMUcTm
	 dHjeqrAKVIkQefqPCZIp1rQchXL482pinXrudSDKQpxi54VCN8Q/eKBOO+hEVsuROt
	 fhwYzuTA1RblPudkvAPIIuBSSPmTjTADDiv4LDMLSh96pPa0pOXK1rp5HTONrBnVt5
	 9k+A5BuAGohCA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94739CCD195
	for <ddprobe@lists.linux.dev>; Sat, 18 Oct 2025 14:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176079959357.10658.13398111339665968135.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7434186ed83f21981747d7a73a997ae00ff1a294e8631fa3791a8f481a447872
Date: Sat, 18 Oct 2025 14:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760799593
