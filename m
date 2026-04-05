Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BD8A40DFA5
	for <ddprobe@lists.linux.dev>; Sun,  5 Apr 2026 16:05:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775405134; cv=none; b=BMoLs+KvbieyILmOpkNGHKnCBP9wnXRoI+vg1/CZwdtQMToC+unn9BN5lT41TCprEihVRu+fjO4khoGR/uwpiSs9FxqgPyRlrLexv1XOqr2c57UmVVpRtW+ZEpARsG3NPagmK5UKiIA7zRxXY5gTKYRaaFyTvlm5S7ukWagDeU4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775405134; c=relaxed/simple;
	bh=pdbfggeHDXcFFFrevgk1JwvRJqUF16Wr/U/W5mOlQyA=;
	h=To:Subject:From:Message-Id:Date; b=gugrkH7nSu2HRz3ibQKIsEXCU1IpNjR7a8e96dsP9hCjegwYWRmx1rjio7ii/Qsecc6oPvCb+aNg3FSk+R8v+Kht0USR0vhmuvh2gyplW4Wb4btToAqMsXNHM+Drrs8JiRQn+tHUR02P1LQV5jLRYnrYxBtJAgdPsiltMFYib0I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vLjjwVHS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vLjjwVHS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C7A97C116C6
	for <ddprobe@lists.linux.dev>; Sun,  5 Apr 2026 16:05:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775405133;
	bh=pdbfggeHDXcFFFrevgk1JwvRJqUF16Wr/U/W5mOlQyA=;
	h=To:Subject:From:Date:From;
	b=vLjjwVHSs+YaYmiTBVO3/rAl869pEBzGE+caLHOMoTZT5WzNSncarWaY2YY9HD3cO
	 ayGmWfGh7ZsPtz3BpEYDAq2admm34DYEny6OZc+3YuVRmDtcz0v77fl91eJjA6fxPL
	 YPPREHSViypFvJrhOePJM8RSrX58Iottv0gQd4ubK2vZvvFnAslC8xPFsiIT9x//dO
	 t65T70gD1DwDKwBlBhZzvwSXfOuonRXizDv2d42LVzZkh/H2jTuD3XiRoPYVfC+XbJ
	 gZzOXDplZU/AKTql4tOLNdVMNH5TIrweoRKZbSrdn9SsovPKmKB90226igz+GA8zim
	 r0fzJGJuZUcJA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2686E9D80D
	for <ddprobe@lists.linux.dev>; Sun,  5 Apr 2026 16:05:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177540513369.19310.4399758209284877027.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cb84b3648d004856520e8071cc6dbfbacbf4cd8934228779fa9d53a07cd2cbdd
Date: Sun, 05 Apr 2026 16:05:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775405133
