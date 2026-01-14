Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43D862F12B7
	for <ddprobe@lists.linux.dev>; Wed, 14 Jan 2026 05:43:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768369435; cv=none; b=g7V/rze6lTgznJ+9f/LcD3Xbxb6Q0HA3PC/bc6BgK+9WJ5FDcH9fjcgpkHHvRvgLIRVvmiwdYbXzN3I6f43p3L2vUx/T+I0iXyrPVj60ECEYzYM4jNWhAQZFt4q97Z1Y/4ljTY7u/baSaCGKUa6V28R6n+k6MqYlU2QUi7BG//0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768369435; c=relaxed/simple;
	bh=p6+pNVCgi78zukqlUGc8DIdtp8vKfGiJ36ZSr3dvoTQ=;
	h=To:Subject:From:Message-Id:Date; b=buOUX4X3dABx2ZH24a+oIVPnWc63l0GW2tntTsw9zfAWSbUhg97unYNMAZOJF7jIaOrxKzxzKrduyz618mFnLUfcIbzGstf5Lde7loHVpiQfVCZ96Tz9RtcXbkCWUyZ927RTahnZf4Pmfb+rgD6ZNJ/hgDqYaML1YqvgWznaUEY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YfHmZPaq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YfHmZPaq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0132C4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 14 Jan 2026 05:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768369433;
	bh=p6+pNVCgi78zukqlUGc8DIdtp8vKfGiJ36ZSr3dvoTQ=;
	h=To:Subject:From:Date:From;
	b=YfHmZPaq+NAtNGTldf2iG4nFcQqKfOu122mW9Gw66iSSQaZ4WMTPC2ktUm2ICdOqw
	 st5J2h0GzHARWAFlGaobL2/aauzvij4VTJ8u+ceQ0UaKnHHlHdSxCIUQVxSA0ACb/H
	 oziU+Cz1y2FklNzIlstz6aicAZYBZi1u/9+P+pL5l2ONK768bMVFhMICHVLjcvKzDn
	 ypPzEeVqoJ4piDmVpBRUorU5brOMVE5px7HKggunJOJKgEqlrRw54uMt+PlDprqcYa
	 uItSmMwVB2z71IR7QaUFJ+b3gLWy9kR7Sc5k2Dfk9MNMB1qwM2/FGTJUmbt4nSzNhH
	 d46B6VzNenPAw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E49DD31A0E
	for <ddprobe@lists.linux.dev>; Wed, 14 Jan 2026 05:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176836943357.25396.2613785158900858836.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: baa2dd40aa70822e2a8a75a67507ef2399689c1c7adb459738f63560721de700
Date: Wed, 14 Jan 2026 05:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768369433
