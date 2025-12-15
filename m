Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 354A7330B0D
	for <ddprobe@lists.linux.dev>; Mon, 15 Dec 2025 11:52:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765799574; cv=none; b=j+TNqqhpxC+sQCewesupxzDU+3gmn9MDL7HN0ZKcboGka910epUiQXWGB1838iFsmfa8PB99EaBvMJCCkAi9H3ndRYnUV8pwgd6B7nvPCbGmvncUuAbMIHxNLHmWJEB1T7i+6lMQRVyW/XCgqDPj+GhHMcEqeK6l8gBJ/Vs49d8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765799574; c=relaxed/simple;
	bh=JUIoNNAsJNVIJ06B35q88BoObXgf5JFGCvkswlllbfs=;
	h=To:Subject:From:Message-Id:Date; b=D43g/AFPlePTN59oubE/8Lgm95Z6RmS1MxTBepAKyEDaitOsORmHF0Yn6ItT+tr/U10Oc94LY2HV2DrclE0drbe/jgRzgkheSjBwtOS4Cc0HvRRI1YHkAjd78mFESCrr++SnJq4SQFrJdKs1EAmwvJkqCDcN2sLhemVtnrNQw3w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=X3yTPgDc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="X3yTPgDc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2074C4CEF5
	for <ddprobe@lists.linux.dev>; Mon, 15 Dec 2025 11:52:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765799573;
	bh=JUIoNNAsJNVIJ06B35q88BoObXgf5JFGCvkswlllbfs=;
	h=To:Subject:From:Date:From;
	b=X3yTPgDc9kjD0C/Hz02FBaEMgPNJGuDBUWuJwi3hsFIDa8Y6ED2Dpo+5mNO7GodI3
	 t54MrMNJ2CTPy0zfrELrE9anGtbrZAorPyQbJyQ8yNaZg+YMg6MdCBjwTB+lWs0+AM
	 1kAroeLAgQyhxCAetbaboofeFwYdWCoF795d0f5jdLw5N4jVhUlpduduLVEyZOCWAb
	 D0Py+HUBlYBZWlUIpIp4VYMkpdMQt7JGx7YhLhfh2/1OWPIfQ56L+AZpB/rGx2gFGY
	 BGjY7ezr08Y1ptqgdiaQEAbTY2NX3MePFnSnNJat1y66m1TgWMMF44b/ONtT2A+x4A
	 /Gg6M8vHaT9uQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9DC2AD59D99
	for <ddprobe@lists.linux.dev>; Mon, 15 Dec 2025 11:52:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176579957363.32103.16355831392678394697.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1250f934d13c237de84c28cdb9411b7381133777da281da557ee571d7a60790b
Date: Mon, 15 Dec 2025 11:52:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765799573
