Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27FC37262E
	for <ddprobe@lists.linux.dev>; Sun, 24 May 2026 09:52:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779616354; cv=none; b=rpV2+91TjtwMGsA2NaQl6D8p50v0oorrFlD1vcyMjV1O1e7zyXkNSNSReMro4RGXzkOjgm19ZuKKHmMiFiwRgxx4iL35sPjH+ViwaPdPqY3Ru7E7LkIz4+2tQzGIMTp1bqMttNysS68DlZNMRxBSxUmAHdbwJxVB7UDM7sGp4WA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779616354; c=relaxed/simple;
	bh=7pQ+VgQzWs0uaMKVq+UiEPyzme6wdw1Bxq2SLgctlZY=;
	h=To:Subject:From:Message-Id:Date; b=Jr7NTQvaFA7JB8mFtbPgJl+3iGwWqm5OHRas6nbG6IrNfYENSwPYL1tlivX4SMEifevwI41OruoqTo3i5Snb5wlVA/3CxPzYOaN/DRMFrTNemwhrId2wELnWBUUh0tL8ab9KFw38DQFs+s+18XaAtfhk7oqm0hGD6uRYbt+2nCA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KL0iGLp8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KL0iGLp8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1ECFC2BCB4
	for <ddprobe@lists.linux.dev>; Sun, 24 May 2026 09:52:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779616353;
	bh=7pQ+VgQzWs0uaMKVq+UiEPyzme6wdw1Bxq2SLgctlZY=;
	h=To:Subject:From:Date:From;
	b=KL0iGLp88FHa3sl8NNB4sX57KW88drxJ9BA0qUaTAyfH1RBlcrNqgQuhEwtLZ1KzD
	 Fj4J3zBcxKAT9QvcHQfiqBel6allpRaXN7JggjT8MvIr+jcjmDCq/UF5YLq1eUL56e
	 SL5azrwe7//dBPCdrdQPXuAPgegiLiRdyM2u8+eVBem6D4TWEVEizFuYE6++mHd6w7
	 T1PyYrQbfrg77Tc8tS8Hlc6d9n87B3CqZKkyRS04kc6KUMs+fmnSWoMmo3mkm6EUYR
	 rWVNcRBf8DgcZSpQRM32W0cvIkCrhJQ+ZtkCq4rDQLU+QzUfY14FVltI5/EPNPewpa
	 yaPKtIOsTzR7g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8529CD5BB1
	for <ddprobe@lists.linux.dev>; Sun, 24 May 2026 09:52:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177961635368.11557.6877050828776558782.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9ba0fd743dd3502cf6dbfecc969c82ed2c0749fd412a4cd1382f5c804b04caa8
Date: Sun, 24 May 2026 09:52:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779616353
