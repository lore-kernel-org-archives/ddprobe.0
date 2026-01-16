Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0DD0D2F3C37
	for <ddprobe@lists.linux.dev>; Fri, 16 Jan 2026 00:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768523034; cv=none; b=Tr2M8M4HKI6onnQ8JJ7dqEEvqKFZt1hUummYGUHia1eY93z8p+Qy6pa7gSyF4bvMTFpJQ+jIZ6tftMbPlNlBhbzII1KA9BZK4Ef6JZSuZQ/oWnqAccpYvTIrnFTJ6R88lMSTJCHDjvuaQHJb/01PnX76CE+2ea9Bq8WEeDAFyBM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768523034; c=relaxed/simple;
	bh=nyeM4hd6nHCYzmS2mosC5ognzgMALMsAM0COne37zB0=;
	h=To:Subject:From:Message-Id:Date; b=Dw500JJhWq/8r0LIhMd1Ogj1wlwliZcCGHl3xZE6O7UIH5mzNT+Q230+mvoadHTDqdfY+dRK+CbnK9Vg4JZj5AMQxQfBXbtOq8xVXjHuQwixFPrKltmBkrvGgDIfkYQyABiwTiOGKbGgPU5/xt/ZB6LXGB454wYPd8kqkKTM5xw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Z/a7pVWw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Z/a7pVWw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C377C19421
	for <ddprobe@lists.linux.dev>; Fri, 16 Jan 2026 00:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768523033;
	bh=nyeM4hd6nHCYzmS2mosC5ognzgMALMsAM0COne37zB0=;
	h=To:Subject:From:Date:From;
	b=Z/a7pVWw6bshkF5fVzStBUuYRZPdHW+64mJ6A+a5yUKzZu4Agk/C5YInnWvZC9nB3
	 kFgc3mp1Bcq3PmckcwfEO07q22xPCD1G1pJLVu6/Lj0I88KjO2DT/L+qF24+LAgsVq
	 W4cDpVUKjVzlyCHBh6EDwJnMjIMkWhOmHurqjMrphKfqTocPOOeICf4jqrVOkFDUrI
	 vHAYKaSrqZ+Jy+VcmaOZgr3gZR62OH5Cq6JXDbPOE6cACI+8qOKzoLJCnh9r7BIbv8
	 KJZr4muqewPPMrfyUifL4r3yF9oji6XWC0HSgpVC4MvfoWXC9YGpLZsZIuHJ2VTRPz
	 QWLwTwKn9pLJw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8ED0DD47CA3
	for <ddprobe@lists.linux.dev>; Fri, 16 Jan 2026 00:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176852303357.9851.18221320122310567931.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: db8764a595fef6ab71f69cc35b280ecc4e12357e4b98a899ca3048883049dfc2
Date: Fri, 16 Jan 2026 00:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768523033
