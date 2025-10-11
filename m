Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 241213F9C5
	for <ddprobe@lists.linux.dev>; Sat, 11 Oct 2025 20:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760215194; cv=none; b=lnjITYDxML6R96jCNuPi2rchVp+mlmjNMSjBFUsLwrz5fggyZGOidB2fvYN+e9oZXrK12WRjfOEOmQiiMZhXb2nyEaCtFwkF/bAie+xRIqNCFjmI+lrkjJj9AHl4Wun0dBSKZGs9AEzpnBf+abamP9DwIiWmWJmjjaJ4hVp8+EE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760215194; c=relaxed/simple;
	bh=dZutKj+zdmgLmYY74MsBbiJNHCnOr6oJgqgKuTI3qFE=;
	h=To:Subject:From:Message-Id:Date; b=shMU/chJieitJc9PnnmStVAObWMlZIDVbcl22cjeUNJqYLPC+U5D5ymHzaMsVyduliOgHmbFLO/Lf31ZTErruEJnfzpTvQXa1bbefn9MU0+KU5nuOoUzSXDHmlDe+qWHehYGNzPMAy8VZf94G51BQP1h6lplJfX4zEOeGW02qu4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=V/KhmSk0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="V/KhmSk0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5D3CC4CEF4
	for <ddprobe@lists.linux.dev>; Sat, 11 Oct 2025 20:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760215193;
	bh=dZutKj+zdmgLmYY74MsBbiJNHCnOr6oJgqgKuTI3qFE=;
	h=To:Subject:From:Date:From;
	b=V/KhmSk0i/+nHTon+vpkvMYCVwdcRJ0YspObyeOybl/l/DVb0m8rOQM+CF/9+laS9
	 Y8tXdw77PrX7/Tl7SjI0qDc72430l6DMK+oM/U1xaIGwu6SveA0Ji5SYVIsqG6DW9T
	 7d2eap6zVH4wwhFSa0/zuFlJZsWuJsk+hNKgHtascoJrbYs30VPx+rVmDy2yLgCrKe
	 6JA9+7k5i9wa5gobhHIySGA6NfFZw9MK/ON3H0cDheat5xS8fukx3bffBCn0ypuYue
	 e/wzA2ncsJZX+Qq4I7NSOSdQ3MgKoK4boTyESe4eMyrhjWsqyNRKLeHEL4YC5t0eiA
	 512D0xsCsiv6w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 948C9CCA476
	for <ddprobe@lists.linux.dev>; Sat, 11 Oct 2025 20:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176021519357.1823.841474218898830180.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bf92c237e918df1229fb1a03d7804b24971ebd62eb57238b15e55cc3255e89bf
Date: Sat, 11 Oct 2025 20:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760215193
