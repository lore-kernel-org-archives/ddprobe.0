Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25F6335893
	for <ddprobe@lists.linux.dev>; Sat,  4 Apr 2026 05:05:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775279134; cv=none; b=XAM04updZPjsqbaxbCiUU6MPUVh+LmXAauNBMRvUnxFUoA97+sgUzSa3aP9Ry1RLsmtaRebB+Rfrqi4A4QTrseB9NOiPgMivQqK66y/qoyUTZInGofCEgTRTT6KAkN90EmJJmFjfS/y32d6ELSQbImF5T2w90aLxnmBjLSzbM/I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775279134; c=relaxed/simple;
	bh=AR0C4q2pFUbaFnzAFthvs40byAaTRTPE3yIzz03tQ1o=;
	h=To:Subject:From:Message-Id:Date; b=lG9Bv3SfW9z5IooeimfoB8EmQHI7py+r1z00cUk6WQUb40zcFUvZkgHKqYiRCekY7csp4sKdS/TjJxCVq6NZgOLPj7bFa+4BBtuofIeg3JnIZbd2fqaIJbQAs+Au0zhRCOAZy5c48rOduVEqkttsQ/pxJzlwgh89kFxOc9Qcuvs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TevAcZ2u; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TevAcZ2u"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B97AFC19423
	for <ddprobe@lists.linux.dev>; Sat,  4 Apr 2026 05:05:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775279133;
	bh=AR0C4q2pFUbaFnzAFthvs40byAaTRTPE3yIzz03tQ1o=;
	h=To:Subject:From:Date:From;
	b=TevAcZ2u24SjUm8eeU3gTqIlbTMf6+kvhdv3ITk3CcP4ITkciumIWRW/YAxVLtnUM
	 kVqmWmtMTVcC8Axv+PPsK3PFXV8WkH6hJjRxqH0vy0td1oXyG0sqD4dotxFu8nxql6
	 9DI3GyYK8vMbzzlS/m6bP++FV9JX14jGE/jVvWhtWC3qjKuN2/R669UN0pZBGywg8l
	 Ue+USyFzBfcQONJkf5IPlqkTeAAtC8TJOwXmZ2vD+IaPm4jcytIHNpjhcy30sD9/Vu
	 KZJm41Bxe/OL8chF/d4k2UWs5zHtNZgHhJGtpQ1E3HnDxVi57j3qp1j9jEb+/11KS6
	 PsLzTkCh5xc1g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9F83E88D82
	for <ddprobe@lists.linux.dev>; Sat,  4 Apr 2026 05:05:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177527913368.26461.1815906131123869183.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 931ad5a03ecf9d4586db766d4c9f9cb2a2a09bbed225598954cf611b0c2e2b11
Date: Sat, 04 Apr 2026 05:05:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775279133
