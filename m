Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3923E8821
	for <ddprobe@lists.linux.dev>; Wed,  3 Dec 2025 01:02:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764723774; cv=none; b=ZAxZ4AXzxS/tG24z47X2Wumjt90rOZbtk8crhuPLJZUhfRDPjnQkB2zPwkajyWeAC59VNU5ONH/CgjCV6ZKdVoR81KjK3/t/QUIwD32Q3nkvaQm0cJRINVrIYsgPcLueiR02HSQde8uJU2jQKvfF7w7CwKUexsIYnndTcQ7xc0M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764723774; c=relaxed/simple;
	bh=KOA9GR1CC52hgjIYz+/I/VSshcXgA6LZteQucjpv8Cs=;
	h=To:Subject:From:Message-Id:Date; b=YP9DeOPmYsaEO0Ni4WaL4Vd3iQXXH/mOXTOZVLV331L3wQeWwtK6hrbQBFlOu7Sm8fklv7zP/Itn8FGNsMefwzSJSO7MtpEKBnI8D8G8UUwYll+1xHJm2NnkkSNX4NC84pUmdm2S6HVfp6fKfxFznZiyYsAMTBKYNdW3o5hESN0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VdV7LgJv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VdV7LgJv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAAD6C4CEF1
	for <ddprobe@lists.linux.dev>; Wed,  3 Dec 2025 01:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764723773;
	bh=KOA9GR1CC52hgjIYz+/I/VSshcXgA6LZteQucjpv8Cs=;
	h=To:Subject:From:Date:From;
	b=VdV7LgJvqgtwfDl3qg4n9+XAv/ZCecfAwO4LUmXK+85KUnXAaQOQvDviMZJRE2hBF
	 oM3f8B61LCxKvXHRTAKhi3U1WOFkslyYw1/Dh52zjv5wMrCHtMHTtjDNFqYKQHHGJJ
	 kXmPHnh+KV7d1LTA32HeFrqpBzgUarf4Ob3LjV07wgjWlA2d1GHkx5nmsQu2dhUcjv
	 /uEeNoI6qIVBSoTwPb0B5d1g4UDjZAEedwZZljgRZLN51N5WYmOrw/kvH9lBg+mQKO
	 b6G0mRNTRjjmn7dBpl/ae7TCeX667zvhBUH6E5ES/urA8ZgqhaqEbPLQ7QATMFyPkr
	 c2ApsaPXtmidA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 972B5D1268B
	for <ddprobe@lists.linux.dev>; Wed,  3 Dec 2025 01:02:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176472377358.4383.10226253948611296830.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 045fea308086812b151a7eae8e8d82bd242d050fd58ede2a228d4d27ad1bf612
Date: Wed, 03 Dec 2025 01:02:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764723773
