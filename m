Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34C4F1A0732
	for <ddprobe@lists.linux.dev>; Tue, 10 Dec 2024 16:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733848554; cv=none; b=PWvU7AXSZQCNc1dHXihKfbVgjuhRIz4CxP/t8spEUOnwgszUbLsKku7dOjI/EGnIWP2giz4zyY/TscmjPVxBAYRV6Z44q1kwoT8bRPsCH6DwOXK/liQw/cNeazRIBT6vKJRpGpimfYcSJvvIWx8fnib4v4QeA0OeubmRtimspR4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733848554; c=relaxed/simple;
	bh=A7pARKQ02y/0SpRXVYVcjSwHJaP0eMP0Oxcbzv1yEEk=;
	h=To:Subject:From:Message-Id:Date; b=SkeXrW//szWuK+yCDjsfSR1uiZTvf8ddKV7Dv0vGtc0Y0nzZxtWJZlqJ4oELR+kv+Y+iXKMPT0eH3S5lsQur5D8keSIYV7dJ6F2+V5lhRcZAJLclrEo2WiVUxG6ofJRiFJKvjs5jBV8q34xuNPYPZjoRTgD5YSFptWBuipE1lKo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GVE374bq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GVE374bq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C3F8CC4CED6
	for <ddprobe@lists.linux.dev>; Tue, 10 Dec 2024 16:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733848553;
	bh=A7pARKQ02y/0SpRXVYVcjSwHJaP0eMP0Oxcbzv1yEEk=;
	h=To:Subject:From:Date:From;
	b=GVE374bqYIAdlXuXNhcqadW6BavkVOoag5M2GoPI8l0z2bEjbolPIBkZn+WkHKy+g
	 oLF4Ftq7ybEI59aEtwpUdb9lRWFJ3Z22JtXKP+n2dg2b0P8mkqSZnJOwcG6PYt0GKY
	 KG3hKqGo1L37rwj0OvnICawxZAaCWZA7rA3wtzfeEpvdk955UK/v6O2YFC8TSvLnYx
	 /fhXgwYZy4+KaHdgdSvLa3UT3XKP0ghTw+aq5uEg1wbZTBGYbEZuxNN/xqZ5EFFmuV
	 ei0fJtRAHi8SQ3iAwGYaPSxUb87nCRTdAgNx3AGiItuF8QU7EA1l5gTqPbmbyAIr+K
	 g2qthy01ktWUQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B19D7E7717F
	for <ddprobe@lists.linux.dev>; Tue, 10 Dec 2024 16:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173384855371.23998.17196844534897470590.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 155a822ec0a44b2f93cdba623b6dbd571337d5209eee8b198af4af881f335a57
Date: Tue, 10 Dec 2024 16:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733848553
