Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37CA3244661
	for <ddprobe@lists.linux.dev>; Wed,  2 Jul 2025 22:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751497194; cv=none; b=o+dObKLn1jlrMzHv8jli88gsyHbspd6KWmQR4L4Tox+YrqCA+xStCdx19iXhxLoxPBOxbSL/ogc2gcaihDQ7AgZMw5WaYE3LdEqBa39Jo8nPBvhLGuwr/ylRH5mbQU3DoDs7TrxLhf65wl7nlx/vCh7ivlCrnkhP8zzO7dqY3j8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751497194; c=relaxed/simple;
	bh=WD6OU3HQiNLs4RqTp0Sx/ITfKo4mNSvXyHl3452EJbo=;
	h=To:Subject:From:Message-Id:Date; b=VKoLfpfTN+mxP1om532h8hQbJaJcESP9BCOdAwn2QGh0HxCuIFkHvUOshioNzsoavMKB5p3TfoOic4Xv7jgdeQrjrouWAC+TJepjJABErLW85CCLK1LXovOQjGzeQXeTNKDEQqnAvRCiTKGx1DZckh99wacia01gTyL61jsphBc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MCVxFeMi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MCVxFeMi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2F4CC4CEE7
	for <ddprobe@lists.linux.dev>; Wed,  2 Jul 2025 22:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751497193;
	bh=WD6OU3HQiNLs4RqTp0Sx/ITfKo4mNSvXyHl3452EJbo=;
	h=To:Subject:From:Date:From;
	b=MCVxFeMi2OzLTWUwlpbw7vRP7uJGZ1IQCiA+LML2uD7JkZj6+4I/nRTx9NpfJ2KPX
	 XHSFa+twlyFbPu1bzL9Vf9rcaDTAyAFd0hdEbh/hFi+vAyjMtCrR4VPkpVzhWQc/YW
	 eIqNnWGqanuXSziGq7p2zmFZGFz0TNIM2anOtu2DHiykCmfxL/eplELQJcoBxb5r9n
	 98cnkM5/cYunkp5PiFaCrrBvWw2UTGQd5m3zGbfKUPFfHK/w5aICzKkgBT8uRPZVAa
	 HSW0RYXOfev227ZM1osvAL6ftmuj7PcGjGc3RnPGb0auokOmk9RYiK9gcTbZpOnXEk
	 wL18SeKrf4mEA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94394C8303C
	for <ddprobe@lists.linux.dev>; Wed,  2 Jul 2025 22:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175149719358.23475.5751283752741924723.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 852a567afb82dcce2dbbb35f2829c80e40b133045416bf00bbdba813352453bb
Date: Wed, 02 Jul 2025 22:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751497193
