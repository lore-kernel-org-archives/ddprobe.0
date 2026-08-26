Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46A45223DC6
	for <ddprobe@lists.linux.dev>; Wed, 26 Aug 2026 13:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787749234; cv=none; b=rVRZqXImYPUtNwKSoqV2/zRUuu/egzwt2HLxmLYdSsGeB+1HVg2h/SvohMLmxJ0YBAIVr+VBffxZL2G/34rQWeMGuAz8xV3X9XHyKeB/seDrCJSaHpRy4q9+l0TDe160M4rfi1GI0+r3Z9mRAiXaM0PlnjeiyobmJtdqPERHq3k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787749234; c=relaxed/simple;
	bh=U7EYYFw8tBISumo1i3OHX1CjUrym8skIujyVecuaLwc=;
	h=To:Subject:From:Message-Id:Date; b=NEK8/42h7q0/YhNpCm22h3q5YjYOzv9+0TR2LAsC5gggJdTmjbLym4ycSP1MYlJ2riJZxPp4Qt+9c/AZmvQSj/4Xn/9WG+3yYhSv/wI2PmEqVOsFAXQ9M57lEEtqUio6j6Xy4ssuHTpJjNAMmnyiozhJuXfs7r5XJ0hsaQFJ6Eg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AzQPIXhk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AzQPIXhk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1427C2BCC7
	for <ddprobe@lists.linux.dev>; Wed, 26 Aug 2026 13:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787749233;
	bh=U7EYYFw8tBISumo1i3OHX1CjUrym8skIujyVecuaLwc=;
	h=To:Subject:From:Date:From;
	b=AzQPIXhkC29R7ruqxgFpF1bv7QQv9JeLWf6acEEpkfnGnEKQEuTXRVc/OwgTvlMGF
	 DyBGdn13WTbiC3wWgO75pIUtwwnV0k1vJUvIlWexzn9QKG7qHjLM9Ndpv/SZvIZOZD
	 QQM5CmPLsCPy4hklBsa8TXOKUwIik/peO+YE6rEhzrssWLwCwuN1YMlxuLvTzgDpON
	 nWsthVBCANlpZk+xNmlyKWOyIIHhq8gO3+nGIdbIFP3vbkjnPsWRqXQToZp9FO/NGX
	 GtnDKuI/kwrJboJKScNvX/3XCngRMU2OYT7/T0LsV8bDgif2kbhE5cl+nWVTWQrbrn
	 35+m+18V/wtrw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A98F2C61DBD
	for <ddprobe@lists.linux.dev>; Wed, 26 Aug 2026 13:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178774923368.18153.1088935434912151457.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 104b2efc259ec0385e060bd2803bb7e920177f771a848b1475b342db134eb096
Date: Wed, 26 Aug 2026 13:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787749233
