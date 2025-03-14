Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 400EA204863
	for <ddprobe@lists.linux.dev>; Fri, 14 Mar 2025 19:18:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741979934; cv=none; b=qxibHd1NwLscz39n1Dm9pAnTPvg5CuALV1j5EgH4UAwz3ncsz+kgG76JY4ZFMgfF2Eqoz7vjVSsgEZ2/1t/2aubUmrW6IxvS8NZBvTJV+TpXKMr2iR7inTbnNanaFy7XK79rMM4uU9hdhF4004EP2sCmFfH/I4Mm3p2c+fHN4Qc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741979934; c=relaxed/simple;
	bh=BRLCqK5SwBjnxmuef2e4eIakzegpUNro38x4KGoeC+o=;
	h=To:Subject:From:Message-Id:Date; b=V7U1Vsf8vbus89KSWjOut8W8w1j1FTBj1EA5yRWbGxZxI+Bed9u2q/mQeMP2acUeaPOCQOU091ZOqBfU3tyur0eY1C6YUvvpvEuRvP845T4vgcYYeb4jBazeGpdAlIEaB6F4c+CMvkkPwRKlISnWMONBS7mlPPIjfOoq3ggy6uM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ak9NPFf8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ak9NPFf8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD784C4CEEC
	for <ddprobe@lists.linux.dev>; Fri, 14 Mar 2025 19:18:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741979933;
	bh=BRLCqK5SwBjnxmuef2e4eIakzegpUNro38x4KGoeC+o=;
	h=To:Subject:From:Date:From;
	b=Ak9NPFf817HMkoDaYreJMx3q8stZukR1U8nRLGEiUUuzSK0da6C8yTqtghyH9fhkN
	 2F6IxBUQcyzNuA8r1Wb5JEys3zBVGGkjH50qVFKTTAEdrl3W10S4kZgPh3Kf8NEtfa
	 ATOAs6r/AK080R67Tehcq+nDjaz+nvFbWaiZuEGMwT8TC02E2cAni386yTfM2DSBhl
	 9QCOB+6toInL8DHbzTNL1WabtvK+f9CylxkNQkAxagQJ4QWSqZ1eLM+GEX6PszwqHH
	 xrw+dEaUZmAGM39FxRvL2hQbShs4lDLglr568LdXIIWnMb66v9K4l3JTw3SQU5pemk
	 qOqu6YxgZ8ImA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7A02C282EC
	for <ddprobe@lists.linux.dev>; Fri, 14 Mar 2025 19:18:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174197993359.32582.3740860931080356680.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7829676eb8a6e68efc6ebf01e301b9d488cd142751df9b98bfeb941fe21d32b3
Date: Fri, 14 Mar 2025 19:18:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741979933
