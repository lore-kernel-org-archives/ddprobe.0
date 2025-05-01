Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 53A0433C9
	for <ddprobe@lists.linux.dev>; Thu,  1 May 2025 10:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746096594; cv=none; b=Sg40RNSJTGNYHkodputA5hw5vl0HDb86zJ9p5ZD3eDroP5QU/hmWUs512KHTAxIlbiDMPIo7swKi09nSzFnuzBP/b7xc5FqV4XAaiztagfByMZP8pNi8PD7aqO/1S1MGCL66NEDlieNolaCU+2Isq0QDGE002MdTuB7RE7n2iPg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746096594; c=relaxed/simple;
	bh=jET8utbSsXejnvSJKspIhErEa9nzkkaJt9wavIVaUtE=;
	h=To:Subject:From:Message-Id:Date; b=sUhVV4CpFrv5YinI+0YKWwC/zNkWQEgyNrnL5l2noreGo+XseQ7X5Yw7g3fCBiWhX9ygza/6B6h5ZD7PZajFB88Rtggjg+4QoQ4ZIZuIj+54BBPSvbRh7VsunGoDoNhoXrIJWbMohNjmdTB+FqYBVLmx5b3CmBXR3QI20psMq0E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jLc5mzht; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jLc5mzht"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0EBAC4CEE3
	for <ddprobe@lists.linux.dev>; Thu,  1 May 2025 10:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746096593;
	bh=jET8utbSsXejnvSJKspIhErEa9nzkkaJt9wavIVaUtE=;
	h=To:Subject:From:Date:From;
	b=jLc5mzhtyN6ch5MRY3jQg4GUUYE1YIO02vnw9G7xsgEuZ3fDykBe0h3Eza+XTrOr/
	 MM62gFnlEWC2HYEvMEtU63yNRDS9UrKxSFT597Pc4nW981YA9tmKU0wBMZaGk17lPO
	 +qtIGzhnh/u/5e1z/bIEdFopxbrvxQnvueiqCY8k5YKZpMIf9aLpgK/FY6oyyu546y
	 jK0MImG7QVRyqU0kgIIFTiLM25rAp2Zmd6ZD54GCAY2zIuImkf90vaHgyjmTWNygIC
	 dHoai6CTrRjmdBbgu+bdkucbVL45EXAL5DhXuExW4l/D05nXIIeTEr2kBvyNiYoSEt
	 BzyNY0tZ6zbcg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EC51C369DC
	for <ddprobe@lists.linux.dev>; Thu,  1 May 2025 10:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174609659357.9424.11800822438355489737.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 697b851749bb97758ad8dfd5edd034131b3182b21de48d8814e6ec09c713b51f
Date: Thu, 01 May 2025 10:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746096593
