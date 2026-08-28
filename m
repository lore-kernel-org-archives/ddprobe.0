Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 401204028D9
	for <ddprobe@lists.linux.dev>; Fri, 28 Aug 2026 10:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787913634; cv=none; b=edJl15oyJb1ide8xBElB6gMRcFaLGpwjAPfGxRCovyOrZowa9Nd3CWrMFFNsibKAnm/d/Kb7UVHevMUDnx2b9cM54Yc9iwp91QeBTUcdZfPrcWNA0kBecMHMrooud6L9Vybv4Mny23nzguTciTZ5PzPlaEtmiNq3+LIm6TUab40=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787913634; c=relaxed/simple;
	bh=O13sS/LUDM/vffYgGTQzDT80o8yH0nGPlq2S1DLycJk=;
	h=To:Subject:From:Message-Id:Date; b=nTGBbZoIxQkLWoEmjeRnif2pG0tW1kVfi/KQ0cwKouIl4XJz111X+dg+7rQXJ3oterO2npYaPoYv14yMf+dFmmsRfqSvIF4znxy4Tl+4zmsf0rJG2nUt6VbwHS0hs0T2NYsqL/afXtdw7ZjqxDvotnIyBzjGFwqyLo0HWGHMGAw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OMv802Iv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OMv802Iv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4F28C19425
	for <ddprobe@lists.linux.dev>; Fri, 28 Aug 2026 10:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787913633;
	bh=O13sS/LUDM/vffYgGTQzDT80o8yH0nGPlq2S1DLycJk=;
	h=To:Subject:From:Date:From;
	b=OMv802IvXIjU1g+uVkAUZR8dn8DiBe5CPVODpjJ5M4dk/CXTM735o+KGupZMlDAtj
	 JsI8Fm6qxxARdfTrIxIRkQ/Nie1IdHvi2EUqUKppIDRVI0OwB5ypShud4joEIjc1LG
	 b1nLc1zxwJ7LJDUkYwHLbCecjcFjCEnMMVq4lM9KRneX4j/toBNUabEkWQagSoOFLl
	 l8Rg0K3Od9d+1Z2xqmOiZmmt8xvJOmQynSBabluGGcMomcxsQy3HWcmBGm8R0lEpg+
	 CI9XktotoolXdVFrSTTvuh/yNjMpx9HQ5hMcELOdquG/+UQd7NxBIpCoGkrwvlvM4B
	 ldQE64xvUmsHw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0639C61DBD
	for <ddprobe@lists.linux.dev>; Fri, 28 Aug 2026 10:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178791363371.31069.11410528879135865188.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5d69d8cd45823405eb49da5bda8e540b5b2b20f5c22e9f87a44347e72ed2e543
Date: Fri, 28 Aug 2026 10:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787913633
