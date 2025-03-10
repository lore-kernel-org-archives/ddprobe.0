Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5027419F49E
	for <ddprobe@lists.linux.dev>; Mon, 10 Mar 2025 09:48:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741600134; cv=none; b=mSPOpqiERQU4ChupwyTRSZ71xA1TCgv2tE972v/FyA/mKLgtxZL28CoLvIyWjCeEl3xFZKJqiOVPvO09+ivETCSHCDo76JHbFFacwy34FTTWVJBTnFOEGL9Ezxd+V1+vKC8X/8CfCHahwkVvqBL1AUQ9oDB7bm/Y/KjXwXOlKfI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741600134; c=relaxed/simple;
	bh=tz2afeS77Nt7jv+Lqli7SSjficHORb6i0FwF9vCjMGo=;
	h=To:Subject:From:Message-Id:Date; b=GSBsaz2gu3H7PtePaWjByjpgtEji2zuLRHFzEu2XTt8AldSVJ9UPG0A6qgmPssrfs7kHuj0GZGjZdSNKtMGqZSa0fQ/7TZqUCV0FcRpnbV9y1AVhOBQteLCvuY3C8QwRpH40ZBYFT64dJhaVOTDUBGfS0N4xeCxeUE65Hv4AO6A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Z6ul/xnL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Z6ul/xnL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9063C4CEE5
	for <ddprobe@lists.linux.dev>; Mon, 10 Mar 2025 09:48:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741600133;
	bh=tz2afeS77Nt7jv+Lqli7SSjficHORb6i0FwF9vCjMGo=;
	h=To:Subject:From:Date:From;
	b=Z6ul/xnLF80QmqsFKMwFnaIEqOgG/zoNbfcLWFuleZ0Imy7QxTzIP+HL8OP2ZH3uw
	 Rpsw1mQ27cs5gE5hJB+n//y2vSZ1a7ALkQknqFgrsCXkYwbsJg7wAnpFq/eGfAIzw7
	 qQzVQ7bhX3yGq4TDqj9t+cPfymEPbgIExJ8HBBh0EW9HXeX9HqUPH6MlHb73D9dLVW
	 mblL+09oxVfnzRCP1ps88ABQ/HhPPn5S+7dGOXDNGhvJxIm/SnjXcE7qLgZHPWkdjl
	 S6So6VQxFZ7dDf80UN+MNoylJbA4WZLWK6OBEMXQ+4gwSrFrVhnxvsO2IZkdXJQ0jY
	 7LNbj+fFpf73g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 929FDC282DE
	for <ddprobe@lists.linux.dev>; Mon, 10 Mar 2025 09:48:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174160013359.7369.8478463782291975973.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0938f8c66cb144ccf3dace5797b3e9357d4f8d6660d9af3272802f14d3aeda92
Date: Mon, 10 Mar 2025 09:48:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741600133
