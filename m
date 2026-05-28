Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 274E83358BE
	for <ddprobe@lists.linux.dev>; Thu, 28 May 2026 11:22:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779967354; cv=none; b=iFJfPEULgHyVyNE8CLeq390PEg5UkFPLje+oQmhAs7iBYA69uJ4sZSUnshq5orm5skHRQYn75Vm/3gB3O2bSeG2yZ+lApbDcLSj/qACrpUDDCfqbWLgHkXBPFErpP3iP26g0nBQ1NB1uzlwpkJL2oek2pCLwomV2ADw33VddqFs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779967354; c=relaxed/simple;
	bh=2hZ66DPx0F0X0gx/NUKOSS7iu1o2At7u9CFBj/v2a1I=;
	h=To:Subject:From:Message-Id:Date; b=cW2dqmjqrf9JxjEwQTh3HBgeX8EXBT++yzpxvrg5edj4Wwuy6Z82gwZwf2RYe02bYKtMg6wYzZskacxdCI1zXUgTacEbqTzG/6qRF9rVjSSlERJIfzd80xpyHuoTHzDTHF8+wCqUEac/n5fWPk5MMEuNZcEOhShXSpFx9bNoyEA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RmjbdMkM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RmjbdMkM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE935C2BCB8
	for <ddprobe@lists.linux.dev>; Thu, 28 May 2026 11:22:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779967353;
	bh=2hZ66DPx0F0X0gx/NUKOSS7iu1o2At7u9CFBj/v2a1I=;
	h=To:Subject:From:Date:From;
	b=RmjbdMkMj7om45N+CeGzh4P9t2QudIZNNdYgRBuM/ehT61L2An15BLyb+vUvAtQzR
	 oMF56e1DD/lJHzMsvb852WBK4ytAAa4Bt0Mys5OsqrwPQdc90Pv3mbbfRp9H9hiI6p
	 ZMIlEON+J9jZ6+YRBHSEPBKuKz85S2dl5BkwPWmSBcHPKj3/LcEKzwdyG/W8GFyZtY
	 ltTdubLKxj8njHjAzrgH7Pxgjyqa02kMqFWBwcirfjbhtJIlo6ZloOR1UUn8s26OU9
	 pGvZoZNdcfpYVpPZI2qRQ17LkFB/ZG5cpfepXckO6s6Vn6oO9veusNPgNaOh9ZBIQX
	 Md2QxZPDLtx3A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A79E0CD6E44
	for <ddprobe@lists.linux.dev>; Thu, 28 May 2026 11:22:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177996735368.28618.17627252227703608657.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 22d12fd3240b56b92d72d10927e766a08baf01974ca411a2ca2146252d9f29dd
Date: Thu, 28 May 2026 11:22:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779967353
