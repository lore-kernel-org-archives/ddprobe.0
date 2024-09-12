Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 09DDE18BBA6
	for <ddprobe@lists.linux.dev>; Thu, 12 Sep 2024 20:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726173954; cv=none; b=uE+18MLcT7yw3ieF5Y90+dGYM07lXkMDfEKLltWNT7/9ADJMGpC9ahA8xqf1pc+b6EqZQmamRe50TCgNx2sa4eWeKY67B1yYFSDgC2qkjoxa3SDpA++ABOBaeZx6SMO28FKuVgNC4jX1ainGW9KF7Uc4llrudcWAHWSlWGEP+6w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726173954; c=relaxed/simple;
	bh=Vpk+yyjmrhJMz3Z/9h9/qxna7WfjH7lnzsZlEsAhGlA=;
	h=To:Subject:From:Message-Id:Date; b=lU2+Z6QqhqXVh2lsi7td+AZ04uYgSVVeQesJEPrZtxD6AIPejLtvCjAo/G/jzlfiJwzg6f5uF3mSwe0+V6GwxaJ2Dt01Mh30OC/31cGoI5pNZJ8oGaGez4P2ONyTUG3IBseEIH8cnfMZsOHBM5V8B8o1VCT2hjGkMPAZLWtnKGw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SCeDGoVM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SCeDGoVM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A71ABC4CEC3
	for <ddprobe@lists.linux.dev>; Thu, 12 Sep 2024 20:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726173953;
	bh=Vpk+yyjmrhJMz3Z/9h9/qxna7WfjH7lnzsZlEsAhGlA=;
	h=To:Subject:From:Date:From;
	b=SCeDGoVMUTGQVViAPR6Rx3yGN4K0UD75FdHbtDKeWw4byulKATpnclTDMcaSYMg+R
	 lZqRn5Q1RixLt6E6gWTn9g03S/mLwS+qTPmUsUKOZPcriRResqbR3jiiu2gkY9+IKX
	 ZvUP8Uh/GgwQie9mF/XeApADYoUCEADYF0mcAuMriWptWcqbN0iznNsMnCvXwixzQV
	 GpdgoJDYRfKyD+C+nDp8UYnf4hyHfqZhFv6JoEq63df3J441/Da4VQn0jIIzmYDdPt
	 Q3+wUyuXCTLlmlc7Cd+w4wwXvRpDitiMdjFiBKSK4/PlaGjEX4NA9aAfTVywZ2q/QH
	 sa7vTdhDQ1EgQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 982E7EEE265
	for <ddprobe@lists.linux.dev>; Thu, 12 Sep 2024 20:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172617395361.17574.1268391960175868555.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1253b1cbf4cf10c8cf227a069047fd768a09811e41534a801d2eaf7f2ed03052
Date: Thu, 12 Sep 2024 20:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726173953
