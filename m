Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E72103DE436
	for <ddprobe@lists.linux.dev>; Thu, 23 Apr 2026 11:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776944254; cv=none; b=VG7LdkTKmUHclBtfgmfo/2OJjdgAuDcjTmAC7+Y/PulBbkoHZOeWvcntwuZbLlf6yxoogDzBW6CGKHnHRXAzgShoM7UbIOl20ghur2eKuSbEL1T4NRg6/8BQrlZfNsuqWaO2TcQpRPtjOh9pFgwN8/avPV2PKyjfHJ1EJSv/5fI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776944254; c=relaxed/simple;
	bh=qGZnEO86ToQgwz6E52LOB2pHvOQKEuYWqV+Txs1Uy4s=;
	h=To:Subject:From:Message-Id:Date; b=CU6XbEKvVZqzyaw/xuhEQxVnuXRl9QzWD1ozK3Bo5eqetb3ZDTxcNYPYQXQvSSLmp5HBNuw/VnV/GrlN1exKyJjy04xx9HyKzQJp7K+aBE0lUP/EPTTuMyq924B076PN91ki+0M7biOEwNHxzrpeLdfGdSoj8hB6lYUARp1+EKY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=O15lT7Vw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="O15lT7Vw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA161C2BCAF
	for <ddprobe@lists.linux.dev>; Thu, 23 Apr 2026 11:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776944253;
	bh=qGZnEO86ToQgwz6E52LOB2pHvOQKEuYWqV+Txs1Uy4s=;
	h=To:Subject:From:Date:From;
	b=O15lT7VwdD/1L7iwJL5Lkg7BWw7cbStFCWOPhEcZXKILZqWVtjIfPK86h8SIS8gzk
	 wWR3bPs+QQcNpXx6GUrju/o1vIZ4MiUj8E6kFV9LaKFvSYGg+OUpB2kq2mi0Q8xwbn
	 ar3b66r1OVavqPMHJzxcE5AUo7aui2yJbhz7jbvdLvz4N9Beny6eMIqdyjNEvr7C0L
	 eIBcNLkxTYdFIe5jfAU36bxdQBsO3oNUv8BPl4nMOukhpLTdbYR0ixGlb/uKD+36Vx
	 AP4u1rUa/pUxt73Or6aVpt2JScsv3MMThENb1eJaJGIsbmbxtDLwavKwidt9SW6clI
	 WLrUaOPafQcAA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACF0FF99370
	for <ddprobe@lists.linux.dev>; Thu, 23 Apr 2026 11:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177694425368.18313.10000963821386270976.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 63d0d53eb9603ad01b0e4f53dff25f90aaf702c80d262004eb17299603d6c3d2
Date: Thu, 23 Apr 2026 11:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776944253
