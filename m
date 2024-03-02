Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 01DEC1E86C
	for <ddprobe@lists.linux.dev>; Sat,  2 Mar 2024 22:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709419097; cv=none; b=jPytVzYEiJiQvRNxhN9ge/ZpzjpMMymAzwNXDU2JGm05pjbs6JDVZ+fLiYcJteDY0mAZDUnbpmW5GPqGLn6bwZvfFz71EtRflRoubxBs7ojdsjoB+OPKRzsla5UgUrSoKxFBN50L2Q+KnLfca3MwB3CYkA+0celAMMCpaKqh7wA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709419097; c=relaxed/simple;
	bh=lwRD4R41vF8vCGjNgXWyCQbhTuKlT+S7pt+HU3nrp2Q=;
	h=To:Subject:From:Message-Id:Date; b=mM4geN2YozsgVxVMFnjzE9yulXC+z+os0GlY8rQNLxc/Y/aySrN5yuTW31p8axy/RoZQlwgqDp2aGcNPU9xE89ykHEO5FFbXiMg5ldVPF5HN9Q3vONKJD3DMnIAT9bwjRmu+E4yxk+oJSmqlJhhz8ponErQdMT1tBBYa6cM9UHw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GGzIcNNB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GGzIcNNB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7C71FC433F1
	for <ddprobe@lists.linux.dev>; Sat,  2 Mar 2024 22:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1709419096;
	bh=lwRD4R41vF8vCGjNgXWyCQbhTuKlT+S7pt+HU3nrp2Q=;
	h=To:Subject:From:Date:From;
	b=GGzIcNNBKlp1ugTYUT8JTsKG6eF6moj33uJfhHyBrCxCk1rL3B3gzg4K5eOSgk652
	 x9mTVPTMfl6Ez3jjcyy/DkxzPRfD4Fd+Ym+jp1D1Tma1KFsGo5FZE53YolMMuh3SmQ
	 /zIGhSRGgyy6vavz33Cl+65Lfd38TkikEZTA/Yh96ovgVdro1uQiIIYqBKFh0qgMgZ
	 BbDXtAkH3iobfpIQTkEmxZIR8vL8mCQfH4IiAixX3Ruw+yZOfy+C999PwEHouJYCCS
	 7uCOgvXtQ8QDcnTzRVuWAaodW9SuRXjERS/B7qVquwdHsBOX9DeiCyWCciCUlJ1ZeR
	 WQKNoEiRQZloQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 60A91C54798
	for <ddprobe@lists.linux.dev>; Sat,  2 Mar 2024 22:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170941909638.8786.11126676406172848876.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 11dbe1c84bc9ea1021a2f4c5104adc9908ace3863e25850cf3b6ff5c598d72d0
Date: Sat, 02 Mar 2024 22:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1709419096
