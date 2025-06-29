Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D9221D5CDE
	for <ddprobe@lists.linux.dev>; Sun, 29 Jun 2025 11:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751197194; cv=none; b=ng/XbGrZT+Cq2sfrgo+ZiFiwMntKa/BMssCCureZXY+6QJbYWHMQFBcY47FLZDVL5fUtCXH6QkdDaJlEA3t7YWW5YaEbhmljeGeUpHs9V5NCX7I8YaJqHI7HoGUj9m/8g8MOagdjxA2AP6CjZNjVr2iBkGLgAZqSMnOQ2i5z+dg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751197194; c=relaxed/simple;
	bh=Ja+BXUB07mb2dDQjjd6P1dxkGpKMdEcVjXsphp49tbw=;
	h=To:Subject:From:Message-Id:Date; b=pxeI3wfjD56JxrNzl91DSWDFgRaMXu4eGpJUpbj0Ha/4OV2gyPV+8x0E53HZMQ2w3rc7T+mpcmJX5PJmqfRlkQFdSY28XIZpB8aCdyHVccwBBTFvjTAEPP00Ef0AFJLv+5DlldY/LTP0V692lQ/YripGQuMzVxvZt8b4OG8hdao=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=s9f2/+az; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="s9f2/+az"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FEF1C4CEF1
	for <ddprobe@lists.linux.dev>; Sun, 29 Jun 2025 11:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751197193;
	bh=Ja+BXUB07mb2dDQjjd6P1dxkGpKMdEcVjXsphp49tbw=;
	h=To:Subject:From:Date:From;
	b=s9f2/+az0gSE8FHpCib5WNdxxnfCSwKe7zyKAlSDuTYZsK+mj+hB2Zi2XcMjcB8Jt
	 0Pxqvc/Sa0AtYtsVWMpsMuqNHmzJ5p+hDUKCT8Ib2D1ECvfSm4FqFaNyewY0s/O9QE
	 PPjN3EV4uPbDJz8mmEyQRAODlmhVo8UrSMQm0VwlNgvuJPhP73tuK7zwCeF2GsxlRo
	 3MgBgdDDGzXI13tA+2KKIxsIIb4mPmRkbbYs8/skWj88PtxtpcGsK0m9PeYTINKios
	 WJN7wpuYnyaSzQWL0yD1UTjCx9cr/aCHlQ/zd56EUo1N9r6h9HgWtIU7o7Dk+Y9B8Q
	 KXS4TJJ9QfRcA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E80BC7EE39
	for <ddprobe@lists.linux.dev>; Sun, 29 Jun 2025 11:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175119719357.12827.9661753694401978173.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8b0b934d6c231110a61f2f6bedc456224cf72cc2eed49c774bed729148512ff4
Date: Sun, 29 Jun 2025 11:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751197193
