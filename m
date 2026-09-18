Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E3A62438FE6
	for <ddprobe@lists.linux.dev>; Fri, 18 Sep 2026 10:00:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789725636; cv=none; b=KrWfqVRS1SpTVs89JcK0HoAmGhquWK8Ofpp9kygwQxJLZdURtZyoTOo+pnDpN/30xxYawv8GIqw+1DkDK6sglAB4hO3knHMgaORTuQjyV+BgN8brRyyWx080Hc6P8GUhvtPGeQAfeCi9wHtAMRiKe3LrRbEMHF/AXhpLU/zXZiQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789725636; c=relaxed/simple;
	bh=qtMSrYi7kmgIWT+KeVbqjPwqrYxEMiTsdu/VMhiro70=;
	h=To:Subject:From:Message-Id:Date; b=WjinlZjjeOiQelngtKZCqopfrfvUJPG95UJ2w2blyOggswaNm4iCYjE77Lqwzz5GR//J3H93EO8LCuSnrZVwsTeL3yb60vOdz1Dn47/kT6DxK75Qa8YrdqrvZjYVyiTE1GEaKOdiw8d3SpJ9TEZHOAOA1Fwl5mN7uCxa6iDY0yM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gduicnC8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gduicnC8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE433C2BCB8
	for <ddprobe@lists.linux.dev>; Fri, 18 Sep 2026 10:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789725633;
	bh=qtMSrYi7kmgIWT+KeVbqjPwqrYxEMiTsdu/VMhiro70=;
	h=To:Subject:From:Date:From;
	b=gduicnC8j4KZO82SHbxaEc9H1/iY5d/WyBbsy3IJ+1bOqlKFBm/kQbbj8oW9XJGS/
	 kqBUeGHkIiswSffwsiWB4klbSzfCoW2Hv/al/giJnDHY7wXTtaqpZd9cATmEjpvGKA
	 yJv6awj6GJoKceZtIUEbb8e/h+Vp5UC2fPizu5yI4uM4Xtl1wFmlv0YHfH7X1kuX59
	 fi4k11GNuwSFU8/qNgDk+HAy9KlrW5zB9Owgy2TloaVlQvigPB/Qen4kiQZE1gjj23
	 TPpHc3KzQOLeiVoznyLMCz+XKrvr/HD+qeVHOvRCXEEF5eCUFG01qm0ol8Mg53ZwNt
	 uWbAPiWesqVpQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB4EDC982DA
	for <ddprobe@lists.linux.dev>; Fri, 18 Sep 2026 10:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178972563369.12368.18136268683409811813.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 27efb339f7c3fe6f60ee7ab262a9f71a9e81d66b4bf443689bb8204b5f68b188
Date: Fri, 18 Sep 2026 10:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789725633
