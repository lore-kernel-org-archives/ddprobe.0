Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 453C631AABC
	for <ddprobe@lists.linux.dev>; Thu,  9 Jul 2026 22:58:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783637914; cv=none; b=saMvii+vTqAZEZ8xDJNAgA0PZRCpxx7x4r4caJqTjRQQL3aGAtURhqbvZsWR/iyAqZ1qpWErz0pBX9UpN0E99AvaB8KQlAf8kYu/FDs15tQCfSqrF5lofFO/XyDH7Nl1fbpTdhiXTp9Wgk2Ni4WCUmZrWip6n7uNWx7oY7l+6RQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783637914; c=relaxed/simple;
	bh=nC4sCpUjdKmG4h4aU1wbtVx25//P2VExajcWbaoud44=;
	h=To:Subject:From:Message-Id:Date; b=CAPeuSHw2kHRMXMlDaeuwFEFkn/mynMZTCfV1KlLC2e5+hfQDrSHeE0906k3MtA+9D4H1ldCr5NGgKnbTYwTmZkCX/I+QJGk7Ljhnqs+s/rxLqIlK+Z0XivnbmNzquCgHxzAox45FyrZPhYsLH5adzQSVan3wZp4d8jORqDXGzU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VxtKqiTI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VxtKqiTI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E9D1CC2BCB7
	for <ddprobe@lists.linux.dev>; Thu,  9 Jul 2026 22:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783637913;
	bh=nC4sCpUjdKmG4h4aU1wbtVx25//P2VExajcWbaoud44=;
	h=To:Subject:From:Date:From;
	b=VxtKqiTIqWVy0EZcTKw3+5X9AdsBamR3oPjR6XJ7WtWUgES8uF5DmVrFd7wq71+w1
	 SwnLZH+2TPTUy3Io5VaKMuMd8jQh7PnVIWcmzbEIy/sL7/jLz7Lh4WU7ZqMCV4RTJK
	 qRYkcG9WB22qGqUugzHWGLrVpIOzZjWfQEs5N0g2OOUF/trEqRiCZBLQzLClEYfdfx
	 TX05oG9Lv8IraXNaBQ4VL7Tiv6fgENprS6gyE19nLr6avbYdiFDKcj/ze+8ZjScD2R
	 9OWXbSgLgvKeGWpgZYiSxyAM6F26X4HGlfjAB0ncSdoSMNkmzyzViJSn4K/v55itQZ
	 cMKr3o/JD52VA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABC70C43458
	for <ddprobe@lists.linux.dev>; Thu,  9 Jul 2026 22:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178363791368.14397.17542918014059561794.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0e0bd8fdde3a7e6228760e584e86e9a3b7cb407455bb6c4aadb38aa387b63c0d
Date: Thu, 09 Jul 2026 22:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783637913
