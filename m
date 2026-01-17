Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 08A00212F98
	for <ddprobe@lists.linux.dev>; Sat, 17 Jan 2026 06:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768631634; cv=none; b=DfkBe6QkNYLiVz+/NjotmZLuY9gnonO0BTrwL3CsYQaFJ8WR/ex6PhWBm8YyRnkHaJM0seOxCyyZ8eekPrZfZNnQt1AmIvTFHEZc7Y7toSKFjPBVaMzKKQto8NM9+YY/w8bQHQmSVl/aVh/Tgv5WJW9dD+J11xB5j0XWEAM6suU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768631634; c=relaxed/simple;
	bh=fgO5S15+SUrdsUdXUXZ3+CORwFVkXw65WewjODmDZYc=;
	h=To:Subject:From:Message-Id:Date; b=KaGJfpnxkADfm7l9IRnZ/ujmxeHzrpSH2CxARf6YE6svex5UVLHWkTHBC1HsidwaNzQ83QVAR3FYHB3LEkhofTv2NoHDSz7xBe/a3+UELroNLYASgmBQOtsowtUMhu2LNWlXr1UkPDbLDmKSsMg+CCkYZ4plRa382FXuzLbHtRw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BqEWdlaI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BqEWdlaI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A585EC4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 17 Jan 2026 06:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768631633;
	bh=fgO5S15+SUrdsUdXUXZ3+CORwFVkXw65WewjODmDZYc=;
	h=To:Subject:From:Date:From;
	b=BqEWdlaIjObDveY0fOnINEl22zB2RTXSZ/u7kxe1FwkW6jzjcvct8k/GArgZ7WWXW
	 XaJVqZFzclfbN6x5Zm+UyTV6vaBTXGxZw1HD0gOVEn65XZvSQxEYEq1aE2DQKIYCPg
	 QQwbGVGsr0Cu+ssO3xkxjsy1fqUT7U9QmxVHRiLjPKDPYuqB+PpCOXjt9ZXb2nlTop
	 fYxX51YPxAbIFIeO+ybPZJVBr22ScHc6cmx2p2ER3Nxxl0CADJOTSIXSyl/IkzjDsr
	 SAquzpVL/i78pfwAFpNU/X+Zv56xW9IDO/dsLNOS3N+G3TaB/m+ckBbt/DdaJbGthb
	 AV05kUBSOc02w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92585C98311
	for <ddprobe@lists.linux.dev>; Sat, 17 Jan 2026 06:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176863163357.30409.11354806839862598737.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 577b7841fb4292fdb7209208c56068d5cf0eefe81f098037f7a7a7a7ea78b80b
Date: Sat, 17 Jan 2026 06:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768631633
