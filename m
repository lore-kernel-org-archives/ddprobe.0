Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21C72258A
	for <ddprobe@lists.linux.dev>; Wed, 17 Sep 2025 02:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758075594; cv=none; b=p+gHZBgT8gl4Rf0YSswe1fjx45+kJ2QZby4p0thFJplO+wAlO4UAIu0lUJh1NpBWo7jQhYSvi8ZVmCdPuX4VrwQWqWbi56R68LHqAbCDb0M5MbEN7QsmqfjEIPX1EAxyedLX3tVeNbTHbt+ts5kJ/SEaQtVWz/UkZsalFk6VS2s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758075594; c=relaxed/simple;
	bh=4VKc4gq3XssxNShh10sqHbU/+B/Qt71Ya6Os8gAHzt8=;
	h=To:Subject:From:Message-Id:Date; b=W9vYSqE+JqhG/5VekoILVpXl9CN3018bNrpiJq8bo9knmADgC/ivbRg2XuUfMpjA75GK+TrIWvE9eVB6ayy4suFb7w/W6UHdfz0mpE5L7anA8HvlN9qdq6OFhhi6Ac6aYbRd4HXcJ0MyPvcAqW9H1zwBgaz+cwlvsqUCDNvPWJs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nUl99neY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nUl99neY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A92AEC4CEEB
	for <ddprobe@lists.linux.dev>; Wed, 17 Sep 2025 02:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758075593;
	bh=4VKc4gq3XssxNShh10sqHbU/+B/Qt71Ya6Os8gAHzt8=;
	h=To:Subject:From:Date:From;
	b=nUl99neYIQQF2MQ65s+sPbmueRuEJkDgHTbK8dpuhHEEQV2zBlxodCzudAP1Mj7m4
	 9DvcUi9XS/m7yVubNbgKsZPAA7Hc8rxicLyyxqVWGBrFS1CbUiULGqixQG44BMS7u2
	 xJw5nUPskVbFl/aaXCh5Pn5BALkXL5O+h0Z7mAVz7h9EjyeqddKJGsPSH2+jB4/RRG
	 5v0w1nJ051EGiwAz7PeWRfuXGDihwpgL5q4yZkXFVL6RrqadQsqFuhApesXRFqToOX
	 oLdJIELSMHBKVrTP1hdfYdAl+nKbnvQn2hb0d0mlim+kMgYHplSzUbRB0lBwYaU+ux
	 q63QtzKQ8xNPQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A027CAC592
	for <ddprobe@lists.linux.dev>; Wed, 17 Sep 2025 02:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175807559360.32184.10161566157300195338.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7aeddcfe81003e47fd78a9b893c6774c8ca0b243c1bf54d45fa6dad2b1e5c34a
Date: Wed, 17 Sep 2025 02:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758075593
