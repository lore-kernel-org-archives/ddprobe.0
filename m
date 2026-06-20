Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D71232BF41
	for <ddprobe@lists.linux.dev>; Sat, 20 Jun 2026 09:26:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781947594; cv=none; b=bLtx6oj56i+truMy80BwJENi94PMHlxtyND5BAaD0bYJgG0WWegxrUgAJNUVHkOfVw3fNtJzLnd+K4QrVPilCvuLO4NXUT3CWhu3YRtRE5Tc0V1hObLKYqiCnhWRvJ6TyL95fsbmqBkd1wr9SAwyORhoL57dnXd7vsTYv6rdVlY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781947594; c=relaxed/simple;
	bh=huNy8qVkMiJjVS6NYpEyt9aK3+xpwDv8qzcnPHRaw5Q=;
	h=To:Subject:From:Message-Id:Date; b=ohl9XSsOzIe+TajZVmBgfyZjCNLj2um1QiJh3ZwQuVpXjNtbYCrI2gzQSp0IIr3Fi3kTTiDV4cVeYh+oKPFLX1aeA6/57Tq/XLL1i5XV9SFhWo91gNd3bGvBl76lsQD77y6gAVN0K4ln5q5ESuLR+paFzYkQeBqyA6tb6q3MMkY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=b2ZU3fpP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="b2ZU3fpP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E0AE3C2BCB0
	for <ddprobe@lists.linux.dev>; Sat, 20 Jun 2026 09:26:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781947593;
	bh=huNy8qVkMiJjVS6NYpEyt9aK3+xpwDv8qzcnPHRaw5Q=;
	h=To:Subject:From:Date:From;
	b=b2ZU3fpPGVynkHIRv3+EnFzE9ue1pcwc5HALiHl/sotlhZl3cwiAWlSsL2XqkQFX5
	 YbYQLImUgbcXT86OVWhHNj8QUPbR25n4hRIGCIsggMZFjMzOJChpuvMPy5Wpuvp0Wo
	 qIaiA+J6jd94luPMdglGiDl9SwOS8yZ2Zw0VNEUuUUmdIU+8gDH/fRt6SBLR/xIw8D
	 h5f1DkdwJqxI/nxftI2+SRfWTfcJTtdJQ0uM6oUsuTXgZRSjy+2/TD6KXpU3nqbWNM
	 ZepHvM/QDMFB1vjHqieeoRbMPgKBNgDt92uMlqMfrcuTH+oefENUP4XCAWiJmb93ec
	 U6wr9GJqUMgRg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B949ACD98E4
	for <ddprobe@lists.linux.dev>; Sat, 20 Jun 2026 09:26:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178194759374.646.10334215928148103171.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 21114f3e0f2d64f9eca1b7cea6b310a6bf375d99b6c03f770f523ca6d4098a6c
Date: Sat, 20 Jun 2026 09:26:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781947593
