Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5AF0730C35F
	for <ddprobe@lists.linux.dev>; Sat, 19 Sep 2026 02:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789786234; cv=none; b=tSWja/I6EIsrJbzyufMz0OJ8XAO8xUAKTNXGACLKZqod7cof4g5E+shob0UjebukuBr8mi2u39f9V+Q8geMJ659I0/f79EMIEJMO/w76FPjZcDwNlVp20v3dSG6GbCbSMAhuIIuFdWACODQLf18bb5id+6LbAM3OOUqvlej81ck=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789786234; c=relaxed/simple;
	bh=FG6QjuQx01NAgABoLCUzTpADtOwZRE5S/Y1QZpQjwBs=;
	h=To:Subject:From:Message-Id:Date; b=KrSr/OMdEElos+08Uz0JtqIh31o8OKfMm6EXbE5t0U+TKd6yHcw9C3aVvaCjoBnoQScAUJzpBCuggjdOkeRWcpphcDpgMln+ynWYYedh6FGeLuhc4QMRK1gvMYljLxDWTCfmDTEiHqg9qXfwLXTL9ThN9fCFazn6QzbkfNPJd3o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=V4CIxVUt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="V4CIxVUt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4E28C2BCB8
	for <ddprobe@lists.linux.dev>; Sat, 19 Sep 2026 02:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789786233;
	bh=FG6QjuQx01NAgABoLCUzTpADtOwZRE5S/Y1QZpQjwBs=;
	h=To:Subject:From:Date:From;
	b=V4CIxVUtDrHmALOGqvk85uHfU8eSajdq328LkVAOgJRO7Wa99V2tjpc0C4I3fLERA
	 /5KyDY5P2L45BRnLblTfmN17PIwzH+OjNatZkBwOuUL4shYYaWYtKIGtZN8VcWdbpb
	 ObhhRjvI7XItCc74lWpxRtBePsGzREfHx8hHWIayGxbLuF9MB3/QSB4JnIVLgPK/FQ
	 LfZt7yFPnBmbWuCc5DpEXw659rBBfT2mLxmft7RHA6LT3HB2p475n3Ki1cxhj+8ieM
	 /UAJm/PhvKb8f6k631rSgDttM16nMJUvGmqgN1IMrVNUn8iyt8MNEACJHnlM09gKN9
	 NQ4GnVrwRhCmQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0656C982D8
	for <ddprobe@lists.linux.dev>; Sat, 19 Sep 2026 02:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178978623368.14858.13567140444484123328.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d709d11dbc3525fa8131494c481162f40ddc072a7fcaeb48ea5efd622fd034a6
Date: Sat, 19 Sep 2026 02:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789786233
