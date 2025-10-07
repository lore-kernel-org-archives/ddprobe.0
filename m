Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3380834BA28
	for <ddprobe@lists.linux.dev>; Tue,  7 Oct 2025 01:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759801194; cv=none; b=rnJ4CeFITTnI7H87MiAakZMq2N45mogmG1LjGS1xzAv4NhhoOfCxxfYfN13uYit2SwPckaWoSpParJObp/ch8aRfonrl+FeiwfBHICejMcc51az9+2tF2PzJeJJmQbk0avLvazbc49ISswl1GksY9vTuQf7hHLlOuQAsdxw+KN0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759801194; c=relaxed/simple;
	bh=k7KbuU2dnPqWnrmpkAE0BFrwWxpbiSZoZv+y+Jj4n04=;
	h=To:Subject:From:Message-Id:Date; b=DrKZUxXdc+e0GAB1FuYREqc9/z0ohw3FZESCmus1hMVDD6Ho6SnXdXHunTzU9CAeeYHU/zyyUU4SooBs2Sa1I0VFwwmwZtD6ylP0ZZ98gHgpvwjl91Tdx0ICD6FaP1bC2RNpaFkWfnW/qINpYB8mCoZieSrLn6g8AirMUC5CtfI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bv7X1nE2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bv7X1nE2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3D7FC4CEF5
	for <ddprobe@lists.linux.dev>; Tue,  7 Oct 2025 01:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759801193;
	bh=k7KbuU2dnPqWnrmpkAE0BFrwWxpbiSZoZv+y+Jj4n04=;
	h=To:Subject:From:Date:From;
	b=bv7X1nE2Uh4/9OEjXITUz2KN4bmG2k2/uC9t/y3zAMFk7/3SwWRV5ae2oVDuRJmqa
	 bIbO4Q4mCaIm9bOarX2rF+h379/znLX36FdVyCuCIcWaL1XL3ZWKRsguI+NJKmlrXe
	 +jV6LWxKsAv+jLUc3fzSv4rxFyrZuu+goMvvW/HeqT5L+H54IZ7ATrWZHT0W0rQFrI
	 kmrbKHksZcblI5mvAhUJm77Oa01uWS9gUKQx6AS5qWSOEnQgkZUZD0l6L+sNyPbzku
	 S/lJCA7NNTma6pEqBLdg8yBYHD/nFoH0rxzAc1YGG/lA3q1RCezNCzz0K8+o1Z6+X9
	 jajc7Qcr4G+gg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90BAACAC5B8
	for <ddprobe@lists.linux.dev>; Tue,  7 Oct 2025 01:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175980119358.5160.9531717518213172498.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9d0041bf3e173ba93a8112c3c5c9c66c5c30d68914b07789d2ece50f34777968
Date: Tue, 07 Oct 2025 01:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759801193
