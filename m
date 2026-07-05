Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2570A33EC
	for <ddprobe@lists.linux.dev>; Sun,  5 Jul 2026 02:08:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783217314; cv=none; b=DEszX/Q4oaGbZK89rQcmhyozg2xNOhMxIhX5PRg+Y3JKelHKPxvfzdOmCfJxcEHdTLG9CSVOoA8DlLZqeHqX6NSZjXGgwfMvN5QPH7ItLyT8dDMpi+S7uYUq2sOByngMFAp2I+wVgXsFZCvgRyGAROEuXDBPK99wzkSHpYhuyzc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783217314; c=relaxed/simple;
	bh=Rq/h63p+R5xLMDBQBb7b4F/vjrhkjaGpe1Lr3azkVlE=;
	h=To:Subject:From:Message-Id:Date; b=t4iJQjGDLL4bc4o6tthjHVwAmjsGSB0oJ/0BZzIRpp2uNHs9Bp6wo3cTSN/dJeAZUEs83N/WjIomFELp3udYjaw/Gtuy83v/OOA5GfN3im0r7yFLW8f94x1Oqn+eXd2GG1CDZbIxAR+lCaM+PVUIbQkjsgKIu6GnwUEaf5LiV8w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=affvrf0A; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="affvrf0A"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF6C0C19425
	for <ddprobe@lists.linux.dev>; Sun,  5 Jul 2026 02:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783217313;
	bh=Rq/h63p+R5xLMDBQBb7b4F/vjrhkjaGpe1Lr3azkVlE=;
	h=To:Subject:From:Date:From;
	b=affvrf0AXVNH7CWCgzOiXQb+j8WreGVK+j7JACNHf1p1X8UfHDEybZBK2Uv7hmQN0
	 yZaHNspWi/Gr/2qDhR7tlpVTBEUwWoXRESjZbjRHZsQ+McHuXXwckh3Sue67hpGnJZ
	 lP3Gswo4OGmi3DZa+bOTdDyT1AMOsPE5JUf2nyvZ7YuzOLN7pEHpBqAR7K1z5w0guE
	 j7TFVSD1BqLUIvU3oBOxZA1hLAcUPZWey0yvOQ5xCQpFXiSug3uCIwz1HQ9PiQ5dME
	 BlfEiFaB/0BRWvB150a0lhp2+JbXU4PbUOK186XOKAYjJ0Znufs71iC3isyMw60aDo
	 K56T68HBsXpfQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B07D0C43458
	for <ddprobe@lists.linux.dev>; Sun,  5 Jul 2026 02:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178321731369.31017.12987308701476928873.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c5228c1da39e2695d1c841828ce840787325788195c38ce200d8a704319e30f6
Date: Sun, 05 Jul 2026 02:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783217313
