Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 986EF3D6CB8
	for <ddprobe@lists.linux.dev>; Mon,  4 May 2026 12:47:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777898854; cv=none; b=jtvHOS7CfgJkVuU0dMw8cKb3JZoygwcHGHie5wgpvCnoNbhmzKVsJldTohjqAlOf72rrfuTSvEz25YrCCcJMLpCIaKXmc6psyJzJ/cZ+rJEIXt00rmPilCbQUTzqdD9NmZlPwIoDeLK9e7vT4t4x6daLQvtvpLUizrPWIE6dNKQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777898854; c=relaxed/simple;
	bh=yrivwnKDm2RSmozXSzndBNuQvN4svBIh49r85GFE5XM=;
	h=To:Subject:From:Message-Id:Date; b=IUHli5Vvsj7fSSWBKA++qTTMCf/Tb96QLpseB1zBFnLJdimm7e9QJW9fEYoNfrp22bHQeFwk0RAim8ClYx8YVEn5l6U8bwXAAHAlADYssntqJ3uw0GVac68m/wnE1kbmHqHoluntFCSzf4V5sslgNRxyDtiAq9JstlnGfhBNRP0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=l3eJaBGJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="l3eJaBGJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6725C2BCB8
	for <ddprobe@lists.linux.dev>; Mon,  4 May 2026 12:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777898853;
	bh=yrivwnKDm2RSmozXSzndBNuQvN4svBIh49r85GFE5XM=;
	h=To:Subject:From:Date:From;
	b=l3eJaBGJzdVkN3eKfMKapsxaiPHpE3UpCbExBsbRUwE9fsAD2U8/Iu2OYCSZQMtD/
	 WF2vfFOJC0SGEu7cWVO/Ic3FfFuombO+VOrXJTRu+kRovCFCEYUalmQrSTvAt0HjSl
	 D0oEytTm89LX5SDhOexhQtsBfaW+rUx7J2ASKzJR5EnML3rJb89S0fBCUireRu+JVG
	 hNQTPhcnUYwevrLjyTdLHrr7N2pDoU7qh+st2jnIqqlDJ1ndd7QhlTg0cFgbfSPDdl
	 n96YZNeVSYb63EKFAykxKcRlwvJx4d2X9xFng6mIPn5rF4QL17/Yx+ib0H1rCtg8/f
	 hSnKMbrcHwmMA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A98E2FF886F
	for <ddprobe@lists.linux.dev>; Mon,  4 May 2026 12:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177789885368.11857.7534389651162760414.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5acdcc489fa76290dc382d2b31ea6bacb93eb15ebaedd0462ba4cd5d986c8326
Date: Mon, 04 May 2026 12:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777898853
