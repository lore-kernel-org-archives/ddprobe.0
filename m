Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29261207A3A
	for <ddprobe@lists.linux.dev>; Wed, 25 Jun 2025 07:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750837194; cv=none; b=k/JF6amzzFRvttkNc+TGzX8841vhV6cjIzjsuNE3Js9JWRvRq1ROze5jeMHDW1EOFuQE3WbtVuhllSx7UDJy5C3rNc4/dDF3NEeFHXwagxF5mOJEqzD/9XhxEGwR1mTkf/XfHZbGVYfRm8Ufgy5TZKeFPWPVGdVkbRKkc78evYs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750837194; c=relaxed/simple;
	bh=1KHtCoiMu/eNY4ivoTfplFv0tKkr8g1KndoUZlqwR0c=;
	h=To:Subject:From:Message-Id:Date; b=aFnOftaa3/qGIZJy875RH2HbUyZA+E68wUYY1wwsCpoVW8t6npwBplSqKtZYsfJR3tZWKZaxWgxJnK4DeGAP3AzCTt4D27CB7siEWM/8G33jKT4FJZUSn5NHFmAIk2PTWibh85Joz3aAv76JP3cr0q3hBX8whBC3P3FHYwARXXI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=anfAqFaq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="anfAqFaq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DB18C4CEF1
	for <ddprobe@lists.linux.dev>; Wed, 25 Jun 2025 07:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750837193;
	bh=1KHtCoiMu/eNY4ivoTfplFv0tKkr8g1KndoUZlqwR0c=;
	h=To:Subject:From:Date:From;
	b=anfAqFaqIgL9L5f6EKbp6UynQ8Ne/knM+e1VcUNOgljz5ZuhfZu4HTEQLS4iy5PkE
	 HCcoO2aW9yAppRt3418CxIbtI46KyVkmvcsB98CgsmyJbrfXN+58tOcRN7W2iCy6Tz
	 ej6Ff6leDgRADD9vDgTywcxu+EYe4uUsk4OP+/VI/nNybs91yY5xpqxUlEGm1G9nKK
	 wI48hHYU5xfcm/mt7ctpyw44ZupfdodNk3v7xOV24xT+fgquZLOcYM0Qm2U1x+6TfZ
	 ftm8kSOxO/ikzIrHrUUKhDm8ZgWKHa1Brp34fW87CSmTvaFFzuO3i6VwmuHQJ25kai
	 ez1AIUWB92Q1A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F016C77B7C
	for <ddprobe@lists.linux.dev>; Wed, 25 Jun 2025 07:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175083719357.4403.9249706057319823700.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f07a3f79f577afb80940cfa44194f0c66e0238e6f548abdec825d44137b07393
Date: Wed, 25 Jun 2025 07:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750837193
