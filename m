Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0FEEF1D88B4
	for <ddprobe@lists.linux.dev>; Thu,  6 Nov 2025 19:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762456194; cv=none; b=WylDPTbMk1QjocOI09PkowhB5MDYhDgNo/V1LJLL8wajN41i8kRqQ6EUAN7LGsero8C//GehQBf/Zjwfj4YssTJXPgwJQlLFALTLNxX9PtCHnBS6bk//VYu1T20zUSLC34HDDf9NpOiLfaTWAt8BBeQ8zpcqajbyp0Pc6Yclwks=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762456194; c=relaxed/simple;
	bh=+AZwjvJWDG4V6+n0TMzVp5gmwWNog6Tc+Geb8ilHmeU=;
	h=To:Subject:From:Message-Id:Date; b=PuapJf3LzTyQPOLD1xkk/JPSNJeb4ImaAdmxJ4CZbbkU6EhGcR3t+vATN0veZa/HE3a3vTCgbcPimcIKFDKLu8tfRuiJdI3+z2VSD7olgqezwFw0VSOrNfuv0+sdIjH6jVpICbMaji61AW9esymsjGFaSGz04qBvJkXgLrEqqT0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ojo4eqUG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ojo4eqUG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5786C4CEFB
	for <ddprobe@lists.linux.dev>; Thu,  6 Nov 2025 19:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762456193;
	bh=+AZwjvJWDG4V6+n0TMzVp5gmwWNog6Tc+Geb8ilHmeU=;
	h=To:Subject:From:Date:From;
	b=ojo4eqUGpICBuzJf63YMvrFXd78H3euS8VMtvNKLLtsnV3/xdPeDRXbwADoXQ3ypb
	 GtSyr+LA8Zq1tUGwiA5MNA8xblxrq0SPo72EHvNEYjzgjyyaOkwBc4GrWSKD7Xv5+0
	 WAilJ1dk0yTpOKxfAE+PkfbCNIWoWLBJePY7jmsPszPQ3aYHeEZUNIaLbQz2LLhgeV
	 Wjg/KCPaL6ikWRJCbAFrz775nxcMT3QdWF5U2l26cOodVxsam9C3Q/fZc3PgVWRx2E
	 ba24Iz3M7y45hnT8XrcKJNkw1XwjF3SCn93y9yjBYjLfUEjhUQtg5MibaXqNMcNGmt
	 4gck2/UVGNoLw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 929FDCCFA13
	for <ddprobe@lists.linux.dev>; Thu,  6 Nov 2025 19:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176245619359.31555.4870837278545007226.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0d008714d3d35703737ce9d0f723552881b0449d9c3b830088ad8d8514ff4551
Date: Thu, 06 Nov 2025 19:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762456193
