Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A27683FAE15
	for <ddprobe@lists.linux.dev>; Wed, 17 Jun 2026 12:56:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781700994; cv=none; b=fduVYWLmbAz83r/0+9N9ckxxWbFC0HuVbRLFzpswe9YMQMtjHJvJt06WVi5u18lxmIGlBOdqJkqqfjecKhw/lg6h+l0CN+ONbIqHYpV2laWlEv1lcEbp1qYe53W9rwPasLcJlLbEY5p7ftXYbCMgPkTQuVEzEUjE/Hm8M4OHT6E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781700994; c=relaxed/simple;
	bh=rxvtEeYoUshlcwKJSj6PoOLsXh/jos5BPPVIsuHQFLc=;
	h=To:Subject:From:Message-Id:Date; b=orkBXhsbI3yq5aZDeeoz77PoNQJy2MXmFNqcdm5HE1/JbJ2gdTA0+bSZJqBreWHoNXjKFzYIh4MuPnBYpzbbfLIWpJCC+1rmWEs3CSHFJoUBcCJkCN0pwtaOFM6IV/SgChfVpvwZKxTMGap5A9BLvoh7bmZvDfbJesqSUE1NUeo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Bqumz7vy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Bqumz7vy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFB49C2BCB8
	for <ddprobe@lists.linux.dev>; Wed, 17 Jun 2026 12:56:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781700993;
	bh=rxvtEeYoUshlcwKJSj6PoOLsXh/jos5BPPVIsuHQFLc=;
	h=To:Subject:From:Date:From;
	b=Bqumz7vyx0JA/mpuEPnf4eTED6synlmhutJkDXVdwgcK/8v0zqt12mOwo8lYA/lmL
	 2Vy58/W4W+uw89o72qio1Ux/jEqbEBoWSsB9EV7Y7GvhVHZqtoSfRoZZnoOBUIAX/V
	 eIyRRa1eaW6OhGaQHGQnipxPrbstXRAuK28kpfA2TtTGFaAMUTS5+eNCTv3ckyjgVE
	 uPwrCQSygqu2ACXPL/sCETomk3k6VUNrAorAbwvGIpcakuIYC/EE3WLUXjF+2HS4Ys
	 9qLwMAFRYB/7ypjmRrdkung+/gyQqb+8mM03z2mECL0G97eUTc3bispod6O7KR1TNu
	 kZNYPq6qq0DsQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4580CD98E4
	for <ddprobe@lists.linux.dev>; Wed, 17 Jun 2026 12:56:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178170099372.17479.2874910673886709159.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 460570cde2f27f4b3845ac2fb4a1991b9a04a54858d270641144eec5bdf1fc25
Date: Wed, 17 Jun 2026 12:56:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781700993
