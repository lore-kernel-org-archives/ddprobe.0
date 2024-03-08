Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 06AF52C848
	for <ddprobe@lists.linux.dev>; Fri,  8 Mar 2024 06:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709878697; cv=none; b=oF3Zz7yrh8YgWvC4v4c5U1GNGBUmHjgstBAUOuK8URarIEqfgJ0NpVwn8PfQuSKOzSH/y6Fr1W7nZYiQRBioS0FcdIo/u9ikZp0ZzPu3422RIT30Las/aAis03ykdZMtt1Kh7O/7qAXAgdPLAzuIHlsZd01nnsgWx/coZXD9dig=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709878697; c=relaxed/simple;
	bh=VBYWrpRDt5c5G+LNYBni1Xt/eyjxifwGs1uwL2ABDAk=;
	h=To:Subject:From:Message-Id:Date; b=rdxXb1vUPoiLE4isg2DZykw1n1aiUzWZFUmAklcexiJtYcOdMI6VM2zNVsJygPKGOLD+6cFQDlLp7L0Bf4LV11hwHwGoO2Cid4oY3NbFEb0UHbGLAblByFuhMXiiW9VqnMhuDnw75sQ1iuXGCAjOzPsqxRxFtzwABSHIheta1eM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KC/XWqjU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KC/XWqjU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 863B4C433F1
	for <ddprobe@lists.linux.dev>; Fri,  8 Mar 2024 06:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1709878696;
	bh=VBYWrpRDt5c5G+LNYBni1Xt/eyjxifwGs1uwL2ABDAk=;
	h=To:Subject:From:Date:From;
	b=KC/XWqjUkUVqkzZIcIO4HobB1WfqOOwy62zbAxFfhSm7vjUlVpY6tN6cA0KrJyitp
	 wl9izRv1OkRwEiW0x9wrRKkiUUZdzYR3K5+SM0rOtpwWcQDlVJsoE/Noux1U7NIeHk
	 kXw08J9Rvib5yy2RuCPNV69GeH3ZqcggY/0HfR/C7kKxZHPQ9Ego4ZFeufPDoKdWgZ
	 LVhRXg2AFZ/Jp36WaOWH5nqxQL/bNSocmqowg6VkZG9nIzRwsqL1xo9AWRiCbyW61E
	 mtfBVWOYBYlbcc6YXyEfwiwNwYXC17PoflPVjgBSrDSEqnIh2cmb94Z2dZPc3eBk4l
	 eXt6Qoi/tLJkg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6471FC54E41
	for <ddprobe@lists.linux.dev>; Fri,  8 Mar 2024 06:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170987869640.6579.13970753150603752222.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b7ff0d50d5c5ef26696226db23b0fc53f7b600dfc46399ace6aed4c9f3e72607
Date: Fri, 08 Mar 2024 06:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1709878696
