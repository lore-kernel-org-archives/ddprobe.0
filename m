Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F8E739099C
	for <ddprobe@lists.linux.dev>; Thu, 23 Apr 2026 19:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776972454; cv=none; b=LAdTm+L7uIbK0pU7mnpkNN9Gxfjm45FKfTSIxUOL5+AGb76cAg2IUzoKSxCL9fY4xHeLdoOoOZXbQzfunVd2pMiIxVUyEBBwAMSD4mNJTy5g7WrHJwmWs3ce0G8xRCZw+Qzph4XKDvbpp7jkmMtYDckDnaW/xX/dDjHWjAgcrOg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776972454; c=relaxed/simple;
	bh=cuTuOd5p2tyPxeh6V1P9k4EsQslxzVddd2AMxLel8nk=;
	h=To:Subject:From:Message-Id:Date; b=FtKqP1c/y5ZgUj49pbHYUPkElbLPiMRLbutd41Zw8DNoZY7+URNFD6T3Q8JSlcn1XwACaPy6piBx9JoMgEanJefXQlwuZj+fG9zik5+pMJo/o//OycuQzffV7yTOV2X2MC3FV0HEj1qSmXEC86JutZLEW5Xp2bGgyIH/ztPBDXw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pNTOnDKk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pNTOnDKk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9EB6C2BCAF
	for <ddprobe@lists.linux.dev>; Thu, 23 Apr 2026 19:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776972453;
	bh=cuTuOd5p2tyPxeh6V1P9k4EsQslxzVddd2AMxLel8nk=;
	h=To:Subject:From:Date:From;
	b=pNTOnDKkqc8gDVO4ZoP4E33asNrPHIcqhgysfFMXuox+64vHFnWGu1Er1qY+JnJkJ
	 qjhkyMsvt7g+EjqlE+G8fo1ztuDvlyiu1fqV8F5HzZKW+Aonl6y/FGfcfhDaF+dZjc
	 1QVgTDTVTAbC+FqIUERZMigwWMi6YDvbpttbnYirnOIUfCBwKMMwbGJoSIjCmYtQ+8
	 lALmqXI1Xac9yc0Uf8PXRtFXrmJrTQBaJZZgTTfkzZT/4s8Lbgd3xUOcpdfKLWRCVh
	 hrydpl/SAc6L+jf5BBEf2zQ68Tmq7pnbezFCjHHF1pJG60+FzMhFqywpg9ZNPNvsxl
	 ly9+EbkTWR1Fw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACBCFFDEE45
	for <ddprobe@lists.linux.dev>; Thu, 23 Apr 2026 19:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177697245368.8400.5075931242533461374.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2b309133dbc945c82aca7cec90bd1aa3337cfc925f8fa0c3a4795e078be778d2
Date: Thu, 23 Apr 2026 19:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776972453
