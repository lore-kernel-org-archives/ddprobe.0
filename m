Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2534D288AD
	for <ddprobe@lists.linux.dev>; Sun, 28 Dec 2025 11:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766919834; cv=none; b=FOZmbJjYY9jsgFotQiUXk8JFR+h4uDW/wDQlNlcL8igFftFBQmWmZZynYh0qQ91bgJoq+f46560mho1O6jqOuiZe11GMGEbU/aT8Hsxz44et3I882NM2SWUCgcZJSYCcdJ1LiVLXgAVkA+fQ6O7jl6NvFUHq3wU7C0bDB24h16A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766919834; c=relaxed/simple;
	bh=7O9SD1N4hARbVFvQLFVrjHIEwsZple8xopMRW/52HuE=;
	h=To:Subject:From:Message-Id:Date; b=QfhkTCI1t7bIzGT7rrakBRSNUNBz5+LTTl9P3F1RVYsNSHKct2KbOFjzXbE2FIvKHQlbyhrqfRwqidbhhUAmReaNMn93B9omzYy2P3pJtr3pKEAUCFf45dWW3208V4dcD9g/O1UpHSEsSoTvMggcpBiWA6CjkQ64RyKIAn3Ihe0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JpredrPf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JpredrPf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB0CBC4CEFB
	for <ddprobe@lists.linux.dev>; Sun, 28 Dec 2025 11:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766919833;
	bh=7O9SD1N4hARbVFvQLFVrjHIEwsZple8xopMRW/52HuE=;
	h=To:Subject:From:Date:From;
	b=JpredrPfhmvw0vhARP487w8JKK8ZTDTLJUR6aJIqRhkbcpwNxa3I6xdEo4CjqkMlb
	 qYckPvutdU5K2Spzvx5Id6DbpW/gm1flyDPRd7GWOqT4nZWimm3JTyZN4cdXZMy1bN
	 LNN8MhFgwNhYxOY1cIGLZweM0vnV6ihXkB6UVeOUE6jvGKdM9cLje6orMhS3680zJ0
	 gY7Jht2yzH3JMz4I4ulYsgL2OoyexvzV3YqN0HkaE6jrR9hYXcQlktTj62jeifHGcX
	 uYiGbnqJdx5UvU8+bLAm20XglKAbKFl0uIOE45voCacIlMGPTYjW6dzNq5WIzKIRZH
	 2gIOJgnOMwiVg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9668AD3B7E5
	for <ddprobe@lists.linux.dev>; Sun, 28 Dec 2025 11:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176691983360.3732.10377259558578175065.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c95d32665d049085935f53a631f798503f7843f8bd72c75382f4640da5d44571
Date: Sun, 28 Dec 2025 11:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766919833
