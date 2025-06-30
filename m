Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24DA1502BE
	for <ddprobe@lists.linux.dev>; Mon, 30 Jun 2025 01:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751247594; cv=none; b=nZbo/If2JgbAMMqHZDgGHRK78b296mJno7W/xChL/IxA8xocwL4IRb2tuP/dJ1zDHNsjRj7nngeblU/7cU8IlLfvv//cGsb4B1Al3fxYFYUh2c/y9//ncu4KJwei6fpGKfTiSUCcZfAdo3XBFG4dz//ToCHpinCd/iHFssrlGHc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751247594; c=relaxed/simple;
	bh=6DEE9dSzIU3kfs1AiLxR1JaTpaP9ODc62NFj7xWybeU=;
	h=To:Subject:From:Message-Id:Date; b=odL+PucdnkMKeHpKeh3zXq6dHfzELLk69wdI12gvdVNfNP0DX5esAgDAXTF0dOgwqHvPHUzYgezEpQaUD1/1VuVa8eR7byYj0s6qLXeVhC+LR6LsRzMiMOYh+iqmjvxXdyUxufM6zAjsi61ryWqIj5evRR2d3EvxdE58sY9eANU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IRqBGcuc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IRqBGcuc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A310DC4CEEB
	for <ddprobe@lists.linux.dev>; Mon, 30 Jun 2025 01:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751247593;
	bh=6DEE9dSzIU3kfs1AiLxR1JaTpaP9ODc62NFj7xWybeU=;
	h=To:Subject:From:Date:From;
	b=IRqBGcuc28qt+CGZrH+zQKJXOFamq39WJGrMiRvIYSl6Ab8VCzca4BZDuSq0mg+j0
	 Myk4WDSRNbadMyGZRMcHiFxtCUFYQMox3USes4EYfexuzlxEJVleZpaHrVCwB/b/ht
	 aJ8BNnKQg94qxMaKJc37MLex2+kaUMdSh4G5yJAQNqgEgmpoC9dfvRw45h5hl1klqh
	 eP3iBRqwlwmP/kIfylcvrKBdSvJPLRppIh6dU9Ro5JtsKjvlUDmvPRWO9IdANd3syH
	 JAKnKf9f/KWy2svqEnxfcigFnFTy3ilVBGoTAcunL2p/XovoiPl4ej6bYILoLxtHOW
	 ZAg7nOxl71KYQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 900BFC7EE30
	for <ddprobe@lists.linux.dev>; Mon, 30 Jun 2025 01:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175124759358.31984.2693250585781159331.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d94826cf48ecd48ff8358df946243802452447d3b7f53b799abb452ac4a7df4a
Date: Mon, 30 Jun 2025 01:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751247593
