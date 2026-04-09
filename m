Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A7D42DFF04
	for <ddprobe@lists.linux.dev>; Thu,  9 Apr 2026 07:55:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775721334; cv=none; b=Mxx25bjspZZ1t8AK2hmJD0koeWhXte64ndIDdeIyl0qqNiTCz3xfHkSmcLzo+XuakJ6FagO2awi1BAQhnnRolwKKvWB/VDHd8V25YwaxmKvkL5m5OiMvl+F//6/Sn98FMG60nl2pCaFWEP2FC1TqxMhQfU1g28fkRcXkuKfRYOw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775721334; c=relaxed/simple;
	bh=Czw8Wo4+z0HjNaVDXHxiyvuLz73trZwKbbX5Yqd7Jvg=;
	h=To:Subject:From:Message-Id:Date; b=ffHq1ZZpF82LiFa3vbPFB/I1cvRjA6tAhlgdEB2uRE/z5yk1TTOeCrRtJXVZTIGgPzQjnI3WSTm+Y6SXjS/17WGiwN4tIBuSkGzb4HrH7eRufBUh+j4+KO1KvqqT2V6+hDIOZ3kKmwN28aJzxCjkl3k3lIKu697E1S5HPGGDTT4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HQLHMpOc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HQLHMpOc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE0D4C4CEF7
	for <ddprobe@lists.linux.dev>; Thu,  9 Apr 2026 07:55:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775721333;
	bh=Czw8Wo4+z0HjNaVDXHxiyvuLz73trZwKbbX5Yqd7Jvg=;
	h=To:Subject:From:Date:From;
	b=HQLHMpOcvwhmwpIxa84ZXZDL4my3hhqt49h8d10p9riI7o9u2+pjt+9IU0x+t0RqN
	 gGgzY/5QVRjf13N1lL3JGdlWxp2lTbOi0NefAaVkkRQiixqIXYcLWIZ9nyLKM1B2NF
	 xpBfIuERH7VpsiXd/BFTAUlFFl4SP4XQQipeU4rF7DB5dlMAZhiDg+FKYjFLXRkwRM
	 PYbO6N61ytcnBFWigOHhtApbxIBKyId5wb2j0GgRV513X8fEsmwf6gsZgMoWFlaja0
	 Fex8QYpLrdZTa/5jY/DpzoJs3CE6hkvjCdLqtWflHG99PazkaWoSXdSL2IKAd4SeVw
	 jY4W3F86QhArg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC975E9DE60
	for <ddprobe@lists.linux.dev>; Thu,  9 Apr 2026 07:55:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177572133369.919.5349686906380336159.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 23f0c242a435f81b90ea62be37f1a63f56e5a5983ba56fcd0021b75caac9b007
Date: Thu, 09 Apr 2026 07:55:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775721333
