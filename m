Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B92E86333
	for <ddprobe@lists.linux.dev>; Mon, 27 Jan 2025 15:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737990354; cv=none; b=ZEVElHetLfDgROduyY36AhUCjLAX2qr2+moHyw9G0J2a+7VB1Yuo4I1R/UYT5U7v3PcmWw2BPsc2eM+Qy8lEiUf9S1vhp3HqVDs7TDveM4HYNKyRt5RLHSbWtsA1glu9fc+TXL4j/4kBD4VIbYj5TBEkJyQeHFC8OwoM/ANLIWE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737990354; c=relaxed/simple;
	bh=/LOuiu0rZFHjrCl3swrtIf5bPSSCTYLzKY1WKS08Ses=;
	h=To:Subject:From:Message-Id:Date; b=fLoi6mlmPXWc17t1IWNRI9csg4tntSfOTSMNiiQI9Ef2I7P0PSIXJ0GoKHzyNNHMmOTJ0vftajbupKDVYtVDgLBjqHyZDuvGaXjiHUW/hijlzOOYuZVx2jkEUBloXnvvZOS68DBDa8PLO4MmrUbG8TuGUyPqhpQq+luH7BK4M+4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cmHTYhs5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cmHTYhs5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B610DC4CEE2
	for <ddprobe@lists.linux.dev>; Mon, 27 Jan 2025 15:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737990353;
	bh=/LOuiu0rZFHjrCl3swrtIf5bPSSCTYLzKY1WKS08Ses=;
	h=To:Subject:From:Date:From;
	b=cmHTYhs5Y84gSrjeAXLsgWc6L0iQZbCp1UP2KgHl5b5sFIkrdYSbkUuWb6j5Xg9F5
	 or8DdzwnWuaQTaoTX33UbCrZG342m2p1HprCl5Wx51oelg9asKtw7mHBLDXGvHL4/b
	 lb3TcxpLv76M8MIo5v1/HcMMo6bYy5DjZA2BurbAQ33A/ZAlbhtitUgI3uGy3uta6t
	 Cl8e8uvWeXuB4DYXtJA5F+CVEc8ghVUEB8NdmyMGhgKMsbDmJRlLBQvBYmxUqnDDlM
	 3adIi44mDEl4EB4tcQofHD9i2whkSdIXZ/6+0hdOvey3+FrdCsWndjCnN4O/w3zQgp
	 VxCZajFzLPqQQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 970E1C02188
	for <ddprobe@lists.linux.dev>; Mon, 27 Jan 2025 15:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173799035360.12323.3381232086788584172.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 559fc132e2c21635fb8541b5ca4f9abf1a4db2486885b289cbd00f75917467de
Date: Mon, 27 Jan 2025 15:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737990353
