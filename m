Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4824A21C173
	for <ddprobe@lists.linux.dev>; Fri, 28 Aug 2026 05:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787894434; cv=none; b=qm3P6mAPtFYX5ZLD1ZI/0cU3tHappMXJnEy2qweTetHoMjOLxpjn9ojXga3852Rp8EMECkFP+UKnWEW3kYUlxACQnG4oFWVW3hP4h2t6eaoC/3fZFKkJU90L3Hs4Zig+IkuraMEJupRTGS+cEYoWEEpLNBw6juQstStNrnQuO1I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787894434; c=relaxed/simple;
	bh=K4NtFCZO1GAgngpsBko8rSxWILKhUZLWpUp9gRXG4yA=;
	h=To:Subject:From:Message-Id:Date; b=RbVoq1ZqY/Gy3SeffB9yR398szw2sceAJPCV9TgJr5Doc7ix0NYL/XjzqdKZKOyvJTgF5I9xHf2N3RL5eD6s3bdMGe52dWVyR+fm3jNleQPCwLDbii3dKrnN/rLbsS9uxXa9fEt97WiIGYm9JxAqSp2gEnHaiA9XKR+FWLizmNI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qTRdX7Tt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qTRdX7Tt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCB46C19425
	for <ddprobe@lists.linux.dev>; Fri, 28 Aug 2026 05:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787894433;
	bh=K4NtFCZO1GAgngpsBko8rSxWILKhUZLWpUp9gRXG4yA=;
	h=To:Subject:From:Date:From;
	b=qTRdX7TtAyqbhN/Rq33gCKFZayBiyTL4bFQxyE3hqiMtVRoL4vJq2ssYjH3SEfghA
	 P48E1EtuFfqQOmGBrdepBsBWXJj+3ysb/3WuoGT/m99fHd7BxqrdQiejXwABBBD7IB
	 OkUuvBb7OQVOO993BWJdiYKaOeBumLEDZRO8io2QuuDI/GwqTHeHPlqa42epQHaABy
	 kdDwRFqNBI9NI/lsbTPLNtgBBBjqyseOQU4B/BLyaewadhIUHHxiygKVPNRto1U0Rs
	 TG5Ad6dLoU7UmSMJHhhhPc5ZoLI0MnE3/jJ0tN3FxpqAkpfr5bO+GY+kI+ORG/vPLa
	 j24S/eLimqBtA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9D49C61DBD
	for <ddprobe@lists.linux.dev>; Fri, 28 Aug 2026 05:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178789443368.2042.13696238413626422553.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7dda344f9bb251d37a2e47a947f89c6b6d206f16d2620c0f8dc2adb5af35b8b5
Date: Fri, 28 Aug 2026 05:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787894433
