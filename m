Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C7D227147D
	for <ddprobe@lists.linux.dev>; Thu, 11 Dec 2025 06:42:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765435374; cv=none; b=iFjJ8lgwEIsHs+yV/vN1Nsm1p4bUNJxwVUTUVb9lcndHBYUExR9a1qyH/rKhkqWuwMrar0fg0BVm8QmPf4I5ROByQUQmh5dar4t4SVt6OfZM2igsj8AQ9qUysKuHcKol3zcJkPoJavekTjgBQ2iuIQ6L2rbYXJWh1gfZKYBVZdE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765435374; c=relaxed/simple;
	bh=iNT2iY1j9MDBZGMb8fKII+9rx9r4RAXVYSPWXmrOKTI=;
	h=To:Subject:From:Message-Id:Date; b=q4NUF08ycuTp7daP11wU9UC1demMNCMwJeH+ICS0U6keI+H9YutgTBXwl7lBr1POBzB5O6ValUiqctj0W7gofni65/1K69Q/esFBv75as/i45FWv5ImA/G3PsSEsAEbW7adWuQ6j00r414wnEProQapwXQab6L/7AQoyfHWeNHo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=s7PkVsRc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="s7PkVsRc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAC3BC4CEFB
	for <ddprobe@lists.linux.dev>; Thu, 11 Dec 2025 06:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765435373;
	bh=iNT2iY1j9MDBZGMb8fKII+9rx9r4RAXVYSPWXmrOKTI=;
	h=To:Subject:From:Date:From;
	b=s7PkVsRcEV4ISTEE/lMTTErylutUpQaCCEA12huGZeLf1VGfgtMGcN3zxoN1uhfP1
	 xciIMBIS/c+29mbsgJaa/9inll2Ig0peuk6PklOeFQNTVGTMLA39zvIrzzwVbjv/xc
	 O2QZtKcxlXjfD5P7aXJ0n3JG+qrYobJdm9r9lXS8/tgNyBTMU63cYv/NW5pu4E/BdM
	 f5FpJjL1I8RtI0RpuNn6V9PI1WRhOQVJAFr1huljf8CeBrfA4FOLDvvq0XojUNvLDH
	 RXmRDrdO/oL2v+oNflEJOOk49WnZoOqOhzyEJWmBuyVQ5V0J92TJgXnK/rOOk2zeYf
	 79xFzgAn/Fe4w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95633D3E798
	for <ddprobe@lists.linux.dev>; Thu, 11 Dec 2025 06:42:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176543537359.5812.2120054354675966844.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7d9684a785e21278ea0f077da4a5a94b838a104fb2387b87afc70ba555b849c1
Date: Thu, 11 Dec 2025 06:42:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765435373
