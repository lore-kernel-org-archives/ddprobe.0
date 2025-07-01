Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0303026FD95
	for <ddprobe@lists.linux.dev>; Tue,  1 Jul 2025 12:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751372994; cv=none; b=jh0T05oohfCkBGK7cxHaP9n4j0Syojkow2qOK06klb3o04H6arFxyqYtMr6N8JB+kBeNrNtAHdirgskTr0idIv/KIDp8uWgeOm/zHTB7bvJvcsGkCvENrnhyiCoVLpr44X8nojkoyNPKaFv5uevrMX5qhkZBRJVll4XA0OGBmxA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751372994; c=relaxed/simple;
	bh=RdreDA3+ye8Q14qDDw3phcC7gogTMBzwDTwEkTrZi+0=;
	h=To:Subject:From:Message-Id:Date; b=QVnaNtTEzc/lhgzUYnzuG4U0cUANw9M78o/lc03CeVqHqC6UoMWc1MYr6RmBeXcruRx0Gf+iMJm0BKod8O44H1UgOQ4dSoiJBh5m2dwKP4eyB4ylhMDqZyVJd8579WgysSqPlmiqY5VG4Qi8Ae+VJ3KmdxAUNVzrOqlL1aqr5jw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iHaJsz3/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iHaJsz3/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E79EC4CEEE
	for <ddprobe@lists.linux.dev>; Tue,  1 Jul 2025 12:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751372993;
	bh=RdreDA3+ye8Q14qDDw3phcC7gogTMBzwDTwEkTrZi+0=;
	h=To:Subject:From:Date:From;
	b=iHaJsz3/Jm/8c9G+I2GAB4bR6DYMqn4X5b6hA67cftO+rMD4ouHvJWv3lTwhb8poi
	 V4qG6nCbZxczWX4oZuHictopkSJWXYO/YEuqEfSiz6qWvsqgAL27waOTypprA/N/tJ
	 BKo5qIQvxGAUcsjwQWe3jnu93OE208OEaVd4N0wzvTddON3xBGSzgS5vm4YNmtRvgA
	 QoHz1U4AfGvgqdd4MKv8puSLTN69J9vAkLPr130215j+qDye7CcpfdRHUfGWE+9zrU
	 liUOpC0ai/a5pbfLGZZCG2sbGD7+P1enM/0QZorLxXmPMDZFcVSzgKaFyKoympnSzQ
	 IT1Nq4298RBNg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9019DC83038
	for <ddprobe@lists.linux.dev>; Tue,  1 Jul 2025 12:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175137299358.21601.15201774403348943425.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8bae87a584e59799771c6800f5f566f31d41c8173743cf01506847c3f47eab40
Date: Tue, 01 Jul 2025 12:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751372993
