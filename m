Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D3382D7395
	for <ddprobe@lists.linux.dev>; Wed, 10 Sep 2025 21:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757538594; cv=none; b=gZfdzLOZZYi28RZ3RXyQer5VTznYGJVwEo/l6qaWYuWt8CaXYOgwRGVbb6we/Tl9u2dLH9+kLcYNZ4NDlHqYJ94btZIEbCMYd+IjWNz3zlJkq3rIZTDsv833HTn/ajSv0ozz3Lm7oXodb28tmLo+nlBtkPK4O/Yh7cp4kMTQnsk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757538594; c=relaxed/simple;
	bh=RbTQ+QJ0ZLraDZxIqdYcAnpkNf2iNMwkooqTUZLKqKo=;
	h=To:Subject:From:Message-Id:Date; b=JD50apDGSdU3Wi/gvrYM4MKwIdQWIfh4q8xm/diPlmpX6rucPhHOmIHALLhIlWoFDFhURshf+PrshkU8pC9q1egZe/iFP9RPQzoEDYIqL5UFBpy7HkdA+0umWiY0L+QuQ1kUKHmuVp7EjLRb7gNr+UXaN4IND3MyIFUbooI/XEI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Y9ElUSCP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Y9ElUSCP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9ACAC4CEF8
	for <ddprobe@lists.linux.dev>; Wed, 10 Sep 2025 21:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757538593;
	bh=RbTQ+QJ0ZLraDZxIqdYcAnpkNf2iNMwkooqTUZLKqKo=;
	h=To:Subject:From:Date:From;
	b=Y9ElUSCPjBAn3TfCV9p2ZfKNJ3+74Fut/WoVa8rhnv0JHmE2JKYKwWiXP1pqdPGGP
	 oKhK4+D5qOnCgOWMW6U+KIgZuPEeEANkRmdRVSRvq+P1s144T0xkommPjaOJtJstki
	 4eUL9qujUWdkavkzwqTfmdgjFPTTHIY8vY1BrjzyiyC8R9yvo4I3eb38NmMKYgicRG
	 pDIgdKAUpZh9oDDdEtuOET0hudi+5Vk40TzIMO8y8I4L8RvAbcrq312WM97LXYv4RX
	 nGNzrRHBy9s8B4dBLo+EtLAekhMxGW29ysjWAdsW1/jQngIuPx2xq7vy5uAZ6nkPID
	 XmBrvSc5m7wQw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 972AACA0FED
	for <ddprobe@lists.linux.dev>; Wed, 10 Sep 2025 21:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175753859360.28947.6392499315139872124.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5d8af99a3d1b66ed3578a7b0f625d04cb24faba5e07b2090afbd909feef776b2
Date: Wed, 10 Sep 2025 21:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757538593
