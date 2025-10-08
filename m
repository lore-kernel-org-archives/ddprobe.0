Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C9AC21CC55
	for <ddprobe@lists.linux.dev>; Wed,  8 Oct 2025 07:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759909194; cv=none; b=YbH5GoHyJfIqaT59DOy4cpzWJuwpQcLAx1l90Ea7oSQd2ytUEFkUOhCpssGcuthIH6foOyb8wK35mF40u5knyQek4NnLrbSdK1hjhmxlpS54pK7c8gYy8dwxUL6DhAhsBcThIY55KZoR0R5hjJqOevfDB9RGfanulx/pz5M767c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759909194; c=relaxed/simple;
	bh=SnArF2vLjrU4GoxfByfMOKHUCG42jKkGYeqGcFGdZ1s=;
	h=To:Subject:From:Message-Id:Date; b=UYfz9On9ahlrdumGwdQknN3HwfaYKF5zqeMwcNux5O/hedOYrqMDWNmVLFnT+8853kThhLXvUL/WLej7cjgHuMTQb6MDUXLb/E6gjR++R30lBlocN/GpDGfEusT/C3BkMij2FmCdZnKxQtoS4LcVBHx0ldo53ysJHzHzjdHDqL8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gMQPp0RD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gMQPp0RD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2F3CC4CEF4
	for <ddprobe@lists.linux.dev>; Wed,  8 Oct 2025 07:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759909193;
	bh=SnArF2vLjrU4GoxfByfMOKHUCG42jKkGYeqGcFGdZ1s=;
	h=To:Subject:From:Date:From;
	b=gMQPp0RDIRo3neuSpDz1D06QoHe4b5JUDSKUyCpf4CIVy9zLQEqo1rVUlZYqB588V
	 y+d5oUWyhNvEZ6lN3pL53cXKg5FQhC7QlI0NgQ5v3sypEyemLdyznWeTBIM2Zsbj9y
	 SF+1lPNHmUpjfmd65tNlf7T/E+Th142p261SmhvmciUGqn5SCTvsk6S1G+QVDJOtMS
	 QId7hBirD7V81NjouoTCvgc2SIsTM6svhb/M6Bj025gRS4B2LJhm2BUgEsGfJbqC5e
	 OKyhzoeM7g4zCd9bhyw5VgCOX8nlG2wO+FUalxEBI3IIYXrJSWTyw5gooJtjQfMIJU
	 bg24Tjz2QibuA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E3CACAC5BB
	for <ddprobe@lists.linux.dev>; Wed,  8 Oct 2025 07:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175990919359.31022.6497113007780808982.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 881a9018ffdec16e5ba3dd08d06e4e315e091956f4195cfd3db7f8be1ae04997
Date: Wed, 08 Oct 2025 07:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759909193
