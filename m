Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 220181714A4
	for <ddprobe@lists.linux.dev>; Wed,  9 Oct 2024 19:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728502554; cv=none; b=J1QJ1u++rJVbXsHLS6N18y8nC4itQKl/AkeFtoFbaqd/Evb4gOtT2P1DdDo9snTO6z+NNhb6hqdBvOcBmgIVjyEbQ+963tYzpKaSR4xtjdDDiTRlH5omIoiW6nzrDZ3ROMy6xJJ/QN/gHCwz7/7WIndsgctQ4JgC+6/EAhPD9FE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728502554; c=relaxed/simple;
	bh=k15EdN5R7Ib8wigTwTAMLhl/QDlmE7QSile/TxYj1Jc=;
	h=To:Subject:From:Message-Id:Date; b=kAfkaMERhw40IF+A++2Pr49OyRIHggbscXZ+tLA46L16OFAAJJyD4wYXfnJmwAIPnbbwGUpsounr4+QcD8/iASOAs9CPL1mqMUCrTmrmlC+wAw/um4v3A6A9tnsjq3eO2YmqFRucmv3vRGrqMInqsAM1hm0GVQNqBT/oiRzo6qM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Yt8zmoqr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Yt8zmoqr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5537C4CEC3
	for <ddprobe@lists.linux.dev>; Wed,  9 Oct 2024 19:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728502553;
	bh=k15EdN5R7Ib8wigTwTAMLhl/QDlmE7QSile/TxYj1Jc=;
	h=To:Subject:From:Date:From;
	b=Yt8zmoqrMIBscjQxaOLb6X1pjuCP45r73MUu4Of93QJleKowPLsJaVsDU8okAltsS
	 79qa3/RaT8o3ZnU2l5zG0LudwfD0kwDcNq8n80MZgjUpe6iW4i3B1S/juP/lEsOg6B
	 okg4X1ZLzTL2Qo4899I64A9blGsZ9A0z8NksWDplYYZC9ULZzwbPAvLgF91Bx4Dyku
	 mZm0RYXKm2UO+ZyHiLCiIqogwlN5vkQRffOdQ7ZZ02yeg5te402Q3W2rTWpJiUJIL4
	 Sw5NIn+9csF3d51oiQmx+FtlOpx1Rx0NLuqkSeLWTm2bY1hdaJ5hgND/bWzeahEFpQ
	 AbJuPuc0tiNbg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9CE88CEE342
	for <ddprobe@lists.linux.dev>; Wed,  9 Oct 2024 19:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172850255359.31465.15993263141727161870.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7a598799352800b1c6616097cc4b3a8c14a86a201a95a554f37790d93779b8d9
Date: Wed, 09 Oct 2024 19:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728502553
