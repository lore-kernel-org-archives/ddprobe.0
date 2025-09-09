Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19E282E3B19
	for <ddprobe@lists.linux.dev>; Tue,  9 Sep 2025 04:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757392194; cv=none; b=ihUorNpRuuIE4NffF90FoH92lkZluS2KFkL17OzCJIG/emRRDO/mY4A+U2dlntOF7GtPmTs37wcOKGR8FPqApHLhmaR/0uKCLlX/pAY4+79pvgDZWd/cxlNr5poeuCRbkklB19ulIvc9PJyfZFO0fgi8v2Yk5sdPkmHqex/xlvI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757392194; c=relaxed/simple;
	bh=sO0WZ5A2x+uaCkpv6JHArkbHsli/co343l80JJI6RDs=;
	h=To:Subject:From:Message-Id:Date; b=ZljAoVI+gUuMdVtVvq9riPmCyde3E8HhNMwJnwSLWz67ANYN1VdBEHTRAyg+6lv472aF53Yjkclf9HsQsWpo1qM4kZ7CuS2Zt0sz1pcDmiJHrmveKj+6XkR92IMI6am24qNPG2z8e/X/GMquUDlvqcH8dLkwKeCagEySbNqkqko=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UPtdRqub; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UPtdRqub"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2659C4CEF4
	for <ddprobe@lists.linux.dev>; Tue,  9 Sep 2025 04:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757392193;
	bh=sO0WZ5A2x+uaCkpv6JHArkbHsli/co343l80JJI6RDs=;
	h=To:Subject:From:Date:From;
	b=UPtdRqubkfkD+xxtI8YAG15aeovmO3K8neC3yLtxZPD8G7LW6yF15iSzyC5Rts/5s
	 mWmuSITlruxfWBuZ4lOA9tYrCR5eXBVMcBQiQGmKVA4OJGCLmlxUlZTVvothXT2Mxp
	 CQ+9kf9H/YdanVhVVdTs4Oaqx6lwIY4HjU8wOJ6hn3QibhXcB4caSftw6EVEysS7fF
	 bU7glaVi0qWP+Sf9JnQ+a2rSm3+Be57mIh8lynH2/qeTC+iTkGJC2Jpyffds8g/nfO
	 tjW4iaa1orDiukHxFst31rjC7jA6iCdVsKV3YFoAZ5pbOCe4dXINKIM3rMovOrIaAy
	 b3BX6d1dr/lmA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90857CAC581
	for <ddprobe@lists.linux.dev>; Tue,  9 Sep 2025 04:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175739219358.14143.15666581788830858472.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 62d06942b103c2d693cc9fb57cfc5ee5c1ce5f119ffeded1e68804a97a659ef6
Date: Tue, 09 Sep 2025 04:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757392193
