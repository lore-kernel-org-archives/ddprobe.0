Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 441FE2E88BD
	for <ddprobe@lists.linux.dev>; Tue, 19 May 2026 03:40:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779162034; cv=none; b=uRZ835F3FCKepFR+Cl/aNmzujDU/krCTzl2+Afdvw9pR1gx4XuPGMoelrV81RRqp6GFcYDIKGvBN6B3K57el1MiXWiMmMFn3hEBSpjIc2/cIhNVIfnD2ZHu+Uo51HZinhwA+CCSOCthQSkF2lXr+TD6BPUgvt7H1/z7WI8uIRF0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779162034; c=relaxed/simple;
	bh=q1owleVpoPIUGkYWD8/83k+mQDXMY8TMrpvY9LCivJU=;
	h=To:Subject:From:Message-Id:Date; b=JgYR68z1+pKQX/iVs22yj9Ds1lNNsu8fM/VuoJy0VQsBcU9i75zqVbinwxmF1iJhHOMkoQMyspuXUuuDeV4rDuyjwz7jVuNGVAnANlLU1QaAA3sF6m7KYzBTRzL7eKVnU1fPt2Det9mdL7ucXYvfj4yG5//rZ3LpsB0e8xF9K3U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hWxEnfVO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hWxEnfVO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C65DBC2BD01
	for <ddprobe@lists.linux.dev>; Tue, 19 May 2026 03:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779162033;
	bh=q1owleVpoPIUGkYWD8/83k+mQDXMY8TMrpvY9LCivJU=;
	h=To:Subject:From:Date:From;
	b=hWxEnfVOv+40aplVuUB0zRrfd/AqA69/oeR3RfjsBHh0W8eBdf8kAE1YZZuY4MlDR
	 fO5+AbqRgSf5z1J9DrTibQkSBBs7kBDAqPBL+K4PKxm9Ip1JEMyEbLdQCUxLqMGgmB
	 zKbXwjauOC49SVsSE/r41A9+oMIM2NpzojArXow2koeeDCx5DyC8LmDnDRwHaBebTO
	 4EhsG0rik0xAgnhL7x/Aapu7WX3zhFfJx66amFTSi3fWHtAQphOB/L0/5G4E+DfZ4M
	 +hrvE+t6NYUsmUEGVpaJKdfy+5H1G6D+t4k22GN3B7LQNPh0DnyjcdiMlnaT3XL/gc
	 4xs5H5+rVdTfw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD33CCD4F3C
	for <ddprobe@lists.linux.dev>; Tue, 19 May 2026 03:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177916203370.5387.1267366732043822268.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7fbe5ddc40cbdb8c2227ac2944d66508be94c1db2c2c03edcde06c95bc5c9f8e
Date: Tue, 19 May 2026 03:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779162033
