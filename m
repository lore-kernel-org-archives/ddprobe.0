Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BC282F29
	for <ddprobe@lists.linux.dev>; Sun,  3 Aug 2025 01:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754184594; cv=none; b=AF/i73qW4+mBDq533sIa7L9pzu2NW4EsIUrNFfoBHAU2kVlFQqmZY0aAp851D4rjwO4zmpDW+u9hpx1nZMgB80dbIhR1Quq5n8WU6E0E4SZWwNHJZ/ZafIXQU8Hix8mOxLX+6Zuuqo1uLeDdlB6QdsHU/bb5XJ9XwWF64NZznHc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754184594; c=relaxed/simple;
	bh=xdwoyDQirdvRjSG0hvf1ZDK00xhicrbW6ImcggDpO00=;
	h=To:Subject:From:Message-Id:Date; b=e/ZdA0/EnGmxT6dHXBRW14E+WG8V0PdIZllmHIadenua0vOpQxOteEqO0e7rC26ESauTf9pIwK45Ol62bunGSpNWQm3dZQzuxj4CFB0ePv8ar6ImUxNhN6F2+ZZqDVj84X0nYaT5NIvm6h2tJHlm1+Pe10LwE5zzO65uzTBusKw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gd7lDz7c; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gd7lDz7c"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8115C4CEEF
	for <ddprobe@lists.linux.dev>; Sun,  3 Aug 2025 01:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754184593;
	bh=xdwoyDQirdvRjSG0hvf1ZDK00xhicrbW6ImcggDpO00=;
	h=To:Subject:From:Date:From;
	b=gd7lDz7cpD62rGtD5DpUY1H9LESshvqrm2jck6NbR/spSDUXjy82/uNmZJ5O89LCF
	 +K4COezg28JIiQlEEdM6TbAFqzkbxCywe0sAYKRnbJMO5jwoXsvDDVoFDX7UN+itT9
	 XLBxSU01DWhyijfgUM/Jwzd7ud2Nb6h2v3ZDYAuKnwXuZPhgSHaA7oMfq0C5IMTTXR
	 9OByersHqo2DwoGbkiRQ93L+zaY/I9M1yDe+qF/l9bSrqBGfXeqaiKjydROzS2LVRL
	 Qf5QbqNwftd18YsdxnPPzBh9ylicenzyVK+0ZgXHVQpY0y2CJTNK3QmboSMMIhZZey
	 B/5bnOgBWZEaw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 927BDC87FD3
	for <ddprobe@lists.linux.dev>; Sun,  3 Aug 2025 01:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175418459357.30090.15547697725042655965.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 14dc93e992a0a520757e871ac7ce83eddc6dfab956eb29f7711bb6f9085241bb
Date: Sun, 03 Aug 2025 01:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754184593
