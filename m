Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 162212E9ED2
	for <ddprobe@lists.linux.dev>; Wed, 27 Aug 2025 22:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756334394; cv=none; b=m0gbNZXiOJvmtamJlmIq0+8ftOJkZ/Yq37Mdzc4H+cmezyW2ZQmbzxGN/M7+4b3i2NWspY8C1zeX51AoU/Mr0t2g+ZWB1NgB6U9m9B12mRX+G1jULdJEPMgidijCyq28gFOHm1KjfkPVWcm+B1QySakdqUNsHdmgl6z3Oj1MFi4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756334394; c=relaxed/simple;
	bh=neERfOhAT/UeEkMWdG8nX/nLT69N0zIgGhbJPeSfcFA=;
	h=To:Subject:From:Message-Id:Date; b=bn2V7Thj8TNZNz6KWbXEO/YGJig/ALw1SjmwACWjq3C7wfk6pG1mfvA7s2tjl3moYVGmO01EVcd7Keq/BPS6/7A1wLVkUHvM0xsNi10pyGn+BGZ42xYXwwlz59Z5Egc14hzGufO4FGgGi54iSR22QwCZfLIBEFJdii9AIfHbUK4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OrzDBFMN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OrzDBFMN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2C09C4CEEB
	for <ddprobe@lists.linux.dev>; Wed, 27 Aug 2025 22:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756334393;
	bh=neERfOhAT/UeEkMWdG8nX/nLT69N0zIgGhbJPeSfcFA=;
	h=To:Subject:From:Date:From;
	b=OrzDBFMNS/UeWKNCH4fEvLkYdloc8bDWKwQNVK93tPKLq2ELPOkPYGUxjmxaj2xco
	 V96pFyvzbVhIA9MFJBvKqys2JQLr120gBLjm4TFTv1ZjujbQiIcZdjODxwGsIaeQ93
	 8wEhxuY3YnYjqAjrJrA915VFdImUT52RSxtpgocDbv8H9PViiWilwXsjPVwZtDgXzk
	 TPc7M2TjeB7jQHWhKoA9a+XARZO6Mu4ndZPPgpMhQC0TsbxXGf48MVSjXhopqJ3fxU
	 skmolNQBxBHUYt8MPjL1ZzfX4ie79atGu+RrcXrYenpJ3ePvGGJSVuolsy7VEKNIkV
	 vF4ISTWtBriOw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90C00CA0FED
	for <ddprobe@lists.linux.dev>; Wed, 27 Aug 2025 22:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175633439358.22637.17804385482655217943.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 248100bf512b13c5a43f9f40747b3a1464c32d4861951f0ab37694b47df8ac2c
Date: Wed, 27 Aug 2025 22:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756334393
