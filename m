Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 363277260D
	for <ddprobe@lists.linux.dev>; Sat, 11 Oct 2025 01:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760146194; cv=none; b=FX+2ic46kWzYwccPFHmSNJKcREZ5P/DDrwF0v5qnLntfsF9c5dIRdGAU3gBz3C86J3t3DgOItONSZN9MZnKoPBz6Pv1h5Ezr0A6XRwpt/v8zWfisBUm3zv28ywjjW+H14otrTXK5k37HpGFp1JkrXPvtMKgey/GfXfqtTfgzcgo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760146194; c=relaxed/simple;
	bh=JfRvSNc9u/xOcpkZ8wVMWIguJNjK+Rs09hW8cP3Srdk=;
	h=To:Subject:From:Message-Id:Date; b=LYfeUTQZ/ZTaq5iF3dCwPQlVzlbbxFivM2ziHgMWnvdQfvsSEcA66QZZLgGOCjIJmFWk+sUXW8QSsisYOBYuW/CxJ+5JQ0dB7YNlO2nUiSmLasIJXiN2/opFKCJN5b86N+DC9dtHcnWJk3ia/S0GQ5NKcpQWXoc0oTopmMzcpM0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SWYSoi2y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SWYSoi2y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A19D5C4CEF1
	for <ddprobe@lists.linux.dev>; Sat, 11 Oct 2025 01:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760146193;
	bh=JfRvSNc9u/xOcpkZ8wVMWIguJNjK+Rs09hW8cP3Srdk=;
	h=To:Subject:From:Date:From;
	b=SWYSoi2y5obcmts2tTMlJIRbhjzH3+9XqvJmx3Spu9rjt4tVeqoMCHX6GgAu1x8zO
	 avX37Y6fmLBQjEv/Igr9uJ0vIr4g4Mypya/qoDNH1dDqyp2IUt+hJWrvSGnfMS65Af
	 etZTIEvFOXNmL49Ak8Pdl5pnbzOrhaQQyW5sqUeycgpvPXkTDXCFQEbHaQTHztSfqS
	 wO2kM2DVux3igipCxc6JV19xGy85FrIiTj51UOIENhVCRA29nqsKZIOCK6A34dVsl6
	 XK6w+8r1MVfYLATG40MYbWF/EYENnfr2DN9lJySebJYA7z+mKF84DY3WjIzJaklXoB
	 7ZvQFmZspZoZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9133ECCD185
	for <ddprobe@lists.linux.dev>; Sat, 11 Oct 2025 01:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176014619357.26304.8168129856544303434.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0f789ce76424b053e3db0d7a87f1bf7a58b774ab3eee7ab8903505bfa16d8a33
Date: Sat, 11 Oct 2025 01:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760146193
