Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E9AF0A937
	for <ddprobe@lists.linux.dev>; Sun, 19 Apr 2026 08:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776587254; cv=none; b=gr2p8mu9FubQtiC0t+zY0V+WqRXgpAAf41YM3fC3KaH2LIcI9OTselXx6GoaOEBBwqTZIsGqDC9lnmBFMRiQcvYDPuVljISeAmqEytuSQSA1r2YwMS84uERxrarbz0312GZivHLT/6sTztivT6tLV6nz0l6VkU+uTYVnBwRn0Fk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776587254; c=relaxed/simple;
	bh=DoCFY9og5ej3eAzDAGwzp6X94QvBFCFi7IUkvXqnkNI=;
	h=To:Subject:From:Message-Id:Date; b=EjYS+12HEae7SW8LhhND8GYIkHo9o9VRhOvxI8DpA7LbAfk+crMW4nYZWjWeBNbcnyhAnhdSNApJoK2oXpnQhrAXk8Pf3dx3U5M/txAhdihcKdFk+VPNscfQpzAQAPhdG5KXqa4SaoGTOLo5wNjvB4aF5bvdpc6Kbg4cWPjYfm0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eoYE8N0d; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eoYE8N0d"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C172EC2BCAF
	for <ddprobe@lists.linux.dev>; Sun, 19 Apr 2026 08:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776587253;
	bh=DoCFY9og5ej3eAzDAGwzp6X94QvBFCFi7IUkvXqnkNI=;
	h=To:Subject:From:Date:From;
	b=eoYE8N0d608ds+hvCrxKOY1GRoAReBYo1KVu2+9pqg+8oY8mzgGFqS1TvtCbIZSb+
	 6tIA6gD/ne9mZEn1XYp9VjSISxqKrHQd+0078YFhJSpBgwwOgFh2TRtnUXST7xJv+l
	 3ii9Z93q5WcacpPC3363VTFfatnTeukmg5z/K/SPVRXqwF8L1B1OZ9xgrcLk4fBemQ
	 dbmqkUyWmxx0YYdGVmI9W2r4dl52zhN4gEer2FSF40SSQrvSU3WQTvULOpyzUm8knU
	 j1ZPqCDOKg5oRb0qRtnaF1bXMocUDfYLUL/z+O/cRFK1qNyCtc9D1yKrhd1LCGULiK
	 U52jYQCwBWW1Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFDE0EA7188
	for <ddprobe@lists.linux.dev>; Sun, 19 Apr 2026 08:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177658725368.10156.10895066851010745098.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cae9240804cf253290223596ca2a95507c78d6706b3c931dc9a4d032e7e5b7f8
Date: Sun, 19 Apr 2026 08:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776587253
