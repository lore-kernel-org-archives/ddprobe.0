Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E1BA3F7A80
	for <ddprobe@lists.linux.dev>; Fri,  8 May 2026 19:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778268454; cv=none; b=uhj+dzeXU3Cn35f2GHLDoQQ1iQxiare7vD52zELrXfOzgPAhawz9XqEVj6DOaVvS6ICc5RE0EgZ11iakjq78+k6zBJWocuM/6Ntx5F8MtaI13Qx2EBXmFOuOZJn/cHSD5aH6eZgQ1ocGJEETTw7ACokzWWlbgGGg/9Ekk5rBC9A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778268454; c=relaxed/simple;
	bh=7JFwUcQGcikys331QRcy/UxUmDXlC1Tr1xL+taOq1hg=;
	h=To:Subject:From:Message-Id:Date; b=QZXzJO5BsDOmtnJPBpQmj3BmDt4oByR+UqDSUD7w7fKw94SfgrQ5M3TFK7N8tD+EmQKdBN9In8yZLDZzZRPz1mUyAKU9tH/WUZ1Vgg/TecMCSEt+UQQfqaYD+KYo/GPi/am4UFa1rXzHt4TnC5jYR1Pc45cOBlt0PuIKTRYnVEo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=T3aQYmi1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="T3aQYmi1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD20DC2BCFA
	for <ddprobe@lists.linux.dev>; Fri,  8 May 2026 19:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778268453;
	bh=7JFwUcQGcikys331QRcy/UxUmDXlC1Tr1xL+taOq1hg=;
	h=To:Subject:From:Date:From;
	b=T3aQYmi1f9QIAtViDHx++/JQ0QILleKeuOKqUsooYVdUfG7FwNRd9PF68aRJWWsLh
	 v8C+4i63sAaic28MfxA4yGS79zPgzaunVTqPBR8EwJac9to93Pfp8OcfvZ42gmq7Nr
	 1EHD7hVKG8qiJAIKV4NySxef1mUGW6XHCr/yliQwBTI1xiMylaVoRktikagWNk2BeX
	 T0zXTjzEs8+xlgQRymyOqt1E6py8vmtb6/h8YsKKd8k9ihTtwIhYbRuiudSYe8V/2E
	 no1BDv8xN33Cjk5AoB4cpLJSdrR5NeyOsdGr/vUukmYc+cTyZOmd+MZUGjbKGX3xsl
	 8T/U26JICFI7A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA1E4CD3445
	for <ddprobe@lists.linux.dev>; Fri,  8 May 2026 19:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177826845368.22181.6378016650604560752.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6039042ae43e1d724d23e414ac1a055200c5b380e91dcbdd11d11e3ee032f81b
Date: Fri, 08 May 2026 19:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778268453
