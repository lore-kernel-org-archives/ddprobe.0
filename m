Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B8AD30AAA9
	for <ddprobe@lists.linux.dev>; Mon, 13 Jul 2026 15:58:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783958314; cv=none; b=qyMFqGeCCbJtYQx7djz9EnLffgT1jwahtmqPkvQxsiqGLn6PTbF5Lvu9kZ4ipwKBO791TfS5dP3nawQoD/+/MSFRECwMCWBONawxMz9PTL7Ft4DnYsfR1QMa3/57BAxCC7Zdq5j8BL/Q0mDQAv7Qv7cq7SW3ipackIE8vV1vyN8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783958314; c=relaxed/simple;
	bh=Q/Z1F9PG+L2wihgWrpmgaYRejVQxVJieWuJVRGYAPHE=;
	h=To:Subject:From:Message-Id:Date; b=Ac2pjt6DQQsncJanbPuZ4u6FqShs5YXG9795DgEDr2rNTW4qNzybIZpXkT7T+JbrAPKl1+q8oXwWZAqQaTf57DlPCl7FbrL4nSh9s7F11GeXaIrLQwQWZEqkPFAPz1z/Z7zlIcj5jamqGF8oxEXvzB5zFRds5oTHR38nvI4/+fc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mFZAHpXt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mFZAHpXt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2601C2BCB8
	for <ddprobe@lists.linux.dev>; Mon, 13 Jul 2026 15:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783958313;
	bh=Q/Z1F9PG+L2wihgWrpmgaYRejVQxVJieWuJVRGYAPHE=;
	h=To:Subject:From:Date:From;
	b=mFZAHpXtSjBQXjtHzOrbhhnAzt2f7gvriENVhwBXk9thNhbaUFxZJckbvGdeHRP3v
	 GW86fWal1s/P4e5MRz9KfrI6esE5/jnMtmPHboXM1QWBJXCRjy1597A/EaIxl4hdic
	 fFemnT8gNhbdpUVJyEQxl6EfRndg7JM6ViUZEi38h6okv321I89x1IOriJOX5xoMPg
	 mouGwf4QIVHxF93OcjgkD1golZLnNbvtGAX+zr/OFLgrEJaQPjvUFduNa5VtCaZgnl
	 Rggz2gzlGlfuBRR5CUYoUwqdxwOomArjRjgTNnnCjixdV637eI8/qTyh1aEKZjlqC4
	 0TrlCO/6f98Uw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A82E0C43458
	for <ddprobe@lists.linux.dev>; Mon, 13 Jul 2026 15:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178395831368.13795.15479903726844812574.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 638bd05b0698e62c8a829db2ff974a7dddadadf15a59b0dea01ddb133141459d
Date: Mon, 13 Jul 2026 15:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783958313
