Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F7AF31D371
	for <ddprobe@lists.linux.dev>; Sat, 10 Jan 2026 11:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768046034; cv=none; b=EpHNaiEtRqxmQCyr4KlQtX61jCuB0YOusBXdz2AyeUprwUmFs99Xn4G91bSc3g9P+peCtzrd9qyFIC8m8+tHNKIvLynVO9N2FF8ZUO+ruuryiE3jYalZuWwjE8e4uvBH4Qt9jGfbwuBTTp7TZg00vs8aMoipHqONGPFkUe6P6QA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768046034; c=relaxed/simple;
	bh=nWoVsmlaWW715KBOevdNhHAnwbiRucBuvymxs2yDpqI=;
	h=To:Subject:From:Message-Id:Date; b=BJ0DvYeYaEtWi2lmJlGY4P8lKEihTkNWFyoBgJOYePGP86Y0foLqIXKBcWZPHIVdILIFs1XnFf461OZtvrhcBAgkuMQGdOLdA1GL7qP+uvHSshi3LYJE3Veyv9aHY4F6xo77xCrgEIGIySsBCYNkoH5E1Gjl+jdsaant/1JTC0Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IN2zZl2s; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IN2zZl2s"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A747FC4CEF1
	for <ddprobe@lists.linux.dev>; Sat, 10 Jan 2026 11:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768046033;
	bh=nWoVsmlaWW715KBOevdNhHAnwbiRucBuvymxs2yDpqI=;
	h=To:Subject:From:Date:From;
	b=IN2zZl2s7ZqB4Ir/XR+isnTNxakPgyxV2e6TVtyPV5Tg1JKL5ODFVKRVZ8TLk8BPQ
	 OTs6B5q1p6LzVaxWGUUXV2Un1vkbK2A2XTfjYzG1juzek7rppntAx5QGOjXwFeya+5
	 TY8Ne7krOUbUSIDBKigVlg35t8ea8bIKi08s4fB22/JBr58igIzCAEKN7Z4d+eC4Yi
	 WnSJE+ALV3ZQ5gCk5mugA/0HqP9VNZj2/tDJkLv4k+6Ty0ARUZkN2WhT41qDRkgKw7
	 Dc2KSPcsvOIiYlUBrfr3G92JrcLcAQ3RPNPp+cjEyUh4iexfK/dUntTZ6UXVSWxIil
	 x7XGHth1Xt3gg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9618CD277E2
	for <ddprobe@lists.linux.dev>; Sat, 10 Jan 2026 11:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176804603358.20178.17212890571877380404.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 966824f734ca70fd7c8f33b3ce7069702e3b35bebbf76d210c586125d3b510b0
Date: Sat, 10 Jan 2026 11:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768046033
