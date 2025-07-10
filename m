Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4652A28B7C6
	for <ddprobe@lists.linux.dev>; Thu, 10 Jul 2025 10:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752142794; cv=none; b=qcpTo+WxKTMWuZU8rnWd25KpnRnrYfJ/7XWOzooTMktATuyPNW5dIHYCY+c4kjtDihY/sIRpdi6yHhmnaIbqEdciUASVsDz41X1XUenDivwZTmjJC4vz0NcHd5Dt5qP6K6zPoiT2loRUh48UyB+UF5a9y13zHy4WXITe7y5NAoc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752142794; c=relaxed/simple;
	bh=0MrNYRhLOa/kfwmu/B7dwRfAMotoFJckYEKVM6QwXqQ=;
	h=To:Subject:From:Message-Id:Date; b=p5c/u42aOpseW5ucXioOlDW5RYGCSo5zTnyNtLGcVWOZOF7qtRH++YGgPCysju6GXba6ftki1yoiHKWOCuXjwf/yh+jYFHRO2L99KXlL4xcjcXv3xdDwxr/dUFM5DTxCyNk+t71E82apy/88U0ALM25Yv96olv+lgNnnq08lZCU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Gpgw3bCI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Gpgw3bCI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F9BFC4CEE3
	for <ddprobe@lists.linux.dev>; Thu, 10 Jul 2025 10:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752142793;
	bh=0MrNYRhLOa/kfwmu/B7dwRfAMotoFJckYEKVM6QwXqQ=;
	h=To:Subject:From:Date:From;
	b=Gpgw3bCIJFPhrarMQKiIDpuo+t84ZcRmVhI2ivYAvdO1U50hrkWRj4e9eeitZ4scH
	 xVHlH5PVKT+2ufkaDOdYNgFkaxc44/Jn0q5f0Xka0DdOGDjUEKhdsgOe1LsFveW3Jg
	 e8we+FsgV4gdyQMMqP2bKKEywAU47eU9xPKudpIH7we5rATx2rFWQIJ52j+3lNbGwA
	 FKdBIjfFbmI1k5fKsTJouiwUdggFPTnmInLZto5JxLCNcM+uSf7qUcBBWdQZrRnimb
	 lAzyiXwhcw459t5oRYl6GxNBaLtp5NPi1xSMXLA6g/grTPX7FEbdsbI/arIEYPUgDl
	 +CVkdcQEMTicA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8D78EC83F1D
	for <ddprobe@lists.linux.dev>; Thu, 10 Jul 2025 10:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175214279357.14384.1050486951911486688.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1e661ee46cde3f3ce5024cfa041345283393c160815da4c389daceeedb1d80f4
Date: Thu, 10 Jul 2025 10:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752142793
