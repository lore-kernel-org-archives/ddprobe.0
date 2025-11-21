Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D599155757
	for <ddprobe@lists.linux.dev>; Fri, 21 Nov 2025 15:01:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763737314; cv=none; b=D8u+IBuA4Woo7j6d50yeDrIbDbIUdI9JjeMtg3r9uZLfSmWx/bhhhrNS01zgbEQ64IxhLycV9VvZYr/EODQ3NM9CZUW4RmJIB/jRWsvy6+cpJ79uooJHyANoaii2OuETFNvqF200AE8LQ8fjJik+lXu+eC1eR2y3i/y1bGaVncs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763737314; c=relaxed/simple;
	bh=w1KszaZLL51KZ8A3aueJv+xyZiurLkeFS80q4Z1ctU8=;
	h=To:Subject:From:Message-Id:Date; b=dCIw2VHWMl6U2S774+GYTgG3NgOENXMceBtvdSlrd6HcNSl3glQPrgTpxTVJz3Y6P93UwFdyVK3fkmo8rObufU9veKhIERqEKxWtgY1k0iP/wkst26uFVAYD9J7W2s3BZ7EvXLClgs0cXOw9nzesLTk8T3CGA8aPWB8Aka7jBl4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lq5p667R; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lq5p667R"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A32E6C4CEFB
	for <ddprobe@lists.linux.dev>; Fri, 21 Nov 2025 15:01:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763737313;
	bh=w1KszaZLL51KZ8A3aueJv+xyZiurLkeFS80q4Z1ctU8=;
	h=To:Subject:From:Date:From;
	b=lq5p667RWvs+S14U8cFIbn0WGbzx+ohJlEvMSNIC+FG0A4Ve83LnGYv7y77YXnmac
	 CL3beGS7Wok6PCJx2jShh4saOoQ+CxM+E2oAAfp2M7crmhP/XZ3huyB574NTwI+4/A
	 1GbGJsv89WZLvfSV8CV7TQioJ3dka/u7mXC8k7yRhLjHudiXynz9f7gUtJAcaNsqou
	 FbUZAN4mWqaZS9OTYLm+uaFZ5/0/TYBhhHbNpqNFukEWrYs9N+T4jFMlRy5qL1RB/n
	 JOucpJsZC6RjnsYvnAQZmiKQfEoBdUimvYzj0t4eX4vr+cQsJskTMKCRGDGeJ0gwsY
	 +8ZgfhOxCW8Hg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9371BCFC283
	for <ddprobe@lists.linux.dev>; Fri, 21 Nov 2025 15:01:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176373731359.3634.16393987258030462332.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 08d329ed4e233da9f832a779c9e9de6c399a921c88f67b09954531cecb34e727
Date: Fri, 21 Nov 2025 15:01:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763737313
