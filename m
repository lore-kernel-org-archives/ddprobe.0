Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CC6DE33D4F3
	for <ddprobe@lists.linux.dev>; Tue, 16 Dec 2025 18:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765908233; cv=none; b=qNYKPxWvwchJT1fRMuv+walfaBLgxLewwsdXyE9DnR8eRRbrlQK0RDJZoLXfcZPQFjesIbFrDZv3Y4bv1nquveSo8At4QV7Nh8wDAGMFKRbdI+JQgyjFaJ8CV8EJCL5BYIVgFs6It/wlfHqQK72w+3feP4NWrftgKG/k0Bve++k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765908233; c=relaxed/simple;
	bh=Jv58YV3dSUYfWLNBqKuWv9R89UDS7BDuUgSa5mBR8sA=;
	h=To:Subject:From:Message-Id:Date; b=bJh6yRlU+8Ucw8U4tOy5CQXJXXtVbGUmTDXAkLo7ASLk6sut9Yq1QDYHtt9Flv36KRekSNmmJJ86Wv4UHdW3aT7/DnyLTxvdma4k0vp2vxI2Q5dbhStcsgeonVdviaN+tUd37FcG0BETb1gSJ9M9ZOzqbwZ5F8W9FfIJfGevOJo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oBl/Lrc7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oBl/Lrc7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF542C4CEFB
	for <ddprobe@lists.linux.dev>; Tue, 16 Dec 2025 18:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765908233;
	bh=Jv58YV3dSUYfWLNBqKuWv9R89UDS7BDuUgSa5mBR8sA=;
	h=To:Subject:From:Date:From;
	b=oBl/Lrc79bJOLladkXXBISFRvk1MbrmPN4WMhfwQgY0SAwk0rMat1wqaTnNnTBPkp
	 uUr7p4jhM+F2s2Y0hqJ7zmRaRFNHQgjSqzCOxiyJsxdOz8LFK0AIspm11z62s6ZttP
	 5vQ5gVmVqUfzlUiD1P5jRHewbYrfMYmE/21q7wCBUYfNcaCshtRIwi5BEQVCByDbtk
	 E1G3ZDYJRYxsPEfYI2mwn8HJ6JjtvGt2CJCZu+sSfLRXB5SxrtXs579cRnuh/8auVX
	 OGXrTat3L2LLYTWEr/OjmeVaAwc4FHtdX6HeILF5l4qwJo9XCA26ROWlASLd9c7uO4
	 23T9GSTTshnMg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F199D5E13D
	for <ddprobe@lists.linux.dev>; Tue, 16 Dec 2025 18:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176590823363.563.3011574596758079560.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e7338ef8402abeb65d9639733c4f1b6d87ee812be3f97bcd225b69c1daf77fdf
Date: Tue, 16 Dec 2025 18:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765908233
