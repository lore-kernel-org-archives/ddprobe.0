Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5492017A939
	for <ddprobe@lists.linux.dev>; Tue, 30 Apr 2024 17:02:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714496543; cv=none; b=NJeD7cklCKr3SxNJxuW7zzczV0VRFzlqS1HnD+mOt4VrwO8ZTR7DHHcB0S+kSI1M96w8420MPQK9FOosa3wHvnyvWGs2C9iyYKWFLOzZZnkXFidfMSSQbPhOtYqoSHgeiaQvKN4vY/O2dcKHMcDD9TJ+5pynSMd9Zs6L6MYwAIY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714496543; c=relaxed/simple;
	bh=/rLdJHgLgql88d3QQKZ+nuo4sirYYI5+lD+YCkSEsvM=;
	h=To:Subject:From:Message-Id:Date; b=P67+T7QK20F2ymsQx8jsCBOc0AIHD54Pt/g7kGgQlM5wSlAVfYfYJhF9AfEyF4YL9PWCPyB03dC/b2E4QOdRI78QgqlJqz6HBvitdnFxDMyAwUq6K3k+d/tq4d8md90OKFmpLqs6PDEwjLekRVq9m7HvrK5mwIDh9NJsqwXb3tE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ePgFyvmY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ePgFyvmY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E6B27C2BBFC
	for <ddprobe@lists.linux.dev>; Tue, 30 Apr 2024 17:02:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714496542;
	bh=/rLdJHgLgql88d3QQKZ+nuo4sirYYI5+lD+YCkSEsvM=;
	h=To:Subject:From:Date:From;
	b=ePgFyvmYo34t5D5wP2FrBOaGaXObyWPrk1QT0s6Gi7EygvULE1Q4ddG55G89dquiM
	 FudkfobGbhlS366pdbxsQT50rRQ7rDNB6qqaU93DF4j+rksOJMKkdluRn4x1H9OXgX
	 D1kUCmu1zZQ1rFAv/2IZnIN71omU5qjBgOIV7iFpSUAzdJNH+pALxgqgbBkZcIEhoN
	 w/joyVn68ZpWEM1pJHZg9K1Yb178uYqJXFr3sbeZDpLibHaR9NafKbdca0n6AgPTqz
	 Ipu1wrG7yKoiBZJPG1UKKiJQAP6zIEJ9n2cHf+ZZIDSwOyUeNlbmYApGYL8ukollts
	 cl3TqlWos9YQQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D2BB9C4345F
	for <ddprobe@lists.linux.dev>; Tue, 30 Apr 2024 17:02:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171449654285.28092.6983269915257342147.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 68329eacebb6db685023a839e1b12cca41c424df0769d57ecadd81d5ae09bea8
Date: Tue, 30 Apr 2024 17:02:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714496542
