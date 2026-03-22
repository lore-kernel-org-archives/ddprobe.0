Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 07E39319617
	for <ddprobe@lists.linux.dev>; Sun, 22 Mar 2026 12:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774181094; cv=none; b=BkkYnE+yIL74+QxemLr/933Tt8m5tFJ/WcS7vOnTftODINM4o6rdp6BJ6SI9vJZv+MX7/V2dCxr2etrc6rs9aW41V/rFj1Pz7DwaPtTgLdFCblw/ZPSL5vSQ25y/5KqwD5t0VxTIFP9HLv/UqqtosUTZ2730V3F72zBZOmDBHVM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774181094; c=relaxed/simple;
	bh=NwCi8k+o7VOpOr7X6Bc0SIDwUWSKwq+Vc9WqCSfkxA8=;
	h=To:Subject:From:Message-Id:Date; b=Cls0socSEFTeg+YC9rAgFcyIQ1AsYnWD5ldfrARL12TSjWSqLUTBmOyUzWXFfoZIdsW6AfD8Wr/AWu6agqLPfHYjvnXv6m4APsDWdVzD5eDkjWYrnDIjT0CI0AFY5omDq/WZGzuoBmuezQL3HQTUj6vUsAT0W+TDggOXnSoIT1w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pnchH+Yo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pnchH+Yo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC639C19424
	for <ddprobe@lists.linux.dev>; Sun, 22 Mar 2026 12:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774181093;
	bh=NwCi8k+o7VOpOr7X6Bc0SIDwUWSKwq+Vc9WqCSfkxA8=;
	h=To:Subject:From:Date:From;
	b=pnchH+YoDeoEQ84shAu71K9GWAPGpRRGeskASfp7BDzxg1YihZvkYxI9WPLMbj9PU
	 edW2zL0KWWyl6kgc5Lyug35SRK/aY8QbJC1uDPxR67at87tqpvTziKreCPwSl0CkiR
	 zh8w67n8bzOLWJ0v+YEFVRCVafh32/qmvix0HMhp1yAqy5JV1B9Bnf9sryFj+zDCEN
	 Mu/aL8lXo4IYLuH1MfPiQDYI5zaebhGbnu8Gu/FwNzxU5gFwVkhWfEqtjJHhIdueVU
	 nDwidYUuVNRqzY5KlgdCUbKiZybeOS9ZWV4qRUZCxJjresroI4pmKGy9C2SoU2Ch8W
	 BwjGKlC0AnQHg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9772DFC72BE
	for <ddprobe@lists.linux.dev>; Sun, 22 Mar 2026 12:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177418109358.28841.4262424396019843502.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9035b6e6ebc9a88a14c6e9087f69384058b46a62ed7bb316c4fbd869b4b76675
Date: Sun, 22 Mar 2026 12:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774181093
