Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3983F8632B
	for <ddprobe@lists.linux.dev>; Fri, 14 Mar 2025 07:58:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741939134; cv=none; b=OqLkdBlaTwcZb2G3roO1fKfYjr67prsKJJ1VG+55hQlX5k67B0NowFGMOmTyPjjcYne/DHOTiAXxIupftQYj/9RWMvA76wEdKbUmQUKvCrxhy0pH0tFsVxqCqLqG5UTmaZ4yDvIQtjSy8iKJMUiV5GjRBblJothHqI0kcETGdoI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741939134; c=relaxed/simple;
	bh=a1ionQYb1k7toe9BbOY8/VEyBzQUGElkugLPQQ2Eirw=;
	h=To:Subject:From:Message-Id:Date; b=J49jEqnJxYfH49soKtEqsQ0KXsElZtHVFjS195xfYKS+uB3+N9+3XMldGRV8ho3akC17Ek8GVmXJMnxYtpZYhf21zEbJmPXHPDowqjxQ37CTLjZPRNOfaueOfLQyJd62GsAhfc1ffNGzfar9IyA4kkx0H29vU3+nBk5DnK4h4cU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eXDlOIwd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eXDlOIwd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8CABC4CEE5
	for <ddprobe@lists.linux.dev>; Fri, 14 Mar 2025 07:58:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741939133;
	bh=a1ionQYb1k7toe9BbOY8/VEyBzQUGElkugLPQQ2Eirw=;
	h=To:Subject:From:Date:From;
	b=eXDlOIwdrdJTSO8ratrZplMNpScnfaAYX3PGlJBvlEFWotSuY5iBNmxw4ZPgAbgd2
	 RhU+ktKoXvx3NQ5vvS0N+8Y+B0U9+/Hdm9NoNhXzVv/3B9Hh12aT5dBAs0pd15vdoA
	 ExfZMtuRnq0F4I4d60tEOO0S72hO4L3QfvrKiFw8QNS2Ksz9wi4uNLcXAqKrRqbtgZ
	 KpjrNk61s/odjmMHJe6hMDC9MQ8j4Nk7G3c/UR9z8VPAdYGTX0mjO40VgxhaXFoM+D
	 7shTS97QreB6J5C/mE1RxVrFSlWMGO9PGsZi+Z+7k7gutkLJPSpv/6OfQdY0zBO3xG
	 W1fZBX/40/Txg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 941FCC28B2F
	for <ddprobe@lists.linux.dev>; Fri, 14 Mar 2025 07:58:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174193913359.22116.9221321787801250850.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c8382715f917422026fe34768a2b82fb4afe62cae8e1165ac6810bafe6d46446
Date: Fri, 14 Mar 2025 07:58:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741939133
