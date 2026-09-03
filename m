Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 687532E06E4
	for <ddprobe@lists.linux.dev>; Thu,  3 Sep 2026 01:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788399034; cv=none; b=l0FtvFI6QtQG/s7/ccK5yPGclsIPKleCrzTEkQWeu/NVNwPYfmOv8AxjaCpe5sa3qGkPt8xSCLLVblevC8S5H1mTY/J4uVSzA3G0uvP3tlH+GvGxaMdDysrrq+APWnVwz9PxEx6yQ8Yc+HyNyRmb1lRSFt4Mva4tKli3BMhVTpc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788399034; c=relaxed/simple;
	bh=E3pGHYdNydIHiPlkpOJtH9cENyFcWGX7HeP3ZrGKP3E=;
	h=To:Subject:From:Message-Id:Date; b=L8db3V0Wn5zlRk54prg9PS6lxiuZdKCakUvq23SqKYiFiTNyMP/kvxCoHxixKLgtNn3OG0eEezsqsxbleWcTCLQKXMfTZ8KWJdYpDQiYyxjykTE7Gu/oDUisCOQNu0884ZmLixFSiE/WJcYbPkKQy/K9Ol8FTJ1Pt7lrd7Ui3YI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OZxEN2NA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OZxEN2NA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D469CC2BCB3
	for <ddprobe@lists.linux.dev>; Thu,  3 Sep 2026 01:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788399033;
	bh=E3pGHYdNydIHiPlkpOJtH9cENyFcWGX7HeP3ZrGKP3E=;
	h=To:Subject:From:Date:From;
	b=OZxEN2NA9lMrGKP9NNrmf0mrXhiKUYA2Vf6xSMTJv8tSVvzv6Gu9XWFoim1jRcvXX
	 13SBkjJIIQw3WCwyA0VQPHWYFUigNE+tim3jOvgLRln05c0qxRgrzT0o+I3VDGd/jI
	 CvbJ8rsSaTzKZly+JA2UGDXgt/QIz79llQObMTWENGFgTcgm57WVTqhjJH1/TCx9/w
	 aYNxvWKusBNRKJGWiqI7Yu9UOp8zU1t4lct61daW4feECZ+Hs87DrlNgw9QjIT308G
	 9JpaOnymR29aMOdYxYdjZpaULft1eW5NaTbaKjLsQRoHy5YCukSO53ziTui1OG0oKg
	 pPtXvW82t26wg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA5A4C624D6
	for <ddprobe@lists.linux.dev>; Thu,  3 Sep 2026 01:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178839903368.5361.3093658289335653423.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 75bfa5bfe25fb137ae2a450c5c8160e203847df337152f74685b28d6103865fe
Date: Thu, 03 Sep 2026 01:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788399033
