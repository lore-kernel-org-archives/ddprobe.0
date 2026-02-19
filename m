Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F1B5B332919
	for <ddprobe@lists.linux.dev>; Thu, 19 Feb 2026 07:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771485294; cv=none; b=VqsScZizCH25QTRyvpu/J+KKB4NeOa8UmqRnYbxOdFL1v9QOtLs5tsTcHEwFUwPYUElgOsws7DxtJk3dBgW19x5oJEMgKMEdPppYN4hWqd6F7S5FpxVKsiQyUYwaaY3PeIClsLlqLrbPWcZMGaKKgu54/yPchacqKipR4ZgaxHQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771485294; c=relaxed/simple;
	bh=YVseuyFI6ktpH916IvcSrM+zWDp5Co7WF9x7fuRknmY=;
	h=To:Subject:From:Message-Id:Date; b=ZUz8V/UM9B+YZWz95zFEMS/5sXppZC0rAH4ngONM6Jwq0PIvNw0qUgxhJtkFGHYQs36qDHNSn1LCJUg7J+FI+LLla4FriIJfmfcxs7pduWAMt2ScYOYSVWdmOSvqY0znQ8Zs/d/iE/VYejJID97xz4kkFJTE3Y2gBZcRxCVVFRI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=I92MZZZb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="I92MZZZb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C3312C4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 19 Feb 2026 07:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771485293;
	bh=YVseuyFI6ktpH916IvcSrM+zWDp5Co7WF9x7fuRknmY=;
	h=To:Subject:From:Date:From;
	b=I92MZZZb/TCp4/SnOI+cWWp0/3HFilgtR001FUkXFdOSBuRxxXEjblnew1mfJ9yj7
	 L7GZxJQRUoM+sQ6FZritFKf9dO6Ry9qUSsYUtqYTBXdN5AXS6i6fzRFs5376lo+zXA
	 Cyy+6oSHmnQrYFnLm+/OTwLzwF6dVM1ePP5zGObvJiuKVpMNDPsQj2vnF5bVyQwOfU
	 kJMyfiEbBpXiuL1fa3Cz3ohXInwoNKU6hPOaCehqgJOJx5iUqQE3348OgOmJWofLiS
	 kKJ79uK0jLmYsH/SNgmMrwpleZy4ecEjJBiKGWnSStLA+2C+qk3ZmOvXVY6roFUGzt
	 Hk84pEcDjy1ug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABEEEE9A03B
	for <ddprobe@lists.linux.dev>; Thu, 19 Feb 2026 07:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177148529363.6978.15411773581672243421.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0f7f74ed3b950c92375af473424184babe3846e40260f13f03277b61530acb51
Date: Thu, 19 Feb 2026 07:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771485293
