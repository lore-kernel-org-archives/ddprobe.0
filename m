Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3945F125AA
	for <ddprobe@lists.linux.dev>; Tue, 14 Jul 2026 00:08:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783987714; cv=none; b=Vl3gHybkweXMIslPLujhInINCLi4CemTbApY/r7QHQojlX4hzocNrlf2R9IgZ8jXDv3b8yqC8H614+KkvByDYt+Hs8QfzRCbgaQW+MxB5ZDamTc0lsSTIUlhN2aJ6EpUbegY68OzXCh5bOjWq0t9f9otTB/HEQHAN4Ts93h86mI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783987714; c=relaxed/simple;
	bh=wIPeLEXfP1X+HZLued9UQYRcXKf2Pa4y3wP7uFQtGGU=;
	h=To:Subject:From:Message-Id:Date; b=N3UIaHHJasQlptn6CE6LxbWrmUWjGU7VJlgix7KPTFcJXi10End/HOkjzdp2A5Hxuqh1fq+y1aRWt6I+NQghJCDuyP3d19dbR3XdyrMtF/4N00gyM71Mg9soTJJX7h1PX9afgWVZb7+1w5XrsIq9jAq0htCWF2X5Dw/1gVKJlwY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mqJCJv/v; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mqJCJv/v"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D29C2C2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 14 Jul 2026 00:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783987713;
	bh=wIPeLEXfP1X+HZLued9UQYRcXKf2Pa4y3wP7uFQtGGU=;
	h=To:Subject:From:Date:From;
	b=mqJCJv/vunjFfoH6d2Cpa8zQgngRMseLuAAQi4sIM1oafcBdAYJ7IDzubwyzOJcJB
	 f0eFBpIFkmGVk6eCvp5VbhqskxgRc7QyjVO0MMvzNnD0Xy1lRi56wPEaBQpuf73KAM
	 qsa1P0hvcp7h1u/xBlSMEIl3DGbwdp3Zmq7GvxL7Q4P220G6NjBeKRqWQae5U1TmJi
	 DRJKURV55LY5JegELhkEva+Gow4pTjoAP5BXF7pGbufhbpPeYal9Pv25xhwFgG0iwW
	 9XetnelkEpD4YRzI5x0kcMP4XX3eOEi9BeCJEJTjyzMsjX3nvmS9FDvRjI42CUN813
	 BypC4WulojMAw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF28BC43458
	for <ddprobe@lists.linux.dev>; Tue, 14 Jul 2026 00:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178398771368.4558.10655360826166853322.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0056960e791159b4d2349a7c642f909bbd18da8326e50057a94dabe7848a26c4
Date: Tue, 14 Jul 2026 00:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783987713
