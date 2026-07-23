Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43D2E3D301E
	for <ddprobe@lists.linux.dev>; Thu, 23 Jul 2026 07:29:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784791774; cv=none; b=gNf4SsqbwcUY8tJmUM1F7KBXL7gEanmRjK8mQtYYNydfBkvOKKANSFj1Tm8Ts3qR4pGuR9fmos3oYb5lRwyKr52ei7OnoH5BGADtCKnfBKR1usaniPLL0ESFoJrV36lBLQGamgcha0Vm+lhP4wolucb6YGZVXZ+igAVkOoP6d+c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784791774; c=relaxed/simple;
	bh=pExTmflsVwjXXOHJbn4zqgvLDTssGmZpn0YEMNTnFjc=;
	h=To:Subject:From:Message-Id:Date; b=otszuA0z1vi84DRjU/uv7fO6RmiH+UikJHG+KSmYH+gHtQd+VQWqlD32WfQLN61q7TMHwaX6zeWsBRvFFchQ4S/sQfiqfbHOxI4MJGxsFPRj3gLZiwhWpQs28iEPJUzfAeBUJQKeAKriDz8+fVxwCKyzgc4rJ6kbRiHjOQwXZIY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jbaMrIeE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jbaMrIeE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D83C5C2BCB8
	for <ddprobe@lists.linux.dev>; Thu, 23 Jul 2026 07:29:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784791773;
	bh=pExTmflsVwjXXOHJbn4zqgvLDTssGmZpn0YEMNTnFjc=;
	h=To:Subject:From:Date:From;
	b=jbaMrIeE1CjaG0PsMsppWkBW3tdGzP0Ws4apr01iZSfSeShRznpJZgtpztGnwlLIw
	 o2X2zvI891LG4IrciPmSjP7QMOabsa0JxmMhWRZI2OaSMzmKEOYwSuemrr3LZ7uKU6
	 JtGdQoiMih0jkhoUh62XBFBAbF53jujbs1Fe/ig7Yt2KdBOR9iRMfWAaKyZ8obOn/Y
	 wNaE7kvJma8psyPe2D+cNu4eiBlcMcJ6euhz3aSQ6mfOb0S6fshDlajytO2+Ac9xU+
	 GchPkgxOtcPNPWA9rILB6m1jS3bMeHKyvT5joKQqF4kkFnYMy3AjM4peeDc+AkmcFX
	 mBjKlfYSdLeSQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B10BDC44524
	for <ddprobe@lists.linux.dev>; Thu, 23 Jul 2026 07:29:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178479177371.31051.6581069953251550256.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: de404691f71ffd30d66b97a977038e37f16b858e8bc2f2f2002fb206210a6907
Date: Thu, 23 Jul 2026 07:29:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784791773
