Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20D38262A6
	for <ddprobe@lists.linux.dev>; Wed,  1 Apr 2026 02:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775009094; cv=none; b=mGgUXfHpsNGZo2E29l6E9KHdujpjV0vsiJ0b00v13vJo97Sr75wejx/hCW8Ialhjfnn8Vblnxlr/wPrt5ZsLbSrFzrBg9oZkW9IP1cV4/KIW3fXoAf70N8RFzEYp8x1pOyH+eyZHLJhz0sMpneWOYDgFv5w9fs2SptXcI+IYGVo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775009094; c=relaxed/simple;
	bh=Z6xiOgW+Qz3jFpKWlgG0GzUViIHOJNFqYxl4I1KQutg=;
	h=To:Subject:From:Message-Id:Date; b=dkPG5gtb2Qk2g7cEy/9piNPTrm8TgqO/ZFzuYwrXVj+s8IQSexhXTX7EHBUtrtFc7VoHe0/IlPgmUYuiLdBMfrFEl36I5OXSRZV6++Pw0WyEegZCiH0Ow5juCKhD5320s6zSclyToI+TPLdLneu/x7k5RbtVS4Yb5oSsXWcxtjo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NQfHQ5ds; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NQfHQ5ds"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7AEDC19423
	for <ddprobe@lists.linux.dev>; Wed,  1 Apr 2026 02:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775009093;
	bh=Z6xiOgW+Qz3jFpKWlgG0GzUViIHOJNFqYxl4I1KQutg=;
	h=To:Subject:From:Date:From;
	b=NQfHQ5dsurGHfUvCVUYk7z7hArx8u5HQVmwLXZFmZ/ESh0lJBoR/0atV2XbZMNsOM
	 I4S31wNqQFQN1HMvfHnVTK62nv5HH+NyK1QuIvy+iwYAKDqRyOHP9rXVHwHjKCRZHL
	 wnGeoE/THJtZMxfSFRZ3tAa5u9ktWRWuAHXgbdrMrw4PNJDDHWGD2CTfB5QSDj19xU
	 NWieSH6n1UCMhblud2kKjtnDWv0rC5f+OgX4PpDG44OtmFuyM0+YKQhegmgHam7LBe
	 U/q7t9R3lwv19oFoKoWTDZcM1yWML+oAOvoq6xcj5qxQRXAgRa2Kk9f70jWS4LhABW
	 92ckNsjj6+GTA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9354410F92EC
	for <ddprobe@lists.linux.dev>; Wed,  1 Apr 2026 02:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177500909359.15260.12759181736175596212.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 53c27ce573212be9426a5ec0728b170a17afd8e07de1e94c59b99cf9a404482c
Date: Wed, 01 Apr 2026 02:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775009093
