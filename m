Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 565284968FD
	for <ddprobe@lists.linux.dev>; Thu, 11 Jun 2026 17:26:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781198794; cv=none; b=VQS0y67TegrxFKvFEGOQq57cQ8CtJgvvEarEP8Os1oNpkPzYmAQ/CbPnhnWN3BzSSMRt/p5VSsKBK15AWuV4jvLqXISkfUkth0YI3cdx3nOMSPYarDfTAMjNLgXDH7HlgKkTaifPZnmr9XlnIy4WFEXkf0yp5mApgSHgkP5Xgl0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781198794; c=relaxed/simple;
	bh=3ZncWsaWJUSPhOhq3EP2QlbvPwvj/bJmTwS4+NaGQ4M=;
	h=To:Subject:From:Message-Id:Date; b=VvKQc2fs6vI/Q764pVIYnviBZ71s2m8PmqljrXTfLmcdw1wkyIPICvvF3zzPfiidMtYKkg+oI6VLa1zcgWEJ/ek5gHOZKLOvh2ydOvhQGNqmJhSBB96NAuVHIM7Y4Yq7cvf7ZtR7z/DISVjzSH99jlN09NzlxApPy9RlADyCxBo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=R9pERA4v; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="R9pERA4v"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB3B4C2BCB0
	for <ddprobe@lists.linux.dev>; Thu, 11 Jun 2026 17:26:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781198793;
	bh=3ZncWsaWJUSPhOhq3EP2QlbvPwvj/bJmTwS4+NaGQ4M=;
	h=To:Subject:From:Date:From;
	b=R9pERA4vAirD6G2PA8FyxwIJRNp5vlIUhuJWuMEW+vwrRi55mvVKotS3sXkI+or+H
	 iZ02aWr5W+5VlpGlqJC823RkfGxGsQIPJAVsQBWGPm4TGcW9wg5IOzO1IXk62c9ys1
	 YETtPQmTo/NLtr8AhlbGcamUDc54/VZZqhOBGRqvCFBjMAObky/FU8/Vl7MHMfDAU/
	 33afIbLUrmjzw9cCJ7t1TmqzVSowjnf6IIDcLH+iJOO0qU7Rqge2tWLsCKDw4vMtmS
	 BOu3B+voLTDYXgJ94ccG9VU1TSaD7PduGHh4+34i6jP2snaVvLjmloxyeqLda08mYY
	 rLhC889DEd2Ng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADBDACD98C7
	for <ddprobe@lists.linux.dev>; Thu, 11 Jun 2026 17:26:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178119879370.26852.16731103434797904477.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2f0fa2f40a0c6f3ff0b63a32f3888bc2ab400b0eca67819e66ee704a3e323fef
Date: Thu, 11 Jun 2026 17:26:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781198793
