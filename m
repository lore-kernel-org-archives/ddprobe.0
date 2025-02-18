Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BF1722C35E
	for <ddprobe@lists.linux.dev>; Tue, 18 Feb 2025 08:58:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739869134; cv=none; b=s/s4JJrDM/Z2Zn+65b0+4vdMR1HjWTP2K5Tk4kpTBiU08B6oi1ddlt7xg6p9gy2wikgqF9vevpAJVQki02/GbG3a3MTqHP9vNYKGE7g74BwkIuJjU/NdD6vY8huXnP2pIfb++IvGi2l8MsPrAqiMEot7Cr1KQIi/31MFP6bfmIk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739869134; c=relaxed/simple;
	bh=7/Wf+vFaApFW25T9DUI2gZ3RxHs0GHLTmhJ8FDEkuTY=;
	h=To:Subject:From:Message-Id:Date; b=h1AjreZkid7yDsnWj1rmIZ72g7vv7uKHZGGzYLLZU4w2wsufUDQIPYQ2sOQU3/jqxqQJQehK7nOrhOirn44teEkdGDsvCWIwDvqFbaW4t9O02E8XUKIpiV8SKAi6brxu4IZwX6xGb7UmyBV8Qw3W+Ko38vux/6za4+6D2cNbRRs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=b5qZQF7y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="b5qZQF7y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE823C4CEE2
	for <ddprobe@lists.linux.dev>; Tue, 18 Feb 2025 08:58:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739869133;
	bh=7/Wf+vFaApFW25T9DUI2gZ3RxHs0GHLTmhJ8FDEkuTY=;
	h=To:Subject:From:Date:From;
	b=b5qZQF7ymUGgb9gx8O/elYW9jj6PPGyjpG9DteH5TSsTf3HsJlQu/vPmNrR2r2wfC
	 gg+xZq2l3iC887bKgizoDShu+kqDq7IGtIu6cJ+FXvs3xiXzoyySGnnSDdoGfA9xXA
	 3/kUFb0SRULjCIYsSw2Bd21s6pr4CiX81dj09vxJzqpHDCqt+qg3ASkXELRRfksB6M
	 RM5aFn7/FJt6D9tJGI10Ob8npvf5gy6h04Hd1X+4Ci72Q9er43jMcxh8lgy2qMctct
	 148enmQZS9B7s/9wB/ivAVe16cS83qQpy5FtNAUCqtfZZ1Zz9PAirp8KEdsq7MYp3A
	 mvec3pRr6n2vA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 950CFC021A9
	for <ddprobe@lists.linux.dev>; Tue, 18 Feb 2025 08:58:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173986913359.563.17822950360281811361.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 552eae27880d7e22020dc4404e4d305834d52e9e4d50532f5afe10daa6533283
Date: Tue, 18 Feb 2025 08:58:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739869133
