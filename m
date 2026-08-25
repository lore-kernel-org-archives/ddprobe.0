Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 384743603DF
	for <ddprobe@lists.linux.dev>; Tue, 25 Aug 2026 05:10:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787634634; cv=none; b=jPAuOqo/FbAyQ6bDcT3o7fTT3Lmdxs7iPhSjfYXQt9r/fVI2+QTBMZhW2Qlw3BADgs/SqsPo6nRYVklf8BQ34PfatV8W1qYJYH2/feQxT8UeHzI7pB0PS0PpvJ5l52aUEzFB/rw/mQUfJPh4+OFWuYIj/FVY4SlE781zEG0nkYs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787634634; c=relaxed/simple;
	bh=Bg3QfEufnpTqYnN4U0/mteMwmtI2NFmeAEWjv+0wEB8=;
	h=To:Subject:From:Message-Id:Date; b=K80RuqslDJSQ5fnoiAfxlAnLozjRTgonw/om3ucFoosmQKX68KaXRQP8Ggdg89xWW2BhQpqiAtDsD4pFFLb3Y9z7+5GWN0tvYFvsTk+ngtdkfGUVmNhLLzG7fhwg2RM5PCTBMxqxnyYjDHeDc7/L6wvCyuQfGDmWfFhyOeDt3+g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kgBNN9o2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kgBNN9o2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BCBC0C2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 25 Aug 2026 05:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787634633;
	bh=Bg3QfEufnpTqYnN4U0/mteMwmtI2NFmeAEWjv+0wEB8=;
	h=To:Subject:From:Date:From;
	b=kgBNN9o2fXeJeykLZpaF+6cZ9jlyPG5Lt9YAM/6oMK/yDiW7pTgcO8EC7CwaRR2vA
	 4V0whAAkQzmVjtQS+Gl9citJHdgNp1khdqnf1YXV/gCxqse7s1FB86A8gkp8vTUtmR
	 Nm7aQqPVuSQIlZ7cRuTh0+1FGhAOqaV3HjaovWuG6WIEYh0g+kROhYIxWCATz2UfcC
	 FQp7pGXsBR2hUQYtw1A4NrRlrRVq6E//Li9kaJ1SQbF3bi3dEIQzgtDm9itzyDEpsT
	 K8159kuyR3MbwclXDKOgp7163ocGc8elHwmT1JCGciotFjZUbIxjvc5X6AyQyuYxRU
	 y++nFzIS00o4Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB954C5DF81
	for <ddprobe@lists.linux.dev>; Tue, 25 Aug 2026 05:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178763463369.22384.17079432067898971283.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a41f9ea1013597cce1da444e0ecb59ba82a25b3429a667d1693c7517a75d122a
Date: Tue, 25 Aug 2026 05:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787634633
