Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46641433CA
	for <ddprobe@lists.linux.dev>; Thu, 30 May 2024 19:54:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717098863; cv=none; b=eO7qW7Vn8S/8E0AFNskMaRW5d7hzZpcqOBaaVNjccrSue4qEo7JaTAKzcKFDx81sLcgkmV4/Wg2vmvIAiE6PRxoiUy/Hkm7S6p/tdcYR0KVx2pi2mj1ymqctO738k4E4SfFgrccbW4yb1WBPyZE0KfX0cgoNtltHemU7Q/0fdwU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717098863; c=relaxed/simple;
	bh=dqFOo69eOI6L3isQX55Ai4HAQuH63VrXxEs5PzGuWVc=;
	h=To:Subject:From:Message-Id:Date; b=eqvb6TEe0IkS6bfL8lXSVUzTK75clGxgtqBZXjovy2464MONexy+AxifHVZDRkQsc8sEtED7kD6oCxPZR+9K0/jJgBMgq2aph8ZzlWluUpZSYtEGFXBqggntyIOli+nKdykMPd4c6Zvu69XWpJ6cF0N1tbPzmLMeJm+5K9DciqE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=l1FGhehm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="l1FGhehm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE0F6C2BBFC
	for <ddprobe@lists.linux.dev>; Thu, 30 May 2024 19:54:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717098862;
	bh=dqFOo69eOI6L3isQX55Ai4HAQuH63VrXxEs5PzGuWVc=;
	h=To:Subject:From:Date:From;
	b=l1FGhehmwOnrtBleSTJQgaB31PTSwNH9cHNHl3rRpJimtukqMMExWmtFIEoxUAP3u
	 6MWOh2EnAiLghuqY/32DfIhAYDaH9Lik0mQj7CUEjdNJrHYY0YKLc47mclGPLZWnP9
	 Xo7I+WelmbMjnmXeoO2VEm6FVCceQWnxSvQndPbhiz167+sEzA44KuCYbPQ91pQFfu
	 V9fZk8QFCyROCYgkUB2WOCygbzMO/ygVT+Uvbeqcn3MIVQB3NYO2HHCzrmLIrq+Tt5
	 n8ZbQ2KVV1L+xXGQ8A3KGFUBO4COWJ6n0LdqcrwvLZrpO998Ku72pGxcJQoM71fSvb
	 8GVmQ9qaXwctQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BA469C25B74
	for <ddprobe@lists.linux.dev>; Thu, 30 May 2024 19:54:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171709886275.22623.15154742192079049033.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0506398a5b9a0885236b539b3822568d5ea313035d6bc25f8780deafa41fd56f
Date: Thu, 30 May 2024 19:54:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717098862
