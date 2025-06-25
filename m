Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D4642882CE
	for <ddprobe@lists.linux.dev>; Wed, 25 Jun 2025 10:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750846194; cv=none; b=FGRDco9do/L0BqVwQb2RA5nS/fgujoMU2/l/KLkU9kI6LLLXM9ceDC7WAX/iHJcSNaJ2cb0YXAbqDHi4S9qTQiDcwHUeI8wH1q2TVuW/achj/5FlMrsPQtXMAJk4pAxtKYCw8poaSTqJ833je5s7VdpOlpqnMDRJYLTkUsIuA/o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750846194; c=relaxed/simple;
	bh=NTUM1UAvOlSqXgLcliDBM8nV0TEIY7BKpzXQBXlHrqE=;
	h=To:Subject:From:Message-Id:Date; b=bunl6+wldJ0+cUw0Y1KLKp7LTcUt7GW8QJygvKfHCEX2KOWMKDaOnl4HmvroXD6zdIqVvIdx0LE7hzDHmKsNPsg/7+z3pqiS2OCYyB4/4ZbsxUIEPXxfGiW/Oh1ATLRMUm7AG49TZ2lWaRheus2AGWe21rsTcrdZSXMF6rr66sk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jnzOJfdg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jnzOJfdg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A13D1C4CEEA
	for <ddprobe@lists.linux.dev>; Wed, 25 Jun 2025 10:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750846193;
	bh=NTUM1UAvOlSqXgLcliDBM8nV0TEIY7BKpzXQBXlHrqE=;
	h=To:Subject:From:Date:From;
	b=jnzOJfdgrkd5G4MxbUnut+Hxr+gpfUaaeLY0xiw4nracESBr6SzYtc5XGhPIms0so
	 lujPoL+wa3rrBq6ax4XwB7NavPdeuzneuFNz0Hpit4pFrv79McjpX32K80nVgVIVIh
	 4mF5mXUw7QkE5B9y8stGQyg6hfo66CDenqA9tQyi0zvMmzxgPVMx1s7r4dwSs5cUpu
	 EsK1AZ2rEjzKB8lF+LksGKT/0Qv9398SB7mrP0+7SbYVNItPcvn8vasFqgZvvVt4S+
	 waexL+Vw8EBm720vXbmgv4vEUPrH5SUchR6pL/fIMReUjr5gGP0l52dcipz37f5nqJ
	 kI56LTJr7X+kA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F2BBC7EE30
	for <ddprobe@lists.linux.dev>; Wed, 25 Jun 2025 10:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175084619357.25575.3635490455330788619.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 35bfa9a99d98b6007a22789ceaa41542cc0f93e7e2781d3019db1137ec2b8947
Date: Wed, 25 Jun 2025 10:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750846193
