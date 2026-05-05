Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DA4A1402B8D
	for <ddprobe@lists.linux.dev>; Tue,  5 May 2026 10:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777977453; cv=none; b=EwFPAud9pa6hox5neuNtbQD0SObF0q7kTID1nfhQkODKGqjfB8LB1FiZ6n1/QyV0nEQLkGTzmzwexnFs020UiUAjwpJpP3lgUl/Q0lIby1T82hofWc/3iqQdu4rUoyuxUbml0JI3NO1ACCGs5xEZukyvQRPzLs9Xo62dcYWoONE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777977453; c=relaxed/simple;
	bh=ui0HwsoW0kZIAB9FBKWE+KJwBjay8/PEdXalEVgGzNk=;
	h=To:Subject:From:Message-Id:Date; b=baLji3VpMZSwGwPRy04l4wSZtdLlFfbJGyNBQ7h293mjYRjwXdSowrtEz0UAGtTVc5A48Z5/uqiSO/N5FKdX+PCvKJodjvU6qTadOafxR6Kvukl8pXZyipQLOxO4zjLbBDOGtlYTgw4gvvBWls/p3szdTNTfyYHVrs0OneV7ZPg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YexONAw1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YexONAw1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8B6CC2BCB4
	for <ddprobe@lists.linux.dev>; Tue,  5 May 2026 10:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777977453;
	bh=ui0HwsoW0kZIAB9FBKWE+KJwBjay8/PEdXalEVgGzNk=;
	h=To:Subject:From:Date:From;
	b=YexONAw1+1GIQ60nFynd2ZzIjhqwghqQEVQFqGRkTZcgdWmmCIH+OagWm1+txBTNc
	 KNzmbhQOq7mXyaZeTROOAdLgVt2GbA2TmRErvOhgL5C+SNWklgjUSE85MIoWSeTURs
	 9/YE+g07QqDSXg2BXd1iyQpsRXp9sMRX8D4H1fURctbg6hfc62GeCDBCMBAXihZHLp
	 6W0Wpm7aT+JkKpaMUOv8ezJQtd7UdCJwAuVmo53Ng5LCT3eRrU7EyPJ0yFsoCtXXEd
	 8mmZr4+mBCRvJ/uvKSDt/HSRO8aHyyzBW0oNv6wpSlLGAsi+R0jfQjw3Aj7Zau0HEe
	 fM/3znH39JLtw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A97BDCD342F
	for <ddprobe@lists.linux.dev>; Tue,  5 May 2026 10:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177797745368.8408.7936847020619405592.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9cea54cc77190d5b9b281907bce8cf51a14da6bba7dc27da26a5cf6c13e29970
Date: Tue, 05 May 2026 10:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777977453
