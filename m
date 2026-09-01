Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 286B6471CFA
	for <ddprobe@lists.linux.dev>; Tue,  1 Sep 2026 13:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788270034; cv=none; b=cxPAN8+68TA7gRbhB31HSRrXoK9dltCgQ07Jy/8qJSlSNYMf3mi/eehCn+Oq1lmIWg58Vi0tGZzyfAg7fJ1ErI6gqUJhSfYSPMoQM9QSklv2Ms0DgPZ+aU/RBswQ6XxgIwTm0KJ3fhfn8rkCRhY6Jp1RoQKf4Oy5uoln/Fw2YgQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788270034; c=relaxed/simple;
	bh=7XZBkH2PfeRypxKQXx6jl7QZ3i4wh4RedhM4pjOyV0g=;
	h=To:Subject:From:Message-Id:Date; b=oFFc1VgxM03AskX8Ja+538bJE+Mk9qizuO6p7Pw19jxMnhg80uknDVwojCqhEfpIoOJwfI7ZNSybZI6cnA6rey15pB/4rM24bUYWzSTKTK2rehmnSphYaeRaqbTBZda6C2bK61Y40rvxYL50mbcKXw+eAKRWVM1OdbzseF2z/lk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VrgP+5g7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VrgP+5g7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF61FC2BCF7
	for <ddprobe@lists.linux.dev>; Tue,  1 Sep 2026 13:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788270033;
	bh=7XZBkH2PfeRypxKQXx6jl7QZ3i4wh4RedhM4pjOyV0g=;
	h=To:Subject:From:Date:From;
	b=VrgP+5g7mefb9t0cBqTx7fC+q9pNghTXB53gPNwpKRaxS1zxSB+Mix57kzFzzBonl
	 LzAhgeJU3dtf//d5hufPey6+XPcWQ8lEy3MeVdGLNn5l/rxBwuH/uXvJGpZ7BvKWaS
	 Fufp7p2f0u11pKM/ecMvjk/TyoO8WSLUfmsiWLS1a9vDGcY43HttTqydEv7FyI/2Dm
	 TzQZyzq9CPVFFRwlunHoSnjaBdWqu+T+/2VwaIEaM+Rg+SkPit5cznIeWGriSR2BO4
	 7QSMO5VTZRfhGmA1sUkMJRagb4NFmWRQjn93wKQxr+8vffEKbbi+8/6kGPvLt06BTB
	 629wOluGWos7w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAD82C61DD3
	for <ddprobe@lists.linux.dev>; Tue,  1 Sep 2026 13:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178827003369.19335.3555905252842060033.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 55fece506f3b80352aea20c38fe44bb440a7ffbe3fddfb42642038d7bfd227e9
Date: Tue, 01 Sep 2026 13:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788270033
