Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23018267B02
	for <ddprobe@lists.linux.dev>; Fri, 14 Nov 2025 03:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763091594; cv=none; b=sMOP8037IQdZrlCyZLNB4bGryXUSDa4VuY0XffIC4JkcKZrzc4oO9f1HRMqcKUfuycd4io3Z94hPr8pGIKZ6PFyLbYpmznZORZZ04bh3g1H7lDB8PlO+Cg9e0pZVF2z1hZ2Rhgkiwzyr1w6AwAbwpExw/GDFg0fCcq+xFoGrilg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763091594; c=relaxed/simple;
	bh=FStCRSqdPBLX6OLqWdEDSmnz5G0f9nji5QTyNDOpV5E=;
	h=To:Subject:From:Message-Id:Date; b=eSBGm5ebC4c93CcoUIjGQuxZ9U827zpPyL5vL1cqD8CHHTyaErbcKek1XEj4uYxJgoea2Ax7dRFWNpmy6S/Hg26A3Ppn8sSte2UvUCkJmNuMrNc2VL9iHnE3x9rjRQnlF66WHo9wKX/pAl8rE9XwORi9+Y8U9r3oDteCrOpWyNU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cJl/iWkb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cJl/iWkb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6C15C4CEF5
	for <ddprobe@lists.linux.dev>; Fri, 14 Nov 2025 03:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763091593;
	bh=FStCRSqdPBLX6OLqWdEDSmnz5G0f9nji5QTyNDOpV5E=;
	h=To:Subject:From:Date:From;
	b=cJl/iWkbbEhZ+3hsZ4jOz7RPaSzqYcxKjdrrMOtn71LyIA7tqbWxWOJjaaiHjWqhF
	 pBEX+4vBZLwlPBc6h8pRNLYcNoQP5JsuPixpOf4/IjzD4UiT616FKZVwrnLOG6/xyy
	 mo9ynC9Pro8e/qsBoVMq9ZnDhhdPs43YPNyvE37gItoq9UD2JmGh79tHWbFvL4BrMZ
	 Ezwtq85MOUoSvIYxex2CwOuY77YdG0VcJXDYxuhpzOqzIlLD1w6rs3mjKJWUJ4heyr
	 p6gOp1UNPsSSmV86OLpLAFRGxucEGx++8kjaMIH+5q6GhK72j3pIkm4AGa9ci56NzF
	 pPWouatAluRvw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9ADA7CDB480
	for <ddprobe@lists.linux.dev>; Fri, 14 Nov 2025 03:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176309159362.3582.9641309817214692115.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e494ead5c3d887859e2198531fa965283171db15295fbb56c541c98a6d7f3b80
Date: Fri, 14 Nov 2025 03:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763091593
