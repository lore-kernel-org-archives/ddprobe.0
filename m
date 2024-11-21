Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D2C9487A7
	for <ddprobe@lists.linux.dev>; Thu, 21 Nov 2024 16:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732206954; cv=none; b=Z31m2NaC6pXlk6dhcu4jM4phbKJNCMSeL6dYz9h9qJNbRAwv5J89Xs1JColdAOEJhcDnwoTgFzqwj5LidvFKO+gbtldkbO8VXEszMxU38b3/ZibKB3f9M/vUPmes2rJd1vO2C8jbsMdO+RR0gje8le5hVu42tMHjp+5v7uFnWvw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732206954; c=relaxed/simple;
	bh=5AdTwShXIIxQaP2owvesBJdmDpEcbpVyK7gUpY/Kqc8=;
	h=To:Subject:From:Message-Id:Date; b=uZkCtKW2xiqO5EvmPdnZmN27ZOL4XHeO1c+BQnlUjRUOVO4UHf5boIUuVuW/NtnqZSgZNEh88sZa0VkDCZ4lTJCQGYiVEZAU1IOoJRe618MQWQqzvCOEbTnCaMp7Hkc590A521DjX3XRfgQGyre8Si2xV3k6G81fL7bB/rUdBQI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=c5seS8bT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="c5seS8bT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACBD8C4CECC
	for <ddprobe@lists.linux.dev>; Thu, 21 Nov 2024 16:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732206953;
	bh=5AdTwShXIIxQaP2owvesBJdmDpEcbpVyK7gUpY/Kqc8=;
	h=To:Subject:From:Date:From;
	b=c5seS8bThGauCWgq5FO1ZSojqMo3eShTONpp5/yWjNDHe6uHU08JUe6UbYqjoMEY3
	 DXlEQVAJICBRi2hmwoqY9i8+bfiCYCsJJuW+B+2kOGePbxdqKFq/2alHcvMXtD5gld
	 6Lqew8xm7MGFBcd6Is2jeKSHhvgn6PbGXCnBG6PxPQQ1kbAaH4rKAWMu2au0muiE1y
	 6PwtPry9Xl3PI8usI/jg7O+7JlMU91JI8uk+83yQmiHEuioF6wDrnqwCFmLG+F3nN8
	 WOj79Hb9UztBa5HPbhMsvvkPFAWpvNIeE75ZqT0PcWg+QlDxh/lyhKYOmDhl/GUiyT
	 Ii0Y0eX6FEA3g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E0B3D78793
	for <ddprobe@lists.linux.dev>; Thu, 21 Nov 2024 16:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173220695363.30259.4464455736147673464.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 34316405e70186d5dab59993a13768a7bb5c56e6d0b0d85d1bd14953e6c180d4
Date: Thu, 21 Nov 2024 16:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732206953
