Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BED4313544
	for <ddprobe@lists.linux.dev>; Fri, 14 Nov 2025 19:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763149194; cv=none; b=aHXIMGJN2u53u0mJJCXMzaV3a77JdpL2KziczR8aoVLIKVWqvlHLfq+ODbduJuD/K9pqiOKtYXiYwakwkNqHPdO5wbhClXOxQ9tGameHa1XE2LkVuswqdUSLzPNoziQQe7FltbVE7d9eeEEZwPQqBCwO6fSJJvruJt/Ie9dh/oc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763149194; c=relaxed/simple;
	bh=Xe3sNxe2E9FMHv4+WCC/Sfg/vVJkEZ4gs54cBfJiE1k=;
	h=To:Subject:From:Message-Id:Date; b=OgU+uL/Tqj/HsF27rekKsCXpHCLHlf893ZGOQ84POx1iceDOXP6WqAgmBLTqYLZsmf47vhM4E9JVh6PQD/axAppri3dUkXWSvsHRBMkce81DG6LS/aie5YYuLvm95pyR4DlHtGzDeXVKqblqeMhZzvLv6Gt8mwDRQMvTqdonhZo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Zq8kaC8q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Zq8kaC8q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABBEDC19422
	for <ddprobe@lists.linux.dev>; Fri, 14 Nov 2025 19:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763149193;
	bh=Xe3sNxe2E9FMHv4+WCC/Sfg/vVJkEZ4gs54cBfJiE1k=;
	h=To:Subject:From:Date:From;
	b=Zq8kaC8qpxz50ueq+4LOrQjtR2SjZadBlI/Tu486fLuK2Eg5F7t0fMqYhD1SI3R4r
	 w8eyCXET/LS/R6ZRLDJHZsDWfdxndxcX1bPWeUWrMB/AJ1Q+y/C834ei4jCP1xWv0n
	 CHBU83itw/mAlS40jPNQIyK5Fx+stlvjntXMAfN79K1rV/+3r/JcP0m/2znu3mJmNe
	 nO6zZRPZPVtUEvkFTzcMD6xa8sL0myKLVrTNSEFFjAE9dDeSuWiCzwIprsAu7G3b5u
	 4IT2wf4DPTeih27VCgr6AAOkUSZdjlX48Rg0dpGExUfNzRD9iKqhg+nWNDmt2l64z3
	 mSAXzGRLAA3jg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90120CE8D76
	for <ddprobe@lists.linux.dev>; Fri, 14 Nov 2025 19:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176314919358.7592.5297517804111002016.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3f6fea0d625723c170571c36de634eed740b7890c0ac67d95a8ffe7111af43f7
Date: Fri, 14 Nov 2025 19:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763149193
