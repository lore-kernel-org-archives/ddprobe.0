Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6387BB640
	for <ddprobe@lists.linux.dev>; Sat, 10 Oct 2026 05:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791609634; cv=none; b=DoCFNBmhPxQkZSv7HqPRSAPPtAc4W9/z/3AqMo4jJO9bW7nqrZMkySHODyKLBfFEfaIpn+ZvzyMfd8sQsYprilQgymZIR1jLN7a/iMT/Syv/QZAZxi5/v83olyUioN3eq2p4C2aCoTYH3bWjTI+1x9w2jlQXLFsSrcGajGnxWtI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791609634; c=relaxed/simple;
	bh=u7t8BWyhe+OBLBmmginfZ1xjOoNTjml1tZjP464lUl0=;
	h=To:Subject:From:Message-Id:Date; b=g6+VjKAB8Hx9F1wNFkoCQpVGuibO6YK8L6uwhQAl98JEKzOdUHfCNxyy2BOxf0ge3qnuWnJmCgVE0Frwsg+qKDe5GXDxCsbI5MsBPGMrfSdv6fQJ8IizN8U/ISgaZSAEM/23N8st2Y4lHSjJUa3WBzieJ0yw222+5UScbTwkIG0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XgM95NlJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XgM95NlJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E1F06C2BCB9
	for <ddprobe@lists.linux.dev>; Sat, 10 Oct 2026 05:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791609633;
	bh=u7t8BWyhe+OBLBmmginfZ1xjOoNTjml1tZjP464lUl0=;
	h=To:Subject:From:Date:From;
	b=XgM95NlJqWcedMxED/jMLtS9BvPJrRoVjmTNDPG4IK1zkA1bkvXPkr9EEbfaDgkTl
	 Bje7QVigYhpB88nmAn61aX7esmWafIVQbyvVMTL0HLT1qLhS7T1tHibSULbEkg3U4w
	 6vVURXknmbzd7gwYSZdP1n97MjnMDSp/0H1OhQtPiWsye9/fw0+mPlE+4vE1J8RAlQ
	 nNUwXWjWSw3WEd1vJ2rOoHAphPscM7mz/0JM8TkBtA/TUQqWH2NmzxPBeHTB1FHKp7
	 DEUTy0HBQCkXE8xBtFnhblJi3n9WeWcguktBk8UQfDebeeVlAabVREFaa3eXBmwt37
	 xkjpgz7MyUUtg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A957DCA9EBE
	for <ddprobe@lists.linux.dev>; Sat, 10 Oct 2026 05:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179160963368.15943.17568216291301053159.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e2a7d98d97229d76213ea0e7224c7289766dcd175b644e5a1563bb38394b7408
Date: Sat, 10 Oct 2026 05:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791609633
