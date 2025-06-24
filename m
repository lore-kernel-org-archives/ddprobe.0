Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A1F526CE15
	for <ddprobe@lists.linux.dev>; Tue, 24 Jun 2025 16:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750781394; cv=none; b=q/e9yWRKWLd2A02id0NboGsze58neHiYAYlkivexKd17+z2qnXMy2kT17in6o07m1KzaYoWsnFKWmdQL23jlqDi2honCP7GolC+NJNGlWKLmLCISpjMEHwP2s3zW9DfzQAytRDrAXdBHwQajyWGyuc+zu7R4WorvTW90LUXLamw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750781394; c=relaxed/simple;
	bh=Bzzsup5HAJd4zMOJvYcCqaJXjWH/ZdxjPTjbpkB+9bg=;
	h=To:Subject:From:Message-Id:Date; b=WbLzRx05LvtenrWmZInWo0Psz4F4BENE2nqwP9z74qqJMqdiUNwYgDbXkn6LLdmiI/cIlQW5yV10ZZC6GpR6ldiKn5ZsNAGYUEAEWBeHdtKzhmhvSAA8pBewlhl5IpNbYPJyD/4XEf+GMcC6IWzFyVksvCvHCfl6vB4mXW8WmSk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bk44WDCb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bk44WDCb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0F14C4CEE3
	for <ddprobe@lists.linux.dev>; Tue, 24 Jun 2025 16:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750781393;
	bh=Bzzsup5HAJd4zMOJvYcCqaJXjWH/ZdxjPTjbpkB+9bg=;
	h=To:Subject:From:Date:From;
	b=bk44WDCbTkXzs2R+DVG7EcaQ2TSXB7tKR/pxYgHleRGzkE8put/zATOCQn3LAJRT3
	 3Q3zRXPe1Age/mB353rsrtzbuLeZzjHfmOAUpbXqRk06aJ/FP1KHgYmZPPUSa2hx1H
	 +kCp46MWgOYwTz8QVEEm8BnJHYGuPFIeVYNRgew23lYOG2hxCNHLocvyAw8efBniDl
	 NV2cO0tsjMmebb+fEJs6nSTz+zZlo9pLMHLfcNLydiflQU8vA3vBes9xa8Q/6rlLK3
	 zHY3bvdv/LTKW3O0GS4Uip36dkDY295emgYU/nCsUpHja1mcWgYVM6SQM3WSa0aB4Z
	 +UQGhXj/JSEOA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F120C77B7C
	for <ddprobe@lists.linux.dev>; Tue, 24 Jun 2025 16:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175078139357.13244.9309752482647267592.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a42b7be7cdb75a843693bf13fa7f716cdd1d215ad13fa9a25c4fbe5733cf5d2e
Date: Tue, 24 Jun 2025 16:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750781393
