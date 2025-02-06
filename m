Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 412FC226535
	for <ddprobe@lists.linux.dev>; Thu,  6 Feb 2025 11:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738842354; cv=none; b=VEEB7j4rXTEbi9pJjzO9wYSbUj7BcneGk8X9JMdG7aBJ+B7X7LCcFoMlys8M3e8G3ZU6VsVxONnpVmSi2+kK+0//85bRmdXl1xdISMqxC5cGG803FUAQ4l6uUpnSgsZ/kno0RP2/KF1ijmoi1arM753wyjAxOLiVsjbDmIy3goo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738842354; c=relaxed/simple;
	bh=/VPsqgP7GsZWF4ejWU5Q/zvGN/OXLk+geZ0eVjKQ3TE=;
	h=To:Subject:From:Message-Id:Date; b=MSn3QdNVvnI92f2M5xq6WbEap+oREB+91d+o62byYoXjf8wu4QoPUv8hGr30C7Ni+FwD/cT3W39+nBNzt/KN4EI03OIW778DgwHQNYD/XVJcRCKQFNQCsFZFdACMZRfZ9WUfaUMM7abHIFQihSjOnTrFG+Yok4Rw7/9l51W9PpM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=O+coOnWJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="O+coOnWJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6F86C4CEDD
	for <ddprobe@lists.linux.dev>; Thu,  6 Feb 2025 11:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738842353;
	bh=/VPsqgP7GsZWF4ejWU5Q/zvGN/OXLk+geZ0eVjKQ3TE=;
	h=To:Subject:From:Date:From;
	b=O+coOnWJ0CnZGG0se16w1YZJrbb+5eBjEtjgGeC2p5KOvTg/5k+wrBtuqnRBnKUTT
	 tSchIgLMaFojjvgVnH+he59MdLDeXkDFyuknP1IhqQZJ0m5r2WMex+wjZ0uuBmUX2B
	 tsdZ7h5AuPDQLxoINYzlDAgJAfgfkY/fT6MCtg7CTaq31Piyl4wejyFURbX/UXEjOq
	 U2O6I9Eg4io1PY/zK3ikOQaoXgsUMQ1dxtyAkFZ1P64WIyC2M7YpJwY0cP5tIo3++I
	 gzCMTuCen6LyZ5JqlS/b7ls4IFfyKA8rg6zSNFSj8Mce1hqZ2gNZOJkEKgmAT2bok+
	 qKZiHCbutQ7MQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F859C02194
	for <ddprobe@lists.linux.dev>; Thu,  6 Feb 2025 11:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173884235364.883.3188220352993980198.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1ca1f7a2fc5f4cb61ec76ba9389eb1a646377b22329c62f7e21fcd5fb4cc26ca
Date: Thu, 06 Feb 2025 11:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738842353
