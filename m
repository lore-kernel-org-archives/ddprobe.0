Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FD76155C97
	for <ddprobe@lists.linux.dev>; Wed, 17 Dec 2025 07:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765956234; cv=none; b=rxU4A0BKDuvqlBNZg3aUlt82lMxWPDNoQAhADgB5tEOnOlxkqahZh9UBFi7T7mlUZTcNc7cWg06/5mgwN/UP5RYddMFR1ExAP2RtH6+DL7lsca0KQZN53SJ2olcMzATgZzPKeSNK5plr7UqJm8VqBaNU0YprezzAbxmiiwSWhM0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765956234; c=relaxed/simple;
	bh=r4nXJ89vf9lqFUuKMiu90fhKmXaFoLdt448dWgTmr+k=;
	h=To:Subject:From:Message-Id:Date; b=imak45oGNavED6MddhsZZRv/HLu64cXmT13GZ9Vc/n3Q/7hZjTY6URxMC4nh+afqZXSv5oWTlRkeG4wDZpbN6dFiu2ilVsJdVNJrI+fVd8rnSNgz13iJOVOkKteSGxt++tDQl8fg3JqYU4kcTZyAh9fycNEdutbrdQttqwiM0z4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cCb+pi59; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cCb+pi59"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A15C9C4CEF5
	for <ddprobe@lists.linux.dev>; Wed, 17 Dec 2025 07:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765956233;
	bh=r4nXJ89vf9lqFUuKMiu90fhKmXaFoLdt448dWgTmr+k=;
	h=To:Subject:From:Date:From;
	b=cCb+pi59po0kEdpzlQhTUc7CHoAeA5JI+FRl3x8uZ6xsiwdYsRsrh1/rMAcPA/Ufz
	 cTVItwCJBG+nLFmHcWLbZoI7DtOSdYgH74Zysn+5epwZXones7WT7VGFhJHWVXWXMB
	 RGjSVLexgSXMPq1Pj5UwtDjTsnfJQDfpldALGbLg7h/gW+/5nEt1UNgMmaGjPEWiv/
	 VvdRZCcQeU/hPCtuq1snTVwo+Nm6yS7R4vQnip0mcp4wKT5TgkjMU806xsMJ4MnBkM
	 z/dVgGU9qLb9lF/7/Oj64/ZAd96gw1KzW4uIsU3CAQCMqid1QiKyAOYDa5D7P2w/4Q
	 sQ2AEhKGe9Naw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FA5AD64086
	for <ddprobe@lists.linux.dev>; Wed, 17 Dec 2025 07:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176595623358.3613.16357769527239998209.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bff549420fb9c343c01bcc7348ff206d7494dacae3b0da3141bf150c7dd7fe0e
Date: Wed, 17 Dec 2025 07:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765956233
