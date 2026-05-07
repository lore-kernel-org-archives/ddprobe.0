Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3202E26B2D3
	for <ddprobe@lists.linux.dev>; Thu,  7 May 2026 02:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778120854; cv=none; b=hEXJb4JjX4WYvOJqM8I062PjlxkTqSWnSDIdpaML+4oovO6vVUGJ/mLdYk8MFGr9WXrvmRubLR++dmXmyBBs+wpmX70E+maJnTrNY+HMgktGQOEj7CPK9NzfFIaNF3m2A7oVU5L/x+zkzAFk9ya8EcJSClmkKqpbLtLq8oYY0e4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778120854; c=relaxed/simple;
	bh=eA/LGNELC9vVqES9GtNhvuxtWGP+SX0zJLB1KmvjTBs=;
	h=To:Subject:From:Message-Id:Date; b=NwVQILZaMAMwTZf/zI2s7bBMROV2nOoMh9uytnAqg8+8H7P3gEX7c7fL5edpP8VlEaFAYeJ6FQql/r+T3QN6rIPYDOlPyWBkntQ589lJn0pblMo3JCYnoba0CBDyhE+sw9wJhCgnXVaaYN3QBL+Y8kvo3m6rFVK3DDebGi9Rk2Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tbxo+V2j; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tbxo+V2j"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1DB5C2BCB0
	for <ddprobe@lists.linux.dev>; Thu,  7 May 2026 02:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778120853;
	bh=eA/LGNELC9vVqES9GtNhvuxtWGP+SX0zJLB1KmvjTBs=;
	h=To:Subject:From:Date:From;
	b=tbxo+V2jyKo3K50drKccEODr+f6rB2srQ1FOf/yhDXbhiSDUgEmWAGkJ/JhE1nyR/
	 hjqYI7qJKbLXSRFV7/KogvBitn6909PPwi09U/AdYueFYJgDYZ4JV/vQwc2pH7Qfuc
	 eoDkDTgut3xVnwucAUCOXacMILzLfVSTTkrj+gTQzeRNjDx0ISiyQNiVzDT5aO5vWJ
	 Xynsk6T1fMC1mmhFXlJ9BfhxyBMI33VHML70xxkzOd0zTkeBjQj5/XuKzh1iOSEw3E
	 l1at/9XcfZxkI163K0jC9TvZy+IsqVqa1fzbyyZSzVV43lN31pIfIp7BOFT6ns6eVO
	 YFLTHQIe/88vw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEA19CD3436
	for <ddprobe@lists.linux.dev>; Thu,  7 May 2026 02:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177812085370.26366.11630925337837705750.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6ffd9fd7558c044fdb52c7ff7eab7de0be849b3c9f7b2b551652280583d5c73d
Date: Thu, 07 May 2026 02:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778120853
