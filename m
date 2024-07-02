Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5103AEDE
	for <ddprobe@lists.linux.dev>; Tue,  2 Jul 2024 00:45:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719881123; cv=none; b=dnpdLDfhpedjNVMpmGQf2ns663KzTFJ12nLDSx1NkKW+cSFu4WqeyS9Clk2tQc2PR+Q9IRx561yEGp9wWKjjLq5HRRRDbGZN964NEtpEFGITkD37N9QfP7VM9UWI1D4aC8HXlTKAqZJGgk0yOsIytZMask69ZdQFfpdNRwagiLQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719881123; c=relaxed/simple;
	bh=/bJk8WLq4p33qYGOiIv1Mp0q6Yc+TLHi+v/TTEmQIZg=;
	h=To:Subject:From:Message-Id:Date; b=kEAbTno+MoV26u4R+2AJL76u2sqWDWlco1v1GToT1na4v52bKKx0E6HL8nLH9zZDmzzNNz1PIcDVfSVnmZ18Q2R8lTOs+oncVMU53MMt9pZISmLJ08vIZOp+vQkXynwobcrM6aDiRwJlNhqbcgl1KQCCVdpeVZgNYbnUcUig8Jw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ePIVah47; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ePIVah47"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB1E3C116B1
	for <ddprobe@lists.linux.dev>; Tue,  2 Jul 2024 00:45:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719881122;
	bh=/bJk8WLq4p33qYGOiIv1Mp0q6Yc+TLHi+v/TTEmQIZg=;
	h=To:Subject:From:Date:From;
	b=ePIVah47XJR1SIp/T2Bnl2nIJGOpIdv2uEU2H/VeObQxr05I4mr/O1sqKfmxNlH9p
	 zIcAu5FyKq391YlgO3tcUYb5Gn6u/QJcCO5wwU6d0GKEwpH5g1eUc29TBIHaHfNa85
	 lyGkzRJyTYBnFJfo96RK70rhMjkl3F71+tGhYpg9FvMDd2IF3iibcq9IxLlZ49fi1l
	 2sZ9aBLxjnLb0p2nlrGXzmzf1Y5jz6MG2F7sGccvqtk2LvoLJmQo3EmVoh+o7kJnEB
	 58BMzktIA/rIOdjgS21a7NZ1zeQ0dlqnEfrOMYlZdfRN2u3cj00GBRtmJbsytUWqR7
	 lMQzZXahJDdhA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C405DC2BD09
	for <ddprobe@lists.linux.dev>; Tue,  2 Jul 2024 00:45:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171988112278.26546.493991596194602976.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8b2f38eec6058bfe9299221b0621949a4e360abd068b0f28baa4d4addd67ff90
Date: Tue, 02 Jul 2024 00:45:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719881122
