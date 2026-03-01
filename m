Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27E5A34DB46
	for <ddprobe@lists.linux.dev>; Sun,  1 Mar 2026 22:14:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772403294; cv=none; b=GxdBsg4ri32jCDrjuZlkttM2ESS0jipmxd4TReRMIv1wW7S6iQLhtfoCaQP6WJgizaM+hwdy3aYS1AtqLNk1GqFxk6x/ncZ9BFh0aJJkDkxnmm9Itg6sdXBzoIGZxehYCNCcz8hhocYnZQHrzsLt4LF7wbxXX+V/U+i8QP5fAw8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772403294; c=relaxed/simple;
	bh=7Fp4xO31vDWpw3pG5YcF5BJXf9I+W8Aa74mGIOrlgBg=;
	h=To:Subject:From:Message-Id:Date; b=lxpp4/wa071f9PGflhjbOoYEBzdA3eFTntZlKpNuDo+xMvKCEbyZogWvxqaPiOpnj7Ov8woRb2r7yJfrPJ1AEiYoZBSAMMk2whgLfYvNpSPKqm54l9fHDW8B8brzjmceLjuWrGYTNtkjowbhcTlZ0HgdvDLSi7uiNwT86tRI4Bs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TKcGjWUa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TKcGjWUa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DCE9AC116C6
	for <ddprobe@lists.linux.dev>; Sun,  1 Mar 2026 22:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772403293;
	bh=7Fp4xO31vDWpw3pG5YcF5BJXf9I+W8Aa74mGIOrlgBg=;
	h=To:Subject:From:Date:From;
	b=TKcGjWUaqEcgort66m57d7V+7fy9CIspThbVRpWVeNCZ781ZlCcRrMShsgLMn8Skz
	 MWDd714YDom0GUqYgme3DVNk7hJ3Z3cLvYYKc64cMoW80z0UPAGXHIqeCydFKm5Zic
	 Ke4AU3/1wIOZ4ubxLjrp1s5klEDd1/Bsih81OHzCN5amIlLMAuTdqak8Hd7+35IkY+
	 BQU17CP7aM0kKEjyzbJR7tn0mYc0yn5JO/8J/D+FT9zbh4Fso4rL77e1p9eo43kxMK
	 5QCEs36XdptZD669PBuu2KQ+S5/DkLe0qzsvq9yNBayg+wxJvcgb21ifXgjCMc72ie
	 UJgHUll0xZoSg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B64DDFD007C
	for <ddprobe@lists.linux.dev>; Sun,  1 Mar 2026 22:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177240329371.4189.169445685642240631.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f8aac7655818f3b55f08d2abf585ef6b44baefe047af8f0742f48a8815ddf073
Date: Sun, 01 Mar 2026 22:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772403293
