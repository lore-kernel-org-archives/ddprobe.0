Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 54BED2EB10
	for <ddprobe@lists.linux.dev>; Sat, 25 Jan 2025 08:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737794154; cv=none; b=HpFCsWckMJhpxlZvvIGaUNYwTwlxfnC5V7Lp6eKTMVw8WZpldvrPi/Yq/YaNWp/H7Od228dX3kjoZyrJ75nasTQU9up7MF0fB4rXcqSDihhNNPZhtbKcOLpsIe30qKmSIjBzzE/WJhbuAFAJIToWIGVydU6722Ly7skP28WA7pg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737794154; c=relaxed/simple;
	bh=y8asnnZeLC4/rU1dZXTeAg+toaqqyzfND1xFfPETEA8=;
	h=To:Subject:From:Message-Id:Date; b=NDtrH7h6lBxAcbBzZCPFXdI+QTlW5oFahtIyWFmGlkpiTZ+aCRHPQ1AO91QYMQDM33GvdUp+u/cNrzAdOxVM7VnhB9jO+oTMd95YskYWK7Kr9CN0dze7dLudhgTuBDKWuVwU0V8YQFTvHeCYgLFYW+x2FLIi0DBHCLyGDAue7Ck=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=c6AYcUux; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="c6AYcUux"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB314C4CED6
	for <ddprobe@lists.linux.dev>; Sat, 25 Jan 2025 08:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737794153;
	bh=y8asnnZeLC4/rU1dZXTeAg+toaqqyzfND1xFfPETEA8=;
	h=To:Subject:From:Date:From;
	b=c6AYcUuxz/d3YtALqFza3Fz8HS6KGUzJYbVgeNyBbQrBf5xIfF3wvc4lkU2yvBF0m
	 3VQQoam4tgKDTIrsC+zNmWynRAEwuYZZYC7VMizSReM/yxyDDrrVuAHXS2QRtrLMIV
	 53CHA/Y2+e/WYz9heGLQefFhs3QYrwBnp3grcNyZHBInTl64Sny87gFZaoBdE/YVXA
	 gG5+4i/pnGaX/z8zCt3E8C48sqZKA/5qqgJm6CYwtnIOvIa8U0HA3FY044C1hlpXQm
	 ETLGTIh9QQtX6njm7gZaf6Th2ufMMsGRpyJEKgyLDP2NRXz4rXyIhOnEvc3FJvIMAp
	 hOVkD1Qx7Yy1Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 958A0C0218C
	for <ddprobe@lists.linux.dev>; Sat, 25 Jan 2025 08:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173779415358.7856.8937099537575131449.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bbaf84279f42c4bce48c4a891f70f1409c82ab25ba01c824135306ef340c58c6
Date: Sat, 25 Jan 2025 08:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737794153
