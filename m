Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 330F0264627
	for <ddprobe@lists.linux.dev>; Sun, 28 Dec 2025 10:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766919234; cv=none; b=R4HUKGyW0U8WR4bq4CAJyHBRFWt1lg2ssq5othnao4PYpxOVN//3cH/7mxyAt6N+gbqhFlHee22L+FwEcTRuaGL6hrJ6bAzphm72PJ7s9GARZz9CYybwCoeINBy+CA5BlXk6BA2c3vm5MKOSYPEjA8jKU3Ta7Bhmb0w95i/Tvhk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766919234; c=relaxed/simple;
	bh=alvGtShYgiRT9zT0ZP1HJZ8YrmH7n/lKLKPFb415eA0=;
	h=To:Subject:From:Message-Id:Date; b=skGdREmBdz7BzNbwl5M0ecYLFquq2ANe7MmgXbtcrGAwK/7LTt37dRl4CwIqXh+CNROokoQpEpoD0w/3uqQvdZ6baYTZcd3FAmH9auq5UORb4ypzgHq/4v3t254fWdflsNLxJsQkw5d5lWdHGg2Q6soOpjYt9Di6Y0d5/MfDkjw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oMvskPnK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oMvskPnK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0576C4CEFB
	for <ddprobe@lists.linux.dev>; Sun, 28 Dec 2025 10:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766919233;
	bh=alvGtShYgiRT9zT0ZP1HJZ8YrmH7n/lKLKPFb415eA0=;
	h=To:Subject:From:Date:From;
	b=oMvskPnK/UkoWO0ne9jyGw/0nPgO3Bk5jpR1M2o9aV894TfHfoLealzNUPGDSTW/c
	 1bWNit29fzThsTHWxqY1esqlj4mpug+3mKVw9V7bsSo5yQdxGE8KBHzNHecXpikuK6
	 vpJQQCzMMibhDwyRNihfJyHNbp6H46KdhdAVT1RiPe/8q5H2k15OIs3gx0r+Ieuln0
	 Tb39mW9G4XoBoKFUYfl4m1dCGVdNlTaZ2uRlYMwg+5VDOLJXm4SJOiGJ5nN6cViqnW
	 7kqTYvGpMp1gJma0PiQDfNYBXAlhElZfdM5ir7BFn0b7eCE592pdc10z0vWXne8mCg
	 PDxASi1/Vo/yQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 999D6D3B7E5
	for <ddprobe@lists.linux.dev>; Sun, 28 Dec 2025 10:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176691923359.17597.4869329438388824562.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a95841b61f1492d8650352ea6d2efc68f229911ff4e3a10b8eb855da892da6ae
Date: Sun, 28 Dec 2025 10:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766919233
