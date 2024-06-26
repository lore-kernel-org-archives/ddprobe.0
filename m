Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 740851D699
	for <ddprobe@lists.linux.dev>; Wed, 26 Jun 2024 02:23:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719368603; cv=none; b=SJQVRQCKcrPeZOPRonexH0GgeDteeeZRgWv1AZwjnDdO7xA4jqNaqgJy6h2AXQvAMkl6sbb+pcgwaegFPyKXCCJO2IZEWOmcLiOvwntc1eO+/suIBA2lq8OqQ5RZBsHJt/WMLPGR8dwxChHESoBB59nISPGYbFX7PJdwRncw8PU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719368603; c=relaxed/simple;
	bh=8Pq02LTzY7BDuClTSTifsxztxpYgow9C/x86qLgrRIk=;
	h=To:Subject:From:Message-Id:Date; b=prrLt6pefO2DCf5VbswZ7yVdEaOUudhkhi+ikdkwXSwkx+IcE3UatXu4kiJj5rlzm3H8ae26pEF+BEcmyTJKHGK15i2qHZi+cZEeQ3A4G9VyBuD5oRKLcyD2WT82eSawr7P87c3mtPbLR51By9ZvkXdu86lCymVPAMimUGz8jJ0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qOBJt0Z+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qOBJt0Z+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0E53C32786
	for <ddprobe@lists.linux.dev>; Wed, 26 Jun 2024 02:23:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719368602;
	bh=8Pq02LTzY7BDuClTSTifsxztxpYgow9C/x86qLgrRIk=;
	h=To:Subject:From:Date:From;
	b=qOBJt0Z+LkS6h7aD7UFfUlIV3G7kcIyTzGNyC6YRFlYYC0RI+E2a+wQIJ7FbH7RRC
	 YlRh+0n6ZgMri4KjCsKIdh1YtD6rmB9XTzWcuz61rDvzK9ElKllrC0yf1jo2K3XqGQ
	 uhWpaHsp1NpwSsS2gtqVLgArBkhWW33iKc6K1lqZyilqZ5s25pKET7XECSHaemL5Rd
	 se8lqVDJaWMZ/tY7DkqCDDxJEFYnIk5/80ipYKXd6NObmGS1ECWpcPzT2SN9CFqSFS
	 ZGpb0CX7hMb3mOzkcaN6+to3wQqkFbaHSi9ce7I+uNwPqR0uuJwh6BUeFHWgNdniwC
	 GKbWwWrtWSLog==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE3D2C2BBCA
	for <ddprobe@lists.linux.dev>; Wed, 26 Jun 2024 02:23:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171936860276.28366.9934844537256875690.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 64b4c7ba29f7d343315d467662634a36d098835ed94537ae4e31fee9929d5438
Date: Wed, 26 Jun 2024 02:23:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719368602
