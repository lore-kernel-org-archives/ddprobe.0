Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E78D231CA0
	for <ddprobe@lists.linux.dev>; Sun, 13 Oct 2024 13:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728827154; cv=none; b=bu5laNbcXKp92/qqXoSYS45Xge/9yeFv1o7aCltrzQ5iXEbKi8QVFTWzkrpEI+zMonOukRB+J9CuTjVxVgkmOoPUfLN4A+UlFhTEBo+dkiPI0SilBn896RUkjUCrQ1uHNQfo70lEvNWiW4c1NsW+YBTY9FnaMSmcbRg7SiHadCU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728827154; c=relaxed/simple;
	bh=3A6gHAIwUFbNfbRG3TGnPgwaCIkbxWSqRD6ZgK8S1G8=;
	h=To:Subject:From:Message-Id:Date; b=Z/MUAyKWcQWfUvG4PD0enbvyOJ5yKNskVCVyZm/tCP9RVm+dfPFWm3x/b799SyRy/hRfSmxftgDrKkNyr836ckZiauUv1z80+3eeE9daaJQbfRX6Vx2mpO4XK5wjyUd2sHMj3tEObZ4bUAzrfzPaNA85Msac4OAh5J8k4GV6028=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DZaP4Lwl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DZaP4Lwl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0031C4CEC5
	for <ddprobe@lists.linux.dev>; Sun, 13 Oct 2024 13:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728827153;
	bh=3A6gHAIwUFbNfbRG3TGnPgwaCIkbxWSqRD6ZgK8S1G8=;
	h=To:Subject:From:Date:From;
	b=DZaP4LwlsKmuMQrjGXYTF1jfst734T6KMj+DzZ285zaVRx3eSp2aSznL0YX7yWF/G
	 n/J9wFgHDhoeu7CgkQxxvRteZfV3aQp8eXffMOyLAfadLXm1PBvBfNF01Txlo+4EGV
	 7VW1nH5jov8u5jK2GKKec2D295ioXEKubbFaqCke+m1R7+Gj/kUYTPHF2Cj48iXCwk
	 WAoQGGpQLwR7+2/gvo6+VNu+II4BOiPtYIgfV5bvw9LrmgjevzWoZLFUpGzMhJTOrG
	 BNY8fMJ9PjE635GZk1J++0C6WWv7R9QkJkx0bIgH8GSVUXofvHPj9+PJw043hNDOJf
	 NlK1rk62OCAPw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BEE0CF2579
	for <ddprobe@lists.linux.dev>; Sun, 13 Oct 2024 13:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172882715360.12922.10692791354595381506.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4f0abcbb75d4a9edfa3e37f6171c66e065c2af5cd467ecbb8ddba3b9d39edcf1
Date: Sun, 13 Oct 2024 13:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728827153
