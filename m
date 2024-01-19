Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0118B4A05
	for <ddprobe@lists.linux.dev>; Fri, 19 Jan 2024 05:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705640897; cv=none; b=htDF7wO3M6f6P9ZFR4LEk6xhFzskd0LPGiSlU6EBsS+ShfJA0vmBGdsPOmhOtF9h8m2Y5FIb4YWfSJW/h4GQMTF+FrjrL/9qZUCYReBib7Av4j7blwFK6pjAEr9rtfv40qBRgT40fNWPSS6UQ94KBgu+8hYEmdGzSnZ71BFCYro=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705640897; c=relaxed/simple;
	bh=KCfRWq9pJKmlROkW9wJgngXSnrPm3xiR7KncFxT59zc=;
	h=To:Subject:From:Message-Id:Date; b=Bi4Cyw9tT57gSce/5FV8zE+JURJP+HaCBohs1NTnFv3BT37ZuptoDe0QiYHvwg8hNATbtLQ0xs1zgH4ENDThjrOwi7wDkrVqDQL2YMH9tgU24vKJQNy/dCissdZzaymBoloY2SR4bPCqXsXD3ZGjD+iLiA3yP2/mQB+KtWMfHb8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=G9IpvOMt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="G9IpvOMt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7A26DC433C7
	for <ddprobe@lists.linux.dev>; Fri, 19 Jan 2024 05:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705640896;
	bh=KCfRWq9pJKmlROkW9wJgngXSnrPm3xiR7KncFxT59zc=;
	h=To:Subject:From:Date:From;
	b=G9IpvOMt+6d/NHNc00D7RLfN+i1cHg9nsu62EkJ6bjsnaFSFHS24Y/X1f/Z+wSnBb
	 DkwsNbw9F4tgfF2S1b7L78ddfihn+17neVD8cngL0THumyLdxP4gXsETX0RtRnlyU/
	 UcZpyejzfcbrBCyyH7PVRi+u+63kUdbuQggEVKyJ6RIJXxzqu9J+KN1wbWh4tKZhB6
	 ECz1DJ2L7fhRHyt0pkVJNFpn/31DvJ2WJNSemWQFONUp0oxAqNQ1y/B5LoYO+wvov4
	 x9QOlGIjMleozdzix2twrxOyL61Fx++zKUlEJij1cZZNMQgErs+sx0PI0WWTAfgJdT
	 /TTE1medlenRw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5E33DC47DD3
	for <ddprobe@lists.linux.dev>; Fri, 19 Jan 2024 05:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170564089636.29033.3002862810758736690.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fe8f6743856ae29df6c229ec4bea96b1e54669378f88e37bbf197e3797091007
Date: Fri, 19 Jan 2024 05:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1705640896
