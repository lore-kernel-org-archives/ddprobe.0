Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0949836E47C
	for <ddprobe@lists.linux.dev>; Fri, 30 Jan 2026 11:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769774034; cv=none; b=h4GKMws0Gg8/DC+2UnGNT51xQDyfA++rJ+uVll1HfgMSjaVROOWcmk2uynFPxTMHYIP6avAd9kwbh+PDoBaLnGJfjbTeB5ss7funF/SuKlJAzVTONICFsn8YcEeaWVOi7eZ2V5ohV9uQ//nEbLrqvxXgflte5PIDW3E0t4xqudY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769774034; c=relaxed/simple;
	bh=3LEYDhh3OfA3Be+BQlI/NAESUcNaJG06BkD6vL0rpuM=;
	h=To:Subject:From:Message-Id:Date; b=fcPv+zPpOuv3z/uPHEytcdGbI+mgUJtGcXHuUv/rYNhRj4wROQt2pqRzgjudNqlp9Po5xnHI3HYnB8ATZhIk5FIGLQKG2hzs8oMtQQ0lOij+Lmn6sCfT6lfhbh3cSGCQirf8Iw2EPS/q4DnejX/PdUo/xLAC84XNwnGgl57sf/E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sr48u6WF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sr48u6WF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0576C4CEF7
	for <ddprobe@lists.linux.dev>; Fri, 30 Jan 2026 11:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769774033;
	bh=3LEYDhh3OfA3Be+BQlI/NAESUcNaJG06BkD6vL0rpuM=;
	h=To:Subject:From:Date:From;
	b=sr48u6WFDDU0bmdofXJt0pG5UP8fpyZ7I87lQWoThlfH6n8WF3Hfg+TXbu4ap1AlF
	 uA/qYvjc75zjLY0a43LYrshF/3fs3BtV1UaLtf0JKqnD1Fh4nl8U36+4IrZaNfYca/
	 hjgSOUGAT6NRhhBsZlKlR6XPXsF7e+YCAQHuH/iHCEs3OIwgT3jdnrmgX0YyAINBSo
	 H92b5z4cSbsLQFxM0mXZxUofQQZGQT3PG3pc+eHFmoFRGw5bKDdBBdSm+LNxJWZEGS
	 VndYQ/uZ/i4ODbjcmVke49bMnNpzFP0fwZ/Fc1tpwiaT0TQerIX3Uga8IUZrvvxtGZ
	 V+Q0Sk3NoCIQQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F27BE6BF05
	for <ddprobe@lists.linux.dev>; Fri, 30 Jan 2026 11:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176977403357.14867.16944906260645101606.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bd5f3c63e4f788e6ad5c9ae18312b1b921135e7d4c5cc2b50345680f3b411cbe
Date: Fri, 30 Jan 2026 11:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769774033
