Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 69DC013AD1C
	for <ddprobe@lists.linux.dev>; Tue, 18 Jun 2024 17:59:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718733563; cv=none; b=NypuukIXRfKsdW4X1WJj7eED/U96bkEBhg2S89AU2cShNTJFX2XW2j9WyOPRM+JjyF7azusBlxbvArtc9HXwSpzlkTo9qfQTfc+7U2W3+qM2WCgQJuTXWkx7HAFs6MHEwpTpZonzzvE3F2MbC/FCPT2vSWBlsesuY1gR0aXzwqU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718733563; c=relaxed/simple;
	bh=OJZAiR9UOr2ntYvUeadabNU2iOsFUrupUYBFkrxk/bE=;
	h=To:Subject:From:Message-Id:Date; b=OZsCd1IdXVjWxkjZnFJuQYa3ba0z9zdF+vbUiLiTwqCt3+DhFDskRN/Y24vw6YaBOj4n3zw06QNozaVBmbzJpL0Fz+NjE2Trf4ccbS5betKgIMXkrkQWk+yGrMy7oMKGuJCnvpybZ8TiwEiZl+iIPJRMGUVfODRW+WJF0xdoM6g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=G5oyLUiq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="G5oyLUiq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DFBC3C3277B
	for <ddprobe@lists.linux.dev>; Tue, 18 Jun 2024 17:59:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718733562;
	bh=OJZAiR9UOr2ntYvUeadabNU2iOsFUrupUYBFkrxk/bE=;
	h=To:Subject:From:Date:From;
	b=G5oyLUiqZecQ6R5LQmz8SRqYpSqvGp2ftSvLwZhi9LSKT5CUtVwOKjqlkqfb2ah7X
	 t8bj6ud2yIhGPxQ4JODOwanYp2i7vG/MF2O+Lk2SUYvV+vnjl4yjnSS29owz4XThW2
	 3AnL3DfJEnBLzpdYcZK9zV+YaBRZfAMyTVxJRojf12xrfA69tlS6qBGRFBqAFoPLbm
	 eMD673KH9EZJO71hbmUhN+6+fSJFfVhdAi2dTsfyTm2zSFOmTBoCpRNLlJU00KWogg
	 K1fgacuDDrxlwjDj6BVITU9kFYf+11yQCXbM+q5AjzXIGJsBw8veSJyGyDEUl/1NC8
	 VB00pUaLCq8TQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CB7C7C27C4F
	for <ddprobe@lists.linux.dev>; Tue, 18 Jun 2024 17:59:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171873356281.20391.17141582782319893873.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e98932455f82a82471f53eb3f25c00ca9fe70ad1646791744b852fe0115c87be
Date: Tue, 18 Jun 2024 17:59:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718733562
