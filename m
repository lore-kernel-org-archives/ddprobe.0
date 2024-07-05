Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 58A6027452
	for <ddprobe@lists.linux.dev>; Fri,  5 Jul 2024 07:25:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720164323; cv=none; b=LE71rl6Hw5wXVz1a4M3UPuw0siwHugTzhfKoR0as+ZQuSDc/YsdxRfXXWAuKKoXQYD2hYkK+nh0cQeNY4eHDWM1VU9gIJqecD9hci/l3mRQfVH8Avy3HAdXzoKkoWg65H4AuCrorQCxrcZ5xDxZ2gSClfuu1IKSsIji4u5Kk3YQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720164323; c=relaxed/simple;
	bh=xSkQBi0FRfxnGlO0yhIuD1hqKOGrLrEavIypjYUin+E=;
	h=To:Subject:From:Message-Id:Date; b=BusHGrVA0/BVkhFedKK5IINHsztbiySVREa2T9vVe0zxYs6XVVphk9p594NYCSGLzBcquPZZAC35Zc4jN+0yXxslJ4yVUXo6Pu1+24779Br4iBrWSiqWjxeCP7f9J0zrrkmkTYHcKLT2yzBVL59rt9i7aoNtto3piJa83mRhXOw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SQdoIfXp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SQdoIfXp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D45E3C116B1
	for <ddprobe@lists.linux.dev>; Fri,  5 Jul 2024 07:25:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720164322;
	bh=xSkQBi0FRfxnGlO0yhIuD1hqKOGrLrEavIypjYUin+E=;
	h=To:Subject:From:Date:From;
	b=SQdoIfXpQOQq6a8avoyREZQzhU24JklpSdtET9tD+xpEHwRzmSw7kUpYAVDo/mOCc
	 92ABavkhv0CWoxLQgkEkqeFI4J5GA2ywsaeMhJ3uNw15kHgZ4MbjpSzHDvDNrFd2IQ
	 VjvKSX0FVvWvu0UVzbqZhvQC08JgLKKFjBvayA+1OiUU51iFDsj8GrbJLaDuiPI+lW
	 o/nc0PUNF200KkUAT9ZS6aT94IaojtONe8KSuntN6vEYjOdDmOqL56oBJAQ4F1NFdV
	 SqNvtKX+y/yS0ZoJkiJhFyBLST70YCwZFu/+CCPmyofUv23d+iaJH5mV1lF9MTJjv1
	 rZsasioFgeBfQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C3161C30658
	for <ddprobe@lists.linux.dev>; Fri,  5 Jul 2024 07:25:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172016432279.30633.15693159334195355146.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b02e14b6513276529de86c4adc2ff720b66c56fb2bc8690993a51515bac4bab9
Date: Fri, 05 Jul 2024 07:25:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720164322
