Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25B4F224FA
	for <ddprobe@lists.linux.dev>; Sat,  7 Feb 2026 00:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770423234; cv=none; b=rtQyLtNEmiCUpfVnCJGHlqlPGYpSUypln+FmG08MOYP0tiI/Sb8XZynZvyxAuYb9jJquLA+a5H5ReOf9DYMRyTJGMN6yScsvImnvIw6lzw4uJ5VOGO/fpkJqWXk4R4A0vq9d1luoGr/gqshSqKgLP6jxrkySEQyRLtmp+eAjwKg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770423234; c=relaxed/simple;
	bh=AEaLEYz6zQN3iGyEpGE86a0Ete0ok+y0HwtvOqSSvtE=;
	h=To:Subject:From:Message-Id:Date; b=YLRlCVWF8UhTAQMwLnEeySuLU/KiSbGByrr7KUXye6cfCRPPSy9Z4n+Y+2z+3zC5SmttRenSbrEzyPnPsCpQ1Tbcv290vJFXq/P0jQPJ4gVz+ic8/3io5c3MzFzSWCTrINZoGncxuwKm91psomG+8xPYnPaIvT4ziIsNgWCooVc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uZpquNMH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uZpquNMH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4B2EC116C6
	for <ddprobe@lists.linux.dev>; Sat,  7 Feb 2026 00:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770423233;
	bh=AEaLEYz6zQN3iGyEpGE86a0Ete0ok+y0HwtvOqSSvtE=;
	h=To:Subject:From:Date:From;
	b=uZpquNMHZ4uSZLzSy7VtL6p6qZQoa9eAn92Ttx2ZyxArAITszSvpgLJSZQ6NMLeZw
	 T6sDvkaygQzu8Utv5jKSqDcJFTw5kU1PmZQSnvPoWuEvY6p2vyNi5JkpgGHLli+oq4
	 trI8aoQc9Og+WweXzYATcRLEXfUnOGyAZkT1/OLxzcNZeuaU1YI9UuAPQOuldOXBC1
	 soBFCYnebr4TXHUlTyClNwMuHtjlkILCn9/bBnbt+20SMxBK0fNF14zM0B6V2WTLGd
	 WqUwtqewiYkvx2SwFGuFhEjt+pG8PjcaPE3Bom1lMI7MtCeBiZYc2fyRp0E3ZXQyzs
	 CP24Z23dZ02VA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B9B1EE6B6B
	for <ddprobe@lists.linux.dev>; Sat,  7 Feb 2026 00:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177042323361.31532.4948583597719697841.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 78947aa791e550c734ef4c5db803d084cff94a88c014db5ff317480126a696a3
Date: Sat, 07 Feb 2026 00:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770423233
