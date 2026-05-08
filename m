Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D71F4258CD7
	for <ddprobe@lists.linux.dev>; Fri,  8 May 2026 04:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778215053; cv=none; b=ooh43Dq5p6RvDZsQbhcYxNOMASN9LA7gtpxX02xPHFD+WDpOfZiv6fulCWenlOyRCyR2HgVG54eOrIuYlfWYnbofbpIWmWCxrmPHn0hT4CWZUJJQ/FqaB6wHXfVZt0iWfX0BvBN6aWwTKuqMfgyaalqxuR5B8K8N5S7q8qoO06o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778215053; c=relaxed/simple;
	bh=OYe/yt/XTt46xMa5zGQb6ftJLWQ9uFMetasxXBpfio0=;
	h=To:Subject:From:Message-Id:Date; b=FGkN1UnQGd3hZ9pbEBMS9VogfN0ADzU4X8YYPwoxaVysB6FgIjy7IJ1hKtTkGwVzQyVUcbYjsFLqawOP64XZFgPxx81XU9mpIJ3nTEDn04krOzDzGPnUBQdCPXlUkRYNRlMuFIXLiBTzpG87+Qp14xr1qBkZ3N0vqaM85fPpfWo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tQz2RyMZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tQz2RyMZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA953C2BCB0
	for <ddprobe@lists.linux.dev>; Fri,  8 May 2026 04:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778215053;
	bh=OYe/yt/XTt46xMa5zGQb6ftJLWQ9uFMetasxXBpfio0=;
	h=To:Subject:From:Date:From;
	b=tQz2RyMZN8Doyed8akYqjHS9bkINuZaUQhtEWL44urXHoxW8KvUUMVBZ6eHIDpMey
	 dHgTomHShmjPSkvEIamlTCF80T96pwm7EwLP6cg7eJPkvYAiRzf7IaNt9GYWoUWcuc
	 OcGxsQf7Cm1JHvb+nsR5U/GCE4C3j4twCdqa/3cATxxrQkv6mtt0IYE9wEENYC90fY
	 Csi1hPfuG2IpA3sifc9Qcs7TIc4D6enNetdPo+znWNxQ3LFA2yG3poGOIsFiWSyR+X
	 62tcPiPrQ723M+qr2YZYHPYBdBSK6XGMpxx7Oi+SbXrIEI5aKTt2eRmpyuyW6LVMWa
	 sfHHOGVxJznrg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC2ABCD3436
	for <ddprobe@lists.linux.dev>; Fri,  8 May 2026 04:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177821505369.29818.14586399449335773255.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bd2272fa98894f664aeb139eb26ede67a6d3ea3bb047d4436e3b85d28ca7b46f
Date: Fri, 08 May 2026 04:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778215053
