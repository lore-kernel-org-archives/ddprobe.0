Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C4251A9F97
	for <ddprobe@lists.linux.dev>; Mon, 14 Sep 2026 00:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789345834; cv=none; b=hygnBpZW1BDr9hL7B1dw5FqM9ZTN19vdo7JWlCWU7TfjyPbCxo9bfCa9DYt1FjaCByh/eU5+ZjYJj4C9vFBzgsVI+ifFSVd8mNg6x9Sb164xgISxo1MxKnZqXaV/61+JVwAz2emRJHoePXBI2i77lgx/QNkGF7waV+F2+kzKI4o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789345834; c=relaxed/simple;
	bh=AHU8O09o3BMEJMh8irlLIakcBYtoKDhyCIc0QtVLQ1c=;
	h=To:Subject:From:Message-Id:Date; b=kHDAXYwedZpwOTRHMyPT0SS5o9Wz9sxzcfMfRyrGocyywzla5SUkGsTt8+aq0bhltLfpQNPDdu8k9Pf7PR8HzFAHz/THRK2mRI1GhAuCZvfApkhetYLb4l0wKaaSZ1aUP2Fct48w2/CDoEwxBKO/5LAoDNcgoLp4gwt0ndTS9ko=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=K3VdEtz8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="K3VdEtz8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC51BC2BCC7
	for <ddprobe@lists.linux.dev>; Mon, 14 Sep 2026 00:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789345833;
	bh=AHU8O09o3BMEJMh8irlLIakcBYtoKDhyCIc0QtVLQ1c=;
	h=To:Subject:From:Date:From;
	b=K3VdEtz877u1wR6PUCKyC6ilHzbPbRxACipnEPvS8WnxgP0H2fGZu7FrwO60M4mf6
	 bC1Zf2GqayB+HNqhc3Z//P2B01Yadsc8NxSoeDSM/KJanDzRrzZoNMYRDJ351fgJwg
	 ft7LkHc3TSHVJwRxd7HTGJL6Tj1/sUBPYKt7Y4l75/eFHFCEDcZVTGIYEGY/N0h2QP
	 6wre/PzusJ+Qe8XyVqcoKZCwwBJghf3do3NLEVhV1p9PuQLsS/FMSw635/8q3s6FMH
	 J3h9mLupPpnxiRiXUIF4gQ9QozZbQhvGMH2l/QV2TKWgZPy+nxfCsGR4E8C5UTlrBi
	 lfeFJB2Gn5SRg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9CA7C88E64
	for <ddprobe@lists.linux.dev>; Mon, 14 Sep 2026 00:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178934583368.2821.3432314885297697146.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e0516588811693bf8c5ef7e0dfbd0c25f514f5574b27a6faed8ccf95e59dc766
Date: Mon, 14 Sep 2026 00:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789345833
