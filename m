Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C81712D0605
	for <ddprobe@lists.linux.dev>; Mon, 27 Oct 2025 02:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761532193; cv=none; b=pGpkViekJ96M4bx/AVViYJ3JGAyHzy9nH36j285w/w9z1mu4/RFo2no3M6j5aWs4TkLjEuj7SSBzyltxZkDX3p3gbd9py+HAFp546ALcVoFkqRwZXZButlyfASDl8AsR5lM6J8K5dziRAOQtwfSKIKorUzRGCYg6WguvgQFkK44=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761532193; c=relaxed/simple;
	bh=lGGGcGI7MScFpN1Jg97+7RgUuLyy4GRoVTqryLHqQ4A=;
	h=To:Subject:From:Message-Id:Date; b=qW9I1S9EUcsIVgZvr8Nm+OgoOzusQd3FjKCkCJG+Lr32LimzuitToZt2wdb8ttzIG32x191IMiaKubc7eqr3o3lrlFvklfb+/TCimNLAM27JT0jASM4RfO8v+htpI3TUce+w7nQUc5ooLaEKOst4C5q0Wk8F5nHt8DTSaBou6ns=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LvaNFYB0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LvaNFYB0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E593C4CEF7
	for <ddprobe@lists.linux.dev>; Mon, 27 Oct 2025 02:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761532193;
	bh=lGGGcGI7MScFpN1Jg97+7RgUuLyy4GRoVTqryLHqQ4A=;
	h=To:Subject:From:Date:From;
	b=LvaNFYB0FMo44tX1Z3QSzmyh1cgKpxML5jkJ9E05/yVuNaw3Rew4nWvBOfQiFY9AO
	 89YuaRZA5GKGf++LDFRrBoyNEPmhsklLkOF5oT7v9mQeHb7fceEDiuWR15djNPGl1n
	 QGDMROcAxrdAhW4bD+FDtvcTW6HGAGp8Y7o85g0yjzPpnABVsvX3sGNGXZLdoBCVnD
	 nYP1auQKVR5p9NcBWBEFEihitQ4qSyMViN/v/l+S1rocYIO/TQIooudeT1jwDVrcC2
	 EE96thgfFVCAHI40YbVALq/SFZy0bNhBiuQJEA6hVwij39Q9MGjKaEVEWfZMv5Pc38
	 0tTrqh0o/aUjA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EE93CCF9E9
	for <ddprobe@lists.linux.dev>; Mon, 27 Oct 2025 02:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176153219357.15032.16335183901515565812.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e16283478bbf4565748512e2f7e8f51e9d2575e71914bacd029c866a29d81422
Date: Mon, 27 Oct 2025 02:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761532193
