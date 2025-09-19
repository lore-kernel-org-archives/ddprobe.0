Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2036730BB9A
	for <ddprobe@lists.linux.dev>; Fri, 19 Sep 2025 10:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758279594; cv=none; b=Io1VLOn8jJzEH7eM3NZH2E5h3tjxWSMPdmNcPI2CER2AIcMTcyVl/F/mSQLD3//5MLB02lvaSF+9H45/ffmg6eY3M9TZRW6bxdwXZ2tTCXhOjaM5CoSjMIJczWkitkMEnpAKVcrZbCRqnR1r3r0RumGIlQN0+xapqq2i5rKKg7I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758279594; c=relaxed/simple;
	bh=eMZwRPet++oz1rV4adBl8qLhrD8aOs0zjB+0y17iSMg=;
	h=To:Subject:From:Message-Id:Date; b=k1ndhIK+jCyVGI5z/9y/VggeTbsd3iFnBKK4kBhiumdYGz7dhdAwAJDfy3jI45oD1eaZ7DmtvgN+LQMUw0nXltMRB+kKjJR++bZM4/t9Mpv6zOhKLR86tMZMOehKaVL79hVyHM1chlbbqwSnEd5t4inpMYI+OgDjo0sf4hMIZBo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lWFhb1aP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lWFhb1aP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A88F0C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 19 Sep 2025 10:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758279593;
	bh=eMZwRPet++oz1rV4adBl8qLhrD8aOs0zjB+0y17iSMg=;
	h=To:Subject:From:Date:From;
	b=lWFhb1aPXXRIgXDrJPDO7NjvEOh+6Kw/KxbWdEFZiDfcb8QE/b6L1rBoVtBS2VcQk
	 /JSFlngjUddeuK/sUers8WWxFeEA1V4Zv2TnAvAah0LYOwKQ1dsTg5isMu1aCaZGWS
	 fUmZWdR2KB+44YjUce4/yiwGoiUe/EOVpve3SYVTm3JA60FtGXD5YD/8eKdUaTH4Re
	 KdGnjJyOeEZp1yNQ4feMuJepuU3t4rUdroyGIXB85FXsccSsxEhmAOmXRJOPPRhFyZ
	 peycipc2hQVUB4lyjH4mQVZKE6ovf8JwYocBaXz1vrs9qYdeddWN3DO5UXud/l61da
	 g/bnhzwhcJkVw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97EDACAC59A
	for <ddprobe@lists.linux.dev>; Fri, 19 Sep 2025 10:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175827959360.13564.16077993717426954437.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3305ee290660e392eb0e7b1f45c9ed457847e03267dd8a4fce1706c4c08f92b6
Date: Fri, 19 Sep 2025 10:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758279593
