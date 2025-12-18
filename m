Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 259DB1E4BE
	for <ddprobe@lists.linux.dev>; Thu, 18 Dec 2025 04:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766032434; cv=none; b=PhPvFsDJzR1RFdJhXQX+TaSpPVSP/o/zYsAMnQFvGUhhV9valD8nB5h7d80LU5JRU7iVhN3OP4iNkcypwfIuBICZiIgO5g7OAkzSYbDLUI3qhw7aVLDyJ62O6v1B1AQLl8CbhoeLE80WOIeWHHX5E5tHRj6mz5mHP7TH/XpHXAM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766032434; c=relaxed/simple;
	bh=WgOYCjlQhFMWT5ER/At07FsMWQVQcco7IzplhLutmNo=;
	h=To:Subject:From:Message-Id:Date; b=lEa3H596IefOARZSbfeanXI/nnEid2MSR8CMK2vUFpbFuZO/tvGk8cOKi3US3/86UmyHkbGVIKUWz1sF/sWOIThpgmE8PTmBlOdaFaVEpXTe+YNVqW86yVaispXEgX5xzUvdJ+t1tA0Ii6q+u1Jo0DshvX8tArACfCIHlpwTqXQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gtYarhw2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gtYarhw2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA100C4CEFB
	for <ddprobe@lists.linux.dev>; Thu, 18 Dec 2025 04:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766032433;
	bh=WgOYCjlQhFMWT5ER/At07FsMWQVQcco7IzplhLutmNo=;
	h=To:Subject:From:Date:From;
	b=gtYarhw2AtNb+3prP9Tu/2Z0uGjs8BH4x0pfWrIZY+/XDp8ahDH66BhHeii76Ixq1
	 VS3xSEwpc4eO4l1XFXZXtGr+s3inCIEh2bfr3fYJA5vkuv/PuiNNbTlbDa50RvObNl
	 ewLf1klLCdXknVgdC18A7M8piCzbkEiuTtJnw6J5yffEhWBuRz5e6zrKUIhUgT/bwD
	 nd3T8PVWXJLY+a16ARBwucNc+i3EugnyYxsd+s/acXL3SFvKkQTCDUqDNWsGv7KVQd
	 7rxcT3Iljl81W1MFDBrobo9Uf4wAceab373WAsngOFGyH1j/cW8l1W1xppAGWYqbyr
	 RVN1S57b2ATDg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9542ED66BB3
	for <ddprobe@lists.linux.dev>; Thu, 18 Dec 2025 04:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176603243358.21851.16486700713697062396.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9e1eb74f40dc0a9ec15aab1bec60e154c11e7934119a7d30ea5357ce2c28faa4
Date: Thu, 18 Dec 2025 04:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766032433
