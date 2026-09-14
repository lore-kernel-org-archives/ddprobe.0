Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6EAEC38B143
	for <ddprobe@lists.linux.dev>; Mon, 14 Sep 2026 08:50:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789375835; cv=none; b=Weupwu9rgFBwWnQzx//UUEeMNZOMhc+u5iAVNqPbpRQuUaWT5yV0FxduzehNlbfPrgd6JVKuB+EkHw18TWH/G01H5Unno2RZxhm7vMPTYW8uGINocFM77DnnR3R4JE1A1jndh6/S9PRLuaDSmvRwchTjL0dWBr3vq/ulzWE+SHM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789375835; c=relaxed/simple;
	bh=qYm0I5eJEQZxSg+biV0B7wHznLtXmP9gC+bOa5LUdpM=;
	h=To:Subject:From:Message-Id:Date; b=mt3EDZ/1nuAckyko0EHYXVO/QHTtEaJsE8AqITzZIUrubi7wJ6Vi4Rv8TM91mpmJT+gdkGeOUx/DvHgRDIzzdtpkbPWUpCwEbuYMI18QCHGjlx8NHvY37acq2jBTxdocbsej0ZrnencMo3DRaFvbdCAH8Gx/xC/4/3zy94EcWBI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pBu0ScnZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pBu0ScnZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CBCD3C2BCFA
	for <ddprobe@lists.linux.dev>; Mon, 14 Sep 2026 08:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789375833;
	bh=qYm0I5eJEQZxSg+biV0B7wHznLtXmP9gC+bOa5LUdpM=;
	h=To:Subject:From:Date:From;
	b=pBu0ScnZ2lEZBM8FZ1+tJD7W82KAFHL2MhT0G3Cx5vpFZnMiEi1PQ6PZ3/IR/II9U
	 FRF0l7ojS7Nl2liVXZQSX43+4tHs8vuaV8x+qvfjsTAsitPSD7w3YfU/i7JYFLRUnk
	 FFUA3RW2l8cT/iOGXZ7jAglI9QBAKbQLYDKfAuMXY0hoegdNp3jjZZJUfrAZ0jnvjx
	 oqCYvQBtbLRrk3Lqp1CxwsEoqfQH+HIl96wiX2IwE7yONwZEDyZ5yfBEtoZjlXFOHY
	 /Qon5Fl2U6BTCeDSno2E5q/rByERq+D5WI/4y/onbuBVpSJXOi9XVCliRZJN0K5K1G
	 9sX2jqthGcdOA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8EA4C88E50
	for <ddprobe@lists.linux.dev>; Mon, 14 Sep 2026 08:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178937583368.8379.11561416632473284726.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: efbd00a55c0bfa2a3d0d80bec81fd98475560c304ff43e8d4274224a8a14a69a
Date: Mon, 14 Sep 2026 08:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789375833
