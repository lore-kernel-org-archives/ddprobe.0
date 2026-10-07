Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5389E29408
	for <ddprobe@lists.linux.dev>; Wed,  7 Oct 2026 00:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791332434; cv=none; b=UFIKp4ORid6gf/LI+Qi/pizC+LmWernlaaZDul9FEYuqxItZXr5+H0PbMPx8u4dygQeqiVaGl44PnxihvRa70fretejdTFAOmWrMR4+6HsmbAY1c9z7O1iTXk+THlDBAIytN2RdSX27uTZVfruoWbZ9/oG3UAd/Xx3Q9uwO9Ayo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791332434; c=relaxed/simple;
	bh=iiZ2qWv87sqgQOzqwOQhKOURXBB1rf9UbnA2yAFc9X0=;
	h=To:Subject:From:Message-Id:Date; b=cHdMtnKs4gp2A7H/u/M+h68ruJkI9ujqUiyc2WOoVL94PLUtI1NEIAmmcb+Ehxw4a3rH9MQxZlHEyok4wj4WMNbxUM1GTxNTGcMtMtIlulH8OccWU2FRBvpUutZvzzphr6HZ3lwaVPzcByVFg3mvWwvWqarTpysgI6jKhhnl3PM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Sj/Rwtag; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Sj/Rwtag"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD703C2BCF4
	for <ddprobe@lists.linux.dev>; Wed,  7 Oct 2026 00:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791332433;
	bh=iiZ2qWv87sqgQOzqwOQhKOURXBB1rf9UbnA2yAFc9X0=;
	h=To:Subject:From:Date:From;
	b=Sj/Rwtag4IfqXBgvQdaJptouKb4N+gcMSHKhk2QkemFHoR3HnaV8Bs9luwJC3KG7S
	 eIonWNisaVXimho/Wz+mOiVdKfP9sempUwctX7nJeb1iCu5TDxcN4Lms3VFjLY2HUa
	 Ky3EQ1xp+IolMRKnumnR1aL4b8Gop9b38jopU9SjAHJJ6/w6o6dE996bWEl4U1ZtVv
	 5ccUKrtuY5vSibEYSrFyHxiCjDkam329BgaMtMl/QY1mC/1NZ4T+vQ1Syx/unelpsZ
	 T8Trt4l9HblREf3bOA7veG9AtqfB1ZmWtcXI3Etyr5Ffr6GzPwYBXVlwLrcvHy7XtX
	 QV0VOpq/eMedg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA683CA5FFF
	for <ddprobe@lists.linux.dev>; Wed,  7 Oct 2026 00:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179133243368.26836.288197082182614322.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6e2dfdb4a9a5b1203c599d00bf5dc5e48f08a2357b16d71b353136e62b17d182
Date: Wed, 07 Oct 2026 00:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791332433
