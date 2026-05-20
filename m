Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 321504F5E0
	for <ddprobe@lists.linux.dev>; Wed, 20 May 2026 18:00:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779300034; cv=none; b=WVvZljZRctopUkVZikym1UChUbgvFUEJ3vMvWSy09HC/w7PQMQ4CIfzuMpywJLTWjaaCdaixh8iwl8Me6j56VKdwoIOlQeuIdK2ztVNGJB98f1NrfmHYg15e2TkZ+dKP6hlGvxyQhViBnhAQ0BYPScnzrIzE13F4gm8SbEww/2U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779300034; c=relaxed/simple;
	bh=VeeVqSWgUSYyoK03bpQDsUtJlr9f81mY51wPhFXroN8=;
	h=To:Subject:From:Message-Id:Date; b=eqM1eX0n+vW5+Zd1CHcd3XOFFBB3Uhp6qejAgVrAismBEnZ3OsFM/FKunogA6+FmjVicQh7rs0IGOGJOcV2cqVy/WQAH8m3RljDYuQLquK9ERthQPXU+22wzbdaAzgtMZfsLZQfip7R0nudIgF5Fm+dTr9CUfd5AmUHscgT5H5c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tC7CgVjY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tC7CgVjY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C81EFC2BCB0
	for <ddprobe@lists.linux.dev>; Wed, 20 May 2026 18:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779300033;
	bh=VeeVqSWgUSYyoK03bpQDsUtJlr9f81mY51wPhFXroN8=;
	h=To:Subject:From:Date:From;
	b=tC7CgVjY5uLsWD/M/1sSL/X3Y3rr/NZQggBheMUgMvqh+EGfy/MbIwpzZwHUAUifK
	 pOrgHF1wp85ails1iiDHzwILNERM66Pz0SJtbmaorId52wOE26oEA+nPxre9VWUppE
	 J71HfRCYc6vSYhuHNivGK6uEFJOSrNJutPvhS17A8z8ImSif3mCB5e+poQfARgPhcR
	 CsbvEjodiJyw/9BkG4DegZeX6ZeSgePpbL3u9aXKn+Qy/yvLmypY3C0cnh+AxFn3d4
	 uabZwYKChQS6fs2T+/WqRA+E1nSf9sCAOdp0DSL0O0vXv/0IOBlvAtIWSgJiA6qXIy
	 Svcl5qaDkFINQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE2A1CD4F3D
	for <ddprobe@lists.linux.dev>; Wed, 20 May 2026 18:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177930003370.20212.1454837688486218577.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f5a4a1d007983821b63c65ba60138b0b51a507aba406ff30435e569bc719b1ee
Date: Wed, 20 May 2026 18:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779300033
