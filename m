Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 250BD2F83B2
	for <ddprobe@lists.linux.dev>; Mon, 22 Dec 2025 17:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766425434; cv=none; b=NS394lOnHO2BqEzVe6KcKkOIYlkfOMeL0iaIwF1CbGJLjKk+fFh9zljvXxW7nwuy9qO8Yt17rE95KpxV0bO7192mXO2oaqETDQ6o973ctILLziBNpXF+6QIpkOEITQs9QlwBmL/7OHAHCPNTMQdSr8v027tJ6sov5Ga9xlCMcjs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766425434; c=relaxed/simple;
	bh=8v8glIhzKxm7jxF/nKTXpk3IRgb4e7cGVOHXprUhfEM=;
	h=To:Subject:From:Message-Id:Date; b=NhWgeyNhA5RU4lxF7RMpCkuSJhd1ltx5oDUKv24yn/g51tGtfN/zuRtH4IfdQPapqEr6aJpyhf4jcWY8qYwoo9x8b/JEwMskubYHVxNILXua3ECAKhXz3c9qRK4CBPORhhcp+IoS2ntiYMwlWWrZbPloI2EZEC0R5zSzF3V6fDE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pBxHzAa8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pBxHzAa8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1A28C16AAE
	for <ddprobe@lists.linux.dev>; Mon, 22 Dec 2025 17:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766425433;
	bh=8v8glIhzKxm7jxF/nKTXpk3IRgb4e7cGVOHXprUhfEM=;
	h=To:Subject:From:Date:From;
	b=pBxHzAa891BuZCTVXxBuEuFwn+zOC5uxXjEPMDvxwiaBCsPq/44vNhZLKEXDok5Zy
	 NX7zRYmLUp2b9h/jKawtUSZcOZxENk3+VzCSAgGYwMNal8++F2IpcFQHBJDkeN2Md/
	 drKTEAmD71FPF3hWlJK7A47RyGwKrXrc5Ni3gDiByab1EUB3mAWnXbsbmM2rKSaO3Y
	 BS1HUYbGQPCegDhB2Y9jvA4Uz6zGMkaBA3i78Iu19vF5iUPO1fdemThRyWu+2FjAVP
	 NnGLqiukMtFHVe08PaePJ+ntDJVNKRcsTOV07eRdrT2Se017OzBvZ+YKAyl1cmRq6v
	 1GiIkYGUvKn5g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9035EE6780C
	for <ddprobe@lists.linux.dev>; Mon, 22 Dec 2025 17:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176642543358.7070.8314553794964202608.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c66e6be5c02b05b5fc2e57e1120c55cac4fd0ea0f018af84faa81f4360ebf2e9
Date: Mon, 22 Dec 2025 17:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766425433
