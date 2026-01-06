Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D1F4C326D45
	for <ddprobe@lists.linux.dev>; Tue,  6 Jan 2026 11:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767699233; cv=none; b=lQyOY03WlA+ryvCd93dZniKjzmcDwyOgi0IYedGY+4LiH1N63KsBlJCf3MjG+PqxbcHqtX3VVkRfhB6vsDczQbieOrSoU4RpoQR7jOeRibCo1l5tAAlVjtFoZllAe4+4/O+4XowIcNHs8VwiSqzKPRA28gEuVgp5vLlkYtBVbf8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767699233; c=relaxed/simple;
	bh=JqNmgyePU/Q2eSJGLMVrxnL/XTl1X56HcUWzy4W0KRc=;
	h=To:Subject:From:Message-Id:Date; b=W3062377uRm1jM4eeEvLxFFqS4yt8I488bDB777G+60fsvYIbqZMNRoVjwyV0GuYpdVJhkXLAlECJ54f+CiFHEukicnuQSh6sQJ7NTWUktN1PrDkNWRE9eRk9OBPcNC9sMOSOC05w8oc1xg6N9WtAoVlU/lZ5rUYHH8Ymsq3nxY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RAk83/hd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RAk83/hd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F9F8C116C6
	for <ddprobe@lists.linux.dev>; Tue,  6 Jan 2026 11:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767699233;
	bh=JqNmgyePU/Q2eSJGLMVrxnL/XTl1X56HcUWzy4W0KRc=;
	h=To:Subject:From:Date:From;
	b=RAk83/hd3t4/du91BjMP6DG10WlyWmQKAOkTdv+MxBbDAWt8PUb0km0ldUbB7Q2r6
	 Bc+HGyv0liyntf5M0eYOR0VZsx4r3xyqWbBQMtqKIIZ3fTrDmoLbhFkvyihfzOiNky
	 RZrGyfQ8Lg3NJ3CDAj40s4RGpTFQq+n6ZMZKmsyrafu3VN5b3cRcOnoiVgss0fAO6K
	 GLYhTT7IzKjd/RrQVsNBYmdvvQ/VfvW1XjtOeYVaT2kE3sU2bJXKPHxiFp40ki8CQD
	 dWDUpbjFS+MbklZhhUYIMHZx/Utrnvfq3Sdfavm8LztSreZbMwUIOG59ur9MmDJgAI
	 8FMo6ERvBtqkA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F061C47BEA
	for <ddprobe@lists.linux.dev>; Tue,  6 Jan 2026 11:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176769923357.14002.12230803088503459690.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fd8425b005c0d957d18345b134c915b225d1bda7927ea609d256f8eb89839484
Date: Tue, 06 Jan 2026 11:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767699233
