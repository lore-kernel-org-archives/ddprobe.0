Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B1751AA1F4
	for <ddprobe@lists.linux.dev>; Sat,  2 May 2026 19:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777749454; cv=none; b=ilosugz3i3fGdvZcuG0bC13qfIDUQLs0GfXeTaah1bH+CgLx/Xv2VHTTFvn9UmAICqy/0PDdr9g6xstr2Zvyeaa/voMFbDrymABQE+G5XoDxQ5yF3j/y9QIykKyyjmuZHnBOgF/25gOc1lkXFR3Ay3KiPMV0b/ku79VeOYziaPg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777749454; c=relaxed/simple;
	bh=5rJuwa3w6zQtseJcX9AlN2W0W+G/Bodsku4KyrYKo80=;
	h=To:Subject:From:Message-Id:Date; b=on+Qa82O2Ckclyb5WwsqKgingb79tnkKSQiDuUCIyY1yF9wpPn4DArHAO+w8KK7jbfTMlGuoYNtkSdL0LZDJ9bfLJPI+ZDxnyGOJuPjyKrXAAd4uUrOTcoGDNcnKsqspIql22v5/wOj6E+tuMP5uUlgBYims6e4mt5y7bnwwiyk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IHhTBiYt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IHhTBiYt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD678C19425
	for <ddprobe@lists.linux.dev>; Sat,  2 May 2026 19:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777749453;
	bh=5rJuwa3w6zQtseJcX9AlN2W0W+G/Bodsku4KyrYKo80=;
	h=To:Subject:From:Date:From;
	b=IHhTBiYtSS6oBrqh2M7wMnBvheuMWLM4GaGn8v7sYZHFIkdF1GNA4hV6Rl+5p8655
	 PhQA5RM3XzXLfhaML1EF9irg7iV+dxnLhMthtj00/iMlu0UlDcCMoPkNYiKtxpybQG
	 fEgsO/eHwVnmTkpmYNP7nnff0VrHkerfTSyu5m8/NHQeacWAPCnp59zN60+a/DSeqK
	 yVKeSautZQgHOKuWxkwUFbhoKWlj6dTYoSo2T+6QC5fWdjEWPIIKLBkY4HrVX0+36q
	 sMEqy6K1KziNNupb4q6sG92dsmccOVuONo4lyzbd6+YK09+toWlRJJ1Kl0KadcT2zs
	 ILpL8/M56ldbg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC89CCD13DA
	for <ddprobe@lists.linux.dev>; Sat,  2 May 2026 19:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177774945368.25786.14586377083632904818.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1e192c02fba92c7f23de112cb582628c7d5984e249095d66f37baace14307dea
Date: Sat, 02 May 2026 19:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777749453
