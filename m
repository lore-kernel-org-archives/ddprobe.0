Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49F3E2931E8
	for <ddprobe@lists.linux.dev>; Fri, 17 Jul 2026 04:38:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784263114; cv=none; b=Hd5LXKwCjZ/9ymyMtzkPTWoHPedtzFAsTnlta//5YUqhLbGKRBqRy7d8thjeK1vSrn5If7IHTZs/6Aka2Ktce1YrxPbSharjbamuN7UTGHIvl3PxFMR4yNZkruMGG7HrSKNsQGhG/1xpyEn1WXK8htymLU+tSrnHQqK0wEEBu1w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784263114; c=relaxed/simple;
	bh=pb/4wpYAcN8PolW3rOpByENuzL0bPm9JkVC3HBs8dqI=;
	h=To:Subject:From:Message-Id:Date; b=LBvS26C8qD1RyjsDZldZPdMbz1VQ8RhnThyn0SXZ1dXtjmS1VQCFQaeeoN01woh1N0tl4PI4JzNeiQVfEo43WGo9kTfOlAtYkfzM1+Gi6bK3aASa5ui6g8jC6aye8JZm/82DwkmgUAxRQrldsTWr8bNGkxmm93OiDY5JJ8DKToI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=q54UZHJu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="q54UZHJu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D75C5C2BCB8
	for <ddprobe@lists.linux.dev>; Fri, 17 Jul 2026 04:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784263113;
	bh=pb/4wpYAcN8PolW3rOpByENuzL0bPm9JkVC3HBs8dqI=;
	h=To:Subject:From:Date:From;
	b=q54UZHJuh8mFHYpYHdmMHZdfRt0urnlcmtUNouXKD9v5TzNeGae77Ws05gagqD65j
	 41xfwM2ptIacbutTqmFMDEHRKSyKRrNDid2GjeQEmbJC1VI77Au1mEPGwKRBwVnH0Q
	 O621532CCcITC4khY5Yya6kXFo347ywzj6pqrpTTIWI4frIn2/OHEZUPgWy+fxvdMD
	 7nNevFkJdYLxh0vWjooOgSBo77lpuI6VK3JCI7GYmfBa19669yE6jsEvN7C5px89Bc
	 2zVeCqoSzQNynSjabpJ4LS5jYbO60XuOwoXy+wIA+EFpPsDTmz8co6BwQxKCcDV7sV
	 L4qfu1O/KJeog==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC620C44507
	for <ddprobe@lists.linux.dev>; Fri, 17 Jul 2026 04:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178426311368.16608.18268134697070733801.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8b1ab60c671774256d32eb8b68848b041ce8f358a754e982c2f36cfbc77b58a9
Date: Fri, 17 Jul 2026 04:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784263113
