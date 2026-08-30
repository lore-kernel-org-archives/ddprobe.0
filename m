Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 478122472AA
	for <ddprobe@lists.linux.dev>; Sun, 30 Aug 2026 02:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788055234; cv=none; b=Bz30LVl/n8bxMh+/Sk+k4pD0eraFzszeCE6qPNYzTTDMnL2gG59j1RD4D93eZfATx6CfXW7zNNN0htqvIQgWaNfupOxtjtKi+/moxfL5cHi61EqEZhgnceAHw4FFweSifioXMo6ptdRSecUCPBnmTL3QtSUzt26NplOUMruEYfw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788055234; c=relaxed/simple;
	bh=b66A7tK0L4xg71qDLpJly57RWozwCRgBGVF4Z4aEdaU=;
	h=To:Subject:From:Message-Id:Date; b=o0GkfxA66JD0zisOvy2818s9FckD0KhVyDcnG+voe3xTAUNZNDaZEdhn7zi05e/vllJ5sjf0oq8jrjeUQKe2y/9q1ElSTimJPddOnUF5Sd0Hbs/XnFeMHeNoJooivDvUKsImgsUZD+c4xFRY5tP5JvDuHYRLngdd2znjPmnA81Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=X8Fn/bgD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="X8Fn/bgD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2E52C2BCB9
	for <ddprobe@lists.linux.dev>; Sun, 30 Aug 2026 02:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788055233;
	bh=b66A7tK0L4xg71qDLpJly57RWozwCRgBGVF4Z4aEdaU=;
	h=To:Subject:From:Date:From;
	b=X8Fn/bgDgYAA5dL5Al0kOQRRIftfOgvRKzTx/15RpU3guew5Kxmrt5OuPKEZoWSXw
	 jx45Tw6evw6RJKpJabHy64N0oF9oEGkuboXEBuSZSmOz1gk68h2ez15dZsE8bePIYX
	 UgM3IkfxhZohSdtorbxgncr8COMccb++mUiN7JgbXP/AM2ZXnv1COB312d4C9R3V08
	 9wMDUpSTLozzIEOp9CxhPU203aWz9QA3Lxg5ez/obAaxG3AH5GCKh2YhKwMIkgJDN+
	 21qqIPfCFgHAkJDLVn43ZrmiolbpYBkNWj7gsCtZX605FJLbUrMyYD+3z3hMu07J2a
	 drIthuTtt4D6A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD3F4C61DDE
	for <ddprobe@lists.linux.dev>; Sun, 30 Aug 2026 02:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178805523368.25974.4650038677476393539.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 231856cc2cfb71003027038d6c32765360fe31e70ad4816ea76b3423f9c673bb
Date: Sun, 30 Aug 2026 02:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788055233
