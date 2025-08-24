Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2278E1E22E9
	for <ddprobe@lists.linux.dev>; Sun, 24 Aug 2025 10:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756031395; cv=none; b=mkDQtLGG9rj8uGAGrKmqtjpAW0JtAT2jvnnwhRtqFy2wT0L8J3eYzfk4qYjhqGVkawsxJGpZCDeEKEBYcZFOV7KADX6x5ZNOVQI4GSkPKRNcRvYPOTQ091caYNu6dzLtuMFMcSKHYm/W5g4Vvscr3h0hx0LHTNj3yEJlUErlLPU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756031395; c=relaxed/simple;
	bh=W1ebJVajTUfmNjjlpk32GZPZWIA3XhhW4w/SVGZuTr4=;
	h=To:Subject:From:Message-Id:Date; b=Sj4UtjQK+o27onlVp+VV52SWes0TK3rDEnaJpqni6xwijwU0BLqgezOYpOmMkmC+6FvgAQjxmNIX+12zbcyzFyRmui98/LA6gG8iMvEYn+Je1hWHHLDJhzwcCQoxf7TQkCdIswwaTJo9Rk95qyaxk0uroCuRcbmo4lK/JJ2fEOs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aHKfAcB/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aHKfAcB/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A10FFC4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 24 Aug 2025 10:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756031393;
	bh=W1ebJVajTUfmNjjlpk32GZPZWIA3XhhW4w/SVGZuTr4=;
	h=To:Subject:From:Date:From;
	b=aHKfAcB/1U+qaul4fK53oz/9qv94ZXprpfP6F1Hb9SoS+irH8LJ7lk5tCSlRZ8OEy
	 IAQLMv+iMepmqXV87bFBalT32oaZI12291MR1uK3+rgy93530VDsGZgUA0UIWDHUW1
	 9qswGrcPm0zVI67qk5RdrTl9Q1aDe/LzxcNuFIsv1y9YrZVh+FcF0nl9fiEQYPHMmn
	 7NnB1qRKkFuYDrIraGFxAOrAq3BF3aVpU5ky5oWoHw49Ub8whuPCE20uxdMhgzQ2pC
	 LkGft8PIReCXhTWYW9F2vZQtB8Wh+5UKRWA0pd499/RCrisAq2NX3jSNztZHJtI/xw
	 3WvEwSs6zF26A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EDF6CA0EFC
	for <ddprobe@lists.linux.dev>; Sun, 24 Aug 2025 10:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175603139357.5252.7555324167218345662.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4c454fddec3ac7f8aec78f4e63f91805c340432651399ad7e262713bf1f39978
Date: Sun, 24 Aug 2025 10:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756031393
