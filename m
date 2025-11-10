Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3526F336EEE
	for <ddprobe@lists.linux.dev>; Mon, 10 Nov 2025 19:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762802994; cv=none; b=nJLTqZWyObDCEAhM73fUmKflzmXsi9yDEITHNufwB70oDbS2qCB/jRgEjzp02+BigsPpen3CxVnbHJwJaOvZFqCMwMZJ6Xkd6llLrQyvR3HC6EzW5Teu7AIC++sQY1cK/mliSX+JlejdQI1fYtS4iymziUc7n0duqo2YKKbYLwo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762802994; c=relaxed/simple;
	bh=WrAh5TaMF201hK2jWWAQm6eYtWNLi+fPYXO3ElNCVU4=;
	h=To:Subject:From:Message-Id:Date; b=q+fxxtPAssRybPBP4YljZcS1MkRlPa22wCh3ShQ3s/XTPZaA53jvymi7PiuBg46y9ji3xS/z7wpAI30mlb7+JCJ5tUt+FFA9LtAfVKVi+wk7ymMzK8QuI1ZAoTx4V+BQn5O+wU5z0cb1wxfHN96U9FD2xHis8rJt0wUNTyeQs78=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DaSGCAsM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DaSGCAsM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B64D4C4CEF5
	for <ddprobe@lists.linux.dev>; Mon, 10 Nov 2025 19:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762802993;
	bh=WrAh5TaMF201hK2jWWAQm6eYtWNLi+fPYXO3ElNCVU4=;
	h=To:Subject:From:Date:From;
	b=DaSGCAsMFv64r73HC+uK9WrCWUV1+pX1IjVQmYI3Sy4RNwCp1zio59Z2HbjfWD6sE
	 9ZvR7kkA49gO5353OasKcIVh5WbL9Opo6g3yXVCZ6qN73lUpKHRT6FiYXMnOCtwjpF
	 tYrF35urG7/Ho7z5a+oYVxsMD//EXj/0A8e1VDxLP2W+xXiyzJf5ch2xDhf1S2+afF
	 rHrhfveX7R9ktxYdDRRPECnyVRCn60d4uGqmot9PqkexLWVaxxjfvqOxw08taRQ4ef
	 8MOGbBZJAxzkhnccdcar7RXaq3cMfhXxYpvtb3B/K+1q0Dg+4EIP/V7zVuDsgYHcX+
	 2zvXVuwQ9mfNg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95803CCFA13
	for <ddprobe@lists.linux.dev>; Mon, 10 Nov 2025 19:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176280299358.13441.3811042620158276329.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 65a80bce64c009d39bfeacf5733382e5c42812954ad27253b9efd243e8a4be77
Date: Mon, 10 Nov 2025 19:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762802993
