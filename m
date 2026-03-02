Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0EE2B78F4F
	for <ddprobe@lists.linux.dev>; Mon,  2 Mar 2026 04:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772426094; cv=none; b=qcZMw9w70w9/lPkPSbJjnf/LkYhicZmCbECMunIJ8Ew0CSMePUdD4Q2nKwOLzAGbOOkgJ4CpjxAqFbPWekRWI8o+ktmRnJKOhKVgvZ8ObwnEFrkJ5iuxQqx2wG8JuwKfRfuc2AvFxL45HldB5ZFnLvyvQDeb2mN3rNJV0txj/vs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772426094; c=relaxed/simple;
	bh=Ch4rtgQG36jpAc7snGojs9YigA2AOgZhzLFlYiCXziw=;
	h=To:Subject:From:Message-Id:Date; b=O7+o17+XXn1bNapdwXPnFn+BQh+rD3BeqKBwZ7GIJdRtaUgMsiEaI0Q8mX6NV8oFF+gV7RShQ66Z3lWZHMM07iSRx6eG54dUHONod1eIzraGKwdXG76q3+cwCW5AVjXpVkIYB5vzgH3gASVPym4uBpRuKyy5CJKGoPu/ZHE4kaw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=n3UvppTd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="n3UvppTd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC12AC19423
	for <ddprobe@lists.linux.dev>; Mon,  2 Mar 2026 04:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772426093;
	bh=Ch4rtgQG36jpAc7snGojs9YigA2AOgZhzLFlYiCXziw=;
	h=To:Subject:From:Date:From;
	b=n3UvppTd5weagaUMFGbk7BHHOeVw2mmPXI+5kdCyiWubNnTihE3ecmnJv2NKQ6R84
	 APjhKdlm8LVJ5zk4x5Xvz9Hywmb8QhCG3wS8jYSFpU+Gw9yGPCk+2AqxG8+6zHoUmP
	 u8iCHDKbVmWlhENX+pfpbdWzV2Ozk2B6oKTQJ9GwGlIjHZvSBgXIEiXOQcYs0svF5m
	 9mm2WGzw6WfjOAIwXbw9nIfH34zRo6CLxAaVvN/dZAq7iY+IloocUd6mz5qyQmwpAq
	 jHMhDipFSRrE03LEfPbI6XNLvaCKsaQkBJLuAjY4OmGCRlXFvrVhib/OJs8gnHYXmi
	 Lq8revDQD6xsg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92EEFD58E47
	for <ddprobe@lists.linux.dev>; Mon,  2 Mar 2026 04:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177242609359.11611.11058557364829871633.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cf6101f4d63fb597e7466ffa9c5be1256c1b8fb871657e6cca8b9f5433e16a89
Date: Mon, 02 Mar 2026 04:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772426093
