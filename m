Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 260C63E3DBD
	for <ddprobe@lists.linux.dev>; Tue, 30 Jun 2026 04:08:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782792514; cv=none; b=j3d+TJqQUX8SAaLBsyg448YG/O3ztlNUInw3yPIyr1DFFMHLeImoPfycPAonbXFvJ+ED1c8he9CqsnYxoOB4sYmZmUVnyOebP1LdlTl/kdm9BPsb2ck064FSVrZ7THfpwD2rZ8RVj8Z0z/FIzrE3ECfWM9iJwKBkIMSgO0KbG0A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782792514; c=relaxed/simple;
	bh=8v8f6Db59nrL+a/KmoEF1UAoNuSFh1cTyszD1Y/Mr3o=;
	h=To:Subject:From:Message-Id:Date; b=BvEE64TFRm35a6FLIXX47Fke+O6sDvwehojbQ95kYUgzEu/kFAfyqBlFlZ6c9BZ7dpQwWo4CWc8MNC4Dfex8w/tvf8v6jQfn7v3OgyOAqXOrLgr+aeMxLHFEdngdqQ3YoMmxesPa1S1dxld/CgTB3ggvIuu1tOcB9IX7+JPqrng=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bZd3fytn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bZd3fytn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BFA91C2BCB9
	for <ddprobe@lists.linux.dev>; Tue, 30 Jun 2026 04:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782792513;
	bh=8v8f6Db59nrL+a/KmoEF1UAoNuSFh1cTyszD1Y/Mr3o=;
	h=To:Subject:From:Date:From;
	b=bZd3fytnBYLw8QsMCJZihRX8hqCoEjQu/LbbHvtcZEdKe3rJBk+D3mH3sCs5yLc+S
	 W6VnnsWsj+LfNMXmlTr1t+AI6q5Hx29YyqsRBLJBDayscMqtXiwWDMZQ1jb4f2t6Lt
	 l1moPmXjsBHJdT2WboJznKbmNueLgpohmt2jTFcPhBhA/kKZQ1W78Z9M/YtQv+//im
	 QoVWp3wpInbrNki+iNMcV8sEd7MjIlr2vr48rgU9RJK84N/N9x4L/WJ4iF++RJqadI
	 btB9JJGVHKRdOD5+jpwo3syRQ5W8Kg3/vJsx1pOIv2vEte7GXUKNqNLKA6Jt2p80bt
	 1Pgpc/M8Z0eEw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA863C43458
	for <ddprobe@lists.linux.dev>; Tue, 30 Jun 2026 04:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178279251368.19529.2450276259643236892.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 43a1e155cc479607aab0887b865d32cd04ae12ed7954ddb3382205659bb0b4f3
Date: Tue, 30 Jun 2026 04:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782792513
