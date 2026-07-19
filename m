Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 817332D2495
	for <ddprobe@lists.linux.dev>; Sun, 19 Jul 2026 22:28:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784500114; cv=none; b=UGurgtaAbdAoRFMuZivaaUMcKGq1XBeMVSnAc0l4vTXvRTBlNGDKvXeOXOqwoqpaVvF0KoMHCrhTrjq+kHpRNiwS4X+oVszT9SwTcwoTCdGuOB8ORNYvLrg7bOynB5JHIew2l/b6HQoUSDkAf3q1Eo/UvR9Ls0H8gFYnUKLbtFQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784500114; c=relaxed/simple;
	bh=LWL9yF/VjpGZn7Llqic9FantwHfi5GMIQmQFOITwUhA=;
	h=To:Subject:From:Message-Id:Date; b=Io0qOc8FabmpgiGFUW3TetleuIBDSNqao0UDgIesIWtKxX5EO6xSe5jaTA+vq97DGzrq30nCBrZVeqNFt076BvOLjEY9dSv0ekEXVGo+ivYSEIlnZSWOxjZu3o6nLiyLgExpYNyoDqaGgnzBiR8tx43fIlJ1GR+AYWlmqtSGCUE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=E2/3WI53; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="E2/3WI53"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 0A4F8C19425
	for <ddprobe@lists.linux.dev>; Sun, 19 Jul 2026 22:28:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784500114;
	bh=LWL9yF/VjpGZn7Llqic9FantwHfi5GMIQmQFOITwUhA=;
	h=To:Subject:From:Date:From;
	b=E2/3WI53i/DD1nlTH+7DBhIJJrXQow6+ghyNf4vabQZPe5xNPEhBdH+jktmmyWaEO
	 KbpJJclnfoBIhO02AcB3ekI15Ykto5WXKVWyJGfhHNRZmEyv9gMhhc5yhbJrjvU9/o
	 A9D0tKAzA1mtzNr/r8moyxyWSkF10bJpkp5u0ulzDy5qUd+ysn0NnULsrQpKkUBVAu
	 twkHpjKaRXa3HeFOmT5gsziM8J1lF0AP+DMuP7a4ec4+cs/BdJ6ip+OaMeoLWapCB1
	 1R3/EMK6gp8L9ZO1afGJtKoHtb7bhfFTGBLZ/4S74BmHVHs2Kubvmff7BI4e/Cu2HU
	 fzEyyR0lg95+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF0DBC44512
	for <ddprobe@lists.linux.dev>; Sun, 19 Jul 2026 22:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178450011371.23344.16873268496281976712.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 68d3dc4c4ea33782652fcd577460f01aad4df3a71fad313dd1b1ef404b09eee8
Date: Sun, 19 Jul 2026 22:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784500113
