Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 329F7266B67
	for <ddprobe@lists.linux.dev>; Mon, 28 Apr 2025 14:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745850594; cv=none; b=miUMvL1wYb7KvBfCzfeDC4PKIuP2o2f0Vja5FDhudGt9Y+eM7dncbldiKdkVf+I0ZFhSNmzfiigzje1rIAWhj63TIznHDhDHOi9+owyWfR1zZK3QZF/+ir0cINP5oJAZahs2D698/93Vnt6PdwcW8ttol1udFXYl9+IK6LMKC00=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745850594; c=relaxed/simple;
	bh=KLGVUaUV/F0OyH6Q0fdbewxFWOOMuHBSZs0JnvhaZVQ=;
	h=To:Subject:From:Message-Id:Date; b=jKBnFweGjde8P/ru3m1vCj2b85Q2AMad803k92CDAegX3ADbTlQqTF54plneji+XEAFtca09QidF6BN5RUUumF0WIRgkglBJAZFZQ62jiabpiKKh1SDDxoT32YhzsGR6LFJupGcS0Bv/q8C3ZMMewy4g04SNnXfUfHO9Z50oXHI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DHzNuIoj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DHzNuIoj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2871C4CEE4
	for <ddprobe@lists.linux.dev>; Mon, 28 Apr 2025 14:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745850593;
	bh=KLGVUaUV/F0OyH6Q0fdbewxFWOOMuHBSZs0JnvhaZVQ=;
	h=To:Subject:From:Date:From;
	b=DHzNuIoj59ZM0Xy0OWg+PgUWotyJqufoNgHOKzKZsg33ZA4bU4LEFVs6J/o1v+MWh
	 LksewGDGxo1bKOeQY6//RH45I8IW7A7NVRqiZQYPiraTsX63zCTws36OygsWkauSPG
	 YxDPGkqW9zCVrUp/I9jwItI1udK8nWupri36nhH0KARzWvTn5uAby6mFCSLhFatO2g
	 gXsAVlTxbMP/n58lxrf3dCWFhENQM7lHM5u7O2Ipb+H8q5f5tHLGsiYREc8cMOCAJm
	 TTxYaiAELmekvEo2i0DCiyULOyIG00bflqUL0EQPPIitDfe/lKkNdFpwVHmCJ5XoC8
	 xH10E1hG8Bf/Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F4E0C369DC
	for <ddprobe@lists.linux.dev>; Mon, 28 Apr 2025 14:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174585059357.14314.14383023095338405150.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 666d0ad603cd0dfc9b96c80e49547bffe0bf17d1ada5632d94b7b29c3ce07781
Date: Mon, 28 Apr 2025 14:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745850593
