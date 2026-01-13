Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EFAC233986B
	for <ddprobe@lists.linux.dev>; Tue, 13 Jan 2026 09:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768296834; cv=none; b=G1AXzUTZNmkaI3ZliIVCe2tQXFfrJLUPACIZ3Vup6HkzPuEc8CyiY2aUKEJO4AZ3u7tCAN3jhc559fPB8Tz5jyKDpH09FDyR2wstfNmVbHIWrVBLoChbcVg9momaCQUYZ6hEjph3Bn6O9N5nznnU7f1XSHvbJM32hb8ZxRwZ7ZI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768296834; c=relaxed/simple;
	bh=qVtjxR0uhY9qLxPbdQGfo7qWoz2LyftXLjPcSC0FYXs=;
	h=To:Subject:From:Message-Id:Date; b=MTTINBNuNEmzbrJkTXsl/x8KrSwXG8/7FnaCJlbpNGbdCUKU/gy0OqPIpB1Rw/7pvWtjwoDBZNv5Ix07ZZvvHuwFE1BSL628J8C7ur+MIpW6YCaGOak0RrWtULxmsG351dEybGxMsWzaJXDyMr2KJREKM2tXvhF6q3gt8I16k3M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Fnt0n3ib; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Fnt0n3ib"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DBADC116C6
	for <ddprobe@lists.linux.dev>; Tue, 13 Jan 2026 09:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768296833;
	bh=qVtjxR0uhY9qLxPbdQGfo7qWoz2LyftXLjPcSC0FYXs=;
	h=To:Subject:From:Date:From;
	b=Fnt0n3ib3YAIDgW3mnZYsgvgmgg/e3D03QDBO/P33rwjW81Mhhxcm8JfMdEcY0Rr3
	 sn0JRz2dgbWqc4TaW7t6+KZUhEcwhDGReZFMbLxmogwxIfnKwE0vZww8+y4wh+b9Yy
	 74NRTg2a28ACzX4g+N2sBSFg6puTDIhsFV5Olyos1lN6Vc6KHdsKdsNT9zeQWlyjpx
	 3ZMQPzKMIHDZdvfwELdLE/KLuWdsd3FCg1oYWexCEis1kIsO0x6GVc2xgtz9gUfLvl
	 L7pV2vuxEGt9DuQr62tnHQKXiwFLBxOIx6byHcN7A3cT+9ASpc7CaUJZqPInHNCTa+
	 +oL0EbVwtC9ag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FA83D29DF4
	for <ddprobe@lists.linux.dev>; Tue, 13 Jan 2026 09:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176829683358.20100.17345159242275340380.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e540457d9c7c4d61ce22721aee5dbc6f259203552cb0e5b94fadcfcc10a8569b
Date: Tue, 13 Jan 2026 09:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768296833
