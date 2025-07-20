Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E1CE642A9D
	for <ddprobe@lists.linux.dev>; Sun, 20 Jul 2025 06:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752994794; cv=none; b=fOOwYT/YHnT9CIumse0dRLQCMIJ42sRkFnIkJI1f1Tmg7a3NJG2lE3vJO+arF7Aok0UG8otUNsORS6GtLr7MwZZaf/RK4uycLzhv07f0q4S3N8J74VpPNeEMue0yKhTIhLKFxbjUbEYczVwrxHXGbFHhDN77hdvFi7deL2Ey8oI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752994794; c=relaxed/simple;
	bh=Jpr8CbI+BEW5Gz/ZuJugvca8UiV943ScIRlqsGKkn3E=;
	h=To:Subject:From:Message-Id:Date; b=Qeq2Ig5SDsylZmp83OfvmH4vUJRGXbQWBUYjGxzxiIN3Dp4wmooyM49h9zTb2E7jQx1R3OV6d8O28x8Q43XBGCcwsZG2Pi7+6gwMm7whYF6A29jl3ppEvKQQKUZkaLjmZMgJFk68voGw8P7zIeouBx/wsif6vtMPenzjfsXvO2c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=F27my93+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="F27my93+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC7D7C4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 20 Jul 2025 06:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752994793;
	bh=Jpr8CbI+BEW5Gz/ZuJugvca8UiV943ScIRlqsGKkn3E=;
	h=To:Subject:From:Date:From;
	b=F27my93+hEG8Loj6rKcjlqgkkBhtnN+ijX5RWbfxt8KMuEaj+xtB4ECyDi9CtUXcB
	 p7kY8Pnc9S5fNtSpUal98wFPiWfcdPiaoc3CaK277NiK6+u64yI7uT5rUhJFlQW9q4
	 B4KQ8ehhsyc4zg5aqFTXbSP/o/JllfZHNJAe6BhFVkQXuV0ekmsoqw8U9AWYJJcJ7f
	 2+Z1agrvcmM+sNQ7AOAlVoWHYB3dA+842m7U+6S5orTyyOw6rXVR+LudNZjezG6mXx
	 uPlbTLAds8bCjCCYbdtp2aq+ULnycNze5ceFRp48TVgQEHe5vofWqsvQDUX0ak4R44
	 yeqSievqF3EjQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9310FC83F1A
	for <ddprobe@lists.linux.dev>; Sun, 20 Jul 2025 06:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175299479358.7280.11769694996726543312.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6445417bd1c039a8bec2ab75816e521f1726945242221c044cdaa0c2c89c9ae1
Date: Sun, 20 Jul 2025 06:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752994793
