Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4EF342AE99
	for <ddprobe@lists.linux.dev>; Sun, 18 May 2025 04:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747541994; cv=none; b=RCAeuQIUNFodObVit3ChNs2/FSxxWh31y+tKQ+iG43A0B5ySF3lDMjaEWQy5kNRi1nK/iNJLOtNnoQbfdRGcLPatoYXooI2SekRD80GYNquKhr/7cH/4ByUA5oaZ0jmxpM2m5L/pjg3uQ3vvXA4+Pi2gUHcMilE6gpL6dxEuW9k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747541994; c=relaxed/simple;
	bh=UQyNDnj/fkc+VxvLONrIFD0js+zVJipC5KBW7dnhxKo=;
	h=To:Subject:From:Message-Id:Date; b=rDvRGlVsMvgLOsP06IequA+JiXIUnkro1Q4GA9fGp0rA4CG0lDNDc0WgYTVOVvm9E/oWrJvOBwl7CwpURepV6sViygKaoJt79x+4R6S1kHmuObsKNHVaaVvfWU5TSaB0BaoXpjFk+5MdwKWe4/cJoyORS/Tjq6qpTxhloAV0i30=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aHk8vcbM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aHk8vcbM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7E0FC4CEE9
	for <ddprobe@lists.linux.dev>; Sun, 18 May 2025 04:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747541993;
	bh=UQyNDnj/fkc+VxvLONrIFD0js+zVJipC5KBW7dnhxKo=;
	h=To:Subject:From:Date:From;
	b=aHk8vcbMX2/kVNBezv9Fe0YndrbSKLzpWcE48OMriythNSUPAi6RrCAOHOiNo+2pk
	 j7+9P16X/5KWt4+UGDspbFzNxx6QEb2MZnOAhG7zYMe1hDW1e5eou0VRCrIc5ZBsXb
	 o9guoHzNLHYp8skY4gBsxJWWXUhKT+qhptdVsfekR+yZ2Tvre6wMHZr0plJNHlUBAt
	 bmT2ENUHpOKBTC3KYHnjLYSXupyDgIS7+V/9bpurf7h+GswToWVwzFbXwzrhAGSa15
	 4BLoPrwwz+e8pF00wAlrUttHoC14Bxgs3XT8A2yxYWgCAgS3F0x6bcc7dQJyjy7mpb
	 Xrol3PkpcL9Vg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90331C3ABD8
	for <ddprobe@lists.linux.dev>; Sun, 18 May 2025 04:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174754199358.6530.5011800873597263942.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cdbb7ea5ef3aaaf8868b268d76aeb722adc618c1a98993e56fbdaf75c3c2e802
Date: Sun, 18 May 2025 04:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747541993
