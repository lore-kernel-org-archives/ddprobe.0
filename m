Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 330738BEA
	for <ddprobe@lists.linux.dev>; Fri,  8 Nov 2024 00:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731026154; cv=none; b=KhPSlur0Lm58VfgJwATRTgzMQu1Dd/e3+pOucCP9zJRarHjiB9mX98AKBuGBu5w4031M9IUlfK3jiNhXUSnILsBDpf2WUXABkG1C+GwkLAZSpMaW+Iccyh102RFQLgx5hlZB0Fz6k2mkCoTIEdFxVJFgqWp2SISIsOLfmJz2oKo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731026154; c=relaxed/simple;
	bh=eE2YrCurl91DJ2fGn7Cn0GvB2ZV0u/IL7QpWMYyXt7c=;
	h=To:Subject:From:Message-Id:Date; b=hXIaFOpNqa2yvo8QAA+47TYWAWAkgt16BzzJrpQLLUjAn3s58rl/qEHuFE4Xv5EISQrjWjKoqmyEhNcZV5N2LEv8kE9FFbFexzXZLE1G3yeqt7oZfqEOzpYdICyOQp7zEnmenuxv1zzWl8MY2/nfvNib68ZGT1yM9uBP1x98B58=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rr26g3+M; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rr26g3+M"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC046C4CECC
	for <ddprobe@lists.linux.dev>; Fri,  8 Nov 2024 00:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1731026153;
	bh=eE2YrCurl91DJ2fGn7Cn0GvB2ZV0u/IL7QpWMYyXt7c=;
	h=To:Subject:From:Date:From;
	b=rr26g3+MX20qk0FNiaCvOYMyJug5E4JLtSrPm4ptJjW01bcGV33A+BYeXDGBxXi8/
	 IAGg2m0rDAWWtn+CTbLGl9uwT/Xp4oJjnfvboXkaiICXFANYTcJLlwqcDyeX0TGtgI
	 Cpx6P9dqnOkXJfZC7AXnPWMuQqbtlHsLYBDsCI7HyJwufsORoE+M0bZ6vopUp4jQ6W
	 rI6sO9PpE8no34iV/pxplP6s/OMVt01QbtXoFjAZqUccYlovzDnImyk2wwxp+naIEc
	 iO57w9HiCCHZ2Lkt4EsJyU6QxDLanDt4QZVNAWx8mSf8f49p2p4CxE7urcIuLWmg+l
	 sKPZFMQ294yDg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95E69D5D695
	for <ddprobe@lists.linux.dev>; Fri,  8 Nov 2024 00:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173102615357.13137.3913183494395227507.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ebca5aaa78a2d95f57ef75ca3131260b9c5479c6bd2393e290ec10d195fcf663
Date: Fri, 08 Nov 2024 00:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1731026153
