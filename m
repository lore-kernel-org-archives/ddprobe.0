Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 286291DFFD
	for <ddprobe@lists.linux.dev>; Sun,  8 Feb 2026 03:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770521034; cv=none; b=QK+/zRhVL7Yw6wTp7mRQeDaDaAlMEVlv1YnsY5O3WpSbeP9B5vVeRV4K+fvM9mZSdUUlxtxTEExXQFsebYk2DepHN39Wcm5xL25o3vKv3WxISSyfLwqUvniN86gFZu3gL552cu588yIXUfmszcN71by4E7JqbNaAXhgoTmhZekY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770521034; c=relaxed/simple;
	bh=gc2ma7XBHE1mpaYZmQS3HPQztIJutNKEyEX7cu0mX2Q=;
	h=To:Subject:From:Message-Id:Date; b=MLGa+unQpLTWGpErNlt8l91b6MyJ17pD8SmbLlvayaLe8FNhmuMTA/18utoS3mgCGd0N+amOtZptS5pdU49nU0trkT+G6jrGnFRXpCM8olxdXVnLgo17bLjyq+BW1UzapuFOGLOgWmio5UVP4jgjLm+dm0wGKcj1ifwT1dOzpWs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=T5RXSyzF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="T5RXSyzF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BBCE7C4CEF7
	for <ddprobe@lists.linux.dev>; Sun,  8 Feb 2026 03:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770521033;
	bh=gc2ma7XBHE1mpaYZmQS3HPQztIJutNKEyEX7cu0mX2Q=;
	h=To:Subject:From:Date:From;
	b=T5RXSyzFFSW2wZy+nGVEPI6G5apdXmMMTxNP8d0CXVrjk/ChHg5g3DDYcgPl5ECqh
	 iOVO11o+LUKo61iLtBiUDLfLZynhAI6NmM84DKd2I+OoRfdOG+u+cAX35xfLrDfG/g
	 12hT6YZ2vyIHfsOP1obKqD5TJHvcckkYTMmlH9J0h+x9fRaWlpr/Jw4MOOyy4tQ62w
	 1HPgAYpsPQm3vXSQkMvKVVpvWXN4N1MbdVgQupmzHtIvZrBJqouQNBSRQQnDAe4ujP
	 0G1umo+kYGIxfmP/HXcDvmU3/wSYF9H30iYk5qstIaZd+XyZ8NlshtUeYBcaMr/oiu
	 OLltf/fC7uNgA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8F0FEF06E2
	for <ddprobe@lists.linux.dev>; Sun,  8 Feb 2026 03:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177052103359.27376.15830716931569592979.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7dbdf3a7ae38735af7e65598663186a77cd7ab219405d9ede7489edc27b57215
Date: Sun, 08 Feb 2026 03:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770521033
