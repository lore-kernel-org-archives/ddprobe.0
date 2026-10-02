Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44CCE3815E4
	for <ddprobe@lists.linux.dev>; Fri,  2 Oct 2026 08:50:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790931034; cv=none; b=ZuycPKAEPJnTlnVCxvM50mgQnSGhmu0udBHxAgOf+GDsJIdVEX5PRc2J4LbKAqjgKBm2nG3tvLQ1dFz7xfTEEYDzPJuX8ChwdiLtgWTXy1vKqH0Es+LKFrgSl4HShFS9ljmZTyo+qFXstvf8YXzeIjqgHEuoxXXwN3hpXB9dJjQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790931034; c=relaxed/simple;
	bh=+HBeiuzA8oEDFpPCexVCJzm32aq+l+yeZGgn7gEhO0U=;
	h=To:Subject:From:Message-Id:Date; b=a8MUfDNOVana9/R+HFGwxowhFwvZQo8MazKeSzHCpZ9LvZ5+CXttf9x4CMO4Hdoi8NWNXjvACp9UcDlDQpIz+aWwXyV9OXVTw015+dNJ+/AjuDBirnXNPdBOFJaqgOmWYuzMwhwEVnZiuqW7zZ8FR1O8Xnu/iWNEvJ8PfCbH8IA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PxWiKYl4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PxWiKYl4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC81DC2BCF4
	for <ddprobe@lists.linux.dev>; Fri,  2 Oct 2026 08:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790931033;
	bh=+HBeiuzA8oEDFpPCexVCJzm32aq+l+yeZGgn7gEhO0U=;
	h=To:Subject:From:Date:From;
	b=PxWiKYl4DBd/iuzLuEvTbgTtK1wIAKld5cu0NbpQL9DONzzfjqGNW00g0hXP/EZdz
	 vFoOwgwMGSwNPZjAYvIG0SafPDA2CtT8/T6vW/jZEC3P5Tk63U9GmuF76mn9rcZ/4i
	 epJwwFTj/SVz91kbXXZtYZGh8BgWcLCvqoyXYiiNSHapdKjD7XTPbObQVhvWFkVlSO
	 B1qyZY72Lw/J9AaGsC00Ppz415YHHZ2LEU3ipPKatUKJPfX1/1Z7JxbGNPSEDwIt0T
	 dGV0PQbvUbXE/mzfWvsxHYNR2iYKY0qm5CjpDf8qxiafZ4MDW/2eayMfe4cNX0DDTN
	 9ABcm5/nMupIQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9960CA5FC4
	for <ddprobe@lists.linux.dev>; Fri,  2 Oct 2026 08:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179093103368.32208.2859534197321137738.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eb7bcd88c0ad997f14c49bfa4a706b32921d90c5e6430da569527af6ed9f7f2a
Date: Fri, 02 Oct 2026 08:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790931033
