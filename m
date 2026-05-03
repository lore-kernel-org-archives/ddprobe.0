Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22EDB382380
	for <ddprobe@lists.linux.dev>; Sun,  3 May 2026 09:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777801654; cv=none; b=nBkpCmck5SPRGW/8u5nMf43HQPyGnn0MD+QoP8PUmXMZyCfpbenqJtt2F8qLGmuyD0Y4PDuYTFbQ38T5An8Dn4vF8WYVZitPGcG/uZYZWJeP5iALPe2n1ieKXCLI37HQvErat37Q9FRNDjqg//NNSQuW353NwlNY1WyFF/pNY5E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777801654; c=relaxed/simple;
	bh=Q2GZWTQVUG/zbjZxGfmDheoh397tnrR27WA0gdZ2caI=;
	h=To:Subject:From:Message-Id:Date; b=C6XC5DEOFSeuEHVukV32I1cFebiONMPqLH4mR2GMCOcb7GVpdG/mvdzAkOHdP2SIN+YWye8rttxj0AtsEZPUd5Z8whU2KzcOafcAo2stXqElsRQnbxGEhC63FPfo1q1JRfKp20i9l42PAKe1+3euO7684hFsjwy5uHcxk6tTwiE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Zy8Yh8kb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Zy8Yh8kb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B901AC2BCB4
	for <ddprobe@lists.linux.dev>; Sun,  3 May 2026 09:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777801653;
	bh=Q2GZWTQVUG/zbjZxGfmDheoh397tnrR27WA0gdZ2caI=;
	h=To:Subject:From:Date:From;
	b=Zy8Yh8kbyfuPHC8jFfDED5bp8+p+dG/P271LsQENHCE5OaQ5JM2nMVlsOxgzh8Sm6
	 79R7nNDhiCV9l8O/BVRU0do/ZXbe8mD2fsBQsYd3OJzXf1Se6DHutRZK7J+MqgcStw
	 Swv0N3sq64CaNhiYPw8AeIfqpJJD0RdRh4EbvGC04B5wnnQCPpuzRCGgPoVl/+3DJC
	 tN04HQiARl3oxLzH1q2YZKIlj9B3RuU7RMy87Nu+YvQ4oZ9oO9aHt+0Kzp6z9qlyVF
	 COEX0KoqiA0UUwBaRtjrxUVK+ACtzJ26CYDbH2aj4YCfKSljg/vcc2M6j8UI0TWnfM
	 siRgxVw7BymxA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA783CD3426
	for <ddprobe@lists.linux.dev>; Sun,  3 May 2026 09:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177780165369.13526.1912726422112219412.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b85868e8a0c5a876f5c21abccf30cbd89eeda46b3c981e28f2adcb63c0533d52
Date: Sun, 03 May 2026 09:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777801653
