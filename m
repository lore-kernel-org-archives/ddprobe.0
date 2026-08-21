Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4496A3793B4
	for <ddprobe@lists.linux.dev>; Fri, 21 Aug 2026 15:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787327434; cv=none; b=GJd9kNLLCTHHxqhsdSHvtnQCJ04DwtA24eqpJDRDC0kmamir3nKn/0JaTynJ/BgZqUt3gEmspIp9zQvgk/asieL+v5uJpzlV06QVb1kKzw08fEmfquekWUZtUVwSf/khAa7pMz/CMrxr5h/HllCUsIT4yj6SqKaCVP4FFmrS1wA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787327434; c=relaxed/simple;
	bh=2PiFG2RnZz53BT0iQAYNxbD2FgAZSp3JprZXaSuQNAk=;
	h=To:Subject:From:Message-Id:Date; b=NzRkZTtERHCHi+FYsxmV3HVEzU5BGRxczDyip3gCYqwPyj2m5yDWfc6TgiBrcAJhMmJ1Xsod+4h/jfl53ZcSKRRO0DTNGmH8Iwhz1xoW3RYfuDKk9fCLLYAVgHsxw73CpFADtP8pNSby8M9t6pmOhi9x49rQMglqeAzAutF1FY4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KCo4lgxu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KCo4lgxu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E0C4FC19425
	for <ddprobe@lists.linux.dev>; Fri, 21 Aug 2026 15:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787327433;
	bh=2PiFG2RnZz53BT0iQAYNxbD2FgAZSp3JprZXaSuQNAk=;
	h=To:Subject:From:Date:From;
	b=KCo4lgxu+H63HIRCXK8qPSbIHbczXBsd5tJ9sa7afIY4wTxn1eLlIIEKcYDeHx/4E
	 Jl/XVZAtLEJ4AQYkbVPTkE5oH7IP+2wM0dPzKBIayoRfBCoRm6kJ6kJcpiwKJsO2RW
	 7erSNb9ragNEokeqc0sZNVzSokz0oGZSovHZUtTf0IY7xC9TMb4HzDjWI1gjoIpInS
	 1KLpij330+ncyF+Ml/Y+b/zhfYiEmwkSia3owSZsMtJseaZJpwIooPOHygICh+s7vE
	 hBAUhvy85qEj5BWu4lzAIug5bsiX1C//zOSqbzwPRLixEQUR2KRI8Mgg5elDJBL72/
	 XAY+LejZ9jDBg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B47ECC5DF93
	for <ddprobe@lists.linux.dev>; Fri, 21 Aug 2026 15:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178732743372.25676.1808261220402989059.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 03a15d427382c3d17f618f8f7c6b65c1205832e992c33b61bd2f848e8fed5966
Date: Fri, 21 Aug 2026 15:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787327433
