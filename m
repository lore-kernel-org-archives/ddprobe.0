Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16DF02D7387
	for <ddprobe@lists.linux.dev>; Tue, 23 Dec 2025 08:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766477034; cv=none; b=Rr/TW+0RLdmSKvMvaodKZ5awhiYNVidfly0R6cktKCjCSc670PO9bGQYkJw1yS2Vm+m3k2n3eOcELK4gPHeJl/Myqa9bmCzEEjobRI1mxZosutTiTupf+WTG1UVu/7rjOe5Kc4/tr82PnDelgHpA8W0EKSoisLuwz6/WYdcNsSs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766477034; c=relaxed/simple;
	bh=fGbeHTrUtOuhB3fADp636CcXB9dzuw6szyOx1zcb8HM=;
	h=To:Subject:From:Message-Id:Date; b=CHAzVigNbOZosU9CM8LCIwBOIzrZAnOW8doRmmClqm8AF9zrSNQqr6RiNxzmL5yEHgf2ULCwQR9yAdvcU9IkByyIuoa/9qRBMIHDQDmOBnNTjSCuzhS9HElM03RqVNZ2TMalu8b3/mWXEkF/XK7cC0ezVnql3+jxCmF7hzZOGXU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NXxyPLpX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NXxyPLpX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A67ACC116B1
	for <ddprobe@lists.linux.dev>; Tue, 23 Dec 2025 08:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766477033;
	bh=fGbeHTrUtOuhB3fADp636CcXB9dzuw6szyOx1zcb8HM=;
	h=To:Subject:From:Date:From;
	b=NXxyPLpXXK6yWCQoZNDlD4GlqacyWxCWAJaaMWJ7W4/iLuDAOOHmpG5ei+fA3ma3U
	 JMLmxTz4A3VQ/99obWEnH0Mypv72x4eCdo8bk0LBjT0bZsbiJoZfupfhWaBAgEUUi1
	 IUlQ3ewmIdo6j5/RXWoAnnQ+F2qLvgM3sM4kdbs6P06hVyxEez/DQ05dqMPRonolBV
	 BqzgJzDPezZmOcWZgUCVkNfKqReNpzvT6N5HywwKXWrO2EK2YZkH40b4xYgqlNJrH6
	 BpQOejv4NCbRPClX0Siv83fRoZ4Jeoywnztr2M2RIecp/WUBlmleaE5yk/2jhdGAgM
	 zVTXCXaWPaj2g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95C34E6F068
	for <ddprobe@lists.linux.dev>; Tue, 23 Dec 2025 08:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176647703358.10974.36366800934441746.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8b9a3fc5ea61e4484c4fa457f13604898f1bb7139c822b47e6ffd90b32530683
Date: Tue, 23 Dec 2025 08:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766477033
