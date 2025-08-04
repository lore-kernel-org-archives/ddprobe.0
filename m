Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 286B2230BD2
	for <ddprobe@lists.linux.dev>; Mon,  4 Aug 2025 09:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754299794; cv=none; b=Cq+msSN1s4PjpPBbsq8pBs/3McWr0TaRHsWdtvBcBVy6PzajvIExLtAPN6AYl3fYXIgZqTjoQNrDy3fQ+AXSdXEtnhzXuAOnWwf0GD2cwkOVfRPvE+1unERH9XEpTw/RAD/fhAoC4YmnaE85ZUJsnj6COzu8AaZ8g/0bFCnUgIc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754299794; c=relaxed/simple;
	bh=uer1fNP4PiMvJi5W6/xA/8ZU7cz8Kbtzyq+/nfUoTCo=;
	h=To:Subject:From:Message-Id:Date; b=kCrfBsI26vkIVEab7lNns7nGmL3TNQeWaGUMN6MfFe+7YGENM8vdkSH5SE3So1wfkax8XaXHvKrVZDP+XSnLVCbld8t0gj1Tc0xlmpTuk5qMF/O+wZbGirwqwKmWZLRnb/Q7tDrzNg7gCVMkKYu5t9IKvggXsRGCp60I1Ps0MT0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mqJatrR9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mqJatrR9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A230DC4CEE7
	for <ddprobe@lists.linux.dev>; Mon,  4 Aug 2025 09:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754299793;
	bh=uer1fNP4PiMvJi5W6/xA/8ZU7cz8Kbtzyq+/nfUoTCo=;
	h=To:Subject:From:Date:From;
	b=mqJatrR946b549P5P1EKYAeUUyTNltDo4CV0JCIZR84dglB6O4UiQvi9OiZRxp2OX
	 v2JRy/m+K3/6w8tdvrtlAtNu71DgBN+GTW31e3KtrcomwYhY6vscwXdq3DL52u3MaF
	 fgBtnA9KfDLJjVl3yWGsj0TMLxMxFwCA77xZvpYvKYlIy0ylgGn44e+5vAhNvXhqrf
	 cb+7CLeo2sKWk4XZjb8zrUddGmJJDJ6Yj3v36pVeAUcPB3+/AcoWr139nhhQYNxS0h
	 1ghOKsYijuQYrJVFwZjOa8ewAEfx4GNT1X4fcQ3VkWbBu7+sjzfAdamcRMmWxapuVk
	 gin6gK5552MnQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 904FFC87FDA
	for <ddprobe@lists.linux.dev>; Mon,  4 Aug 2025 09:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175429979358.10097.12594126886244820321.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6e2e35e0625d465dc1c0986529a9ccb55b66eeda68eac16cd9e34951a0ea77d4
Date: Mon, 04 Aug 2025 09:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754299793
