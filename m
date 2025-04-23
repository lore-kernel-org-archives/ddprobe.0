Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41DF22820AF
	for <ddprobe@lists.linux.dev>; Wed, 23 Apr 2025 16:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745426994; cv=none; b=oYiiyfM4ofufkQuW9lNPQMQw7sZfgu3JHDC08FPwB1lRohcutzkvM44C8U/m/xiAwh0Q4DMKGCczbHDaSrHdB47h/dJtkQlRrMGLTDzBDK++G3qeYy2gP95hWP2TSsahUMI1lFWyU2kCKm05xSjYWym5ZlWO4KojqpJ9VFTcUZE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745426994; c=relaxed/simple;
	bh=w8vcS5yABxoGE1B6oYc5xKAl3o1abKzAD8DcHINyqcQ=;
	h=To:Subject:From:Message-Id:Date; b=qXCDnWD+cucjj/t5n5vqJsNpGBiFBstL5M1dINEwQfT0HUpIKGuj0uOxPZbP+RdGO1Im5QTcRSHTgWBBh2fAx/IOFBavgiYvQUhs0ooDgEH5Q2gX9MOp5wZNs7r5JgRt7HjVQyWgNEoproRRi5uLq/PUx+Mp8+h4Mg3be+1wYAs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=es3cKj1y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="es3cKj1y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1E00C4CEE8
	for <ddprobe@lists.linux.dev>; Wed, 23 Apr 2025 16:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745426993;
	bh=w8vcS5yABxoGE1B6oYc5xKAl3o1abKzAD8DcHINyqcQ=;
	h=To:Subject:From:Date:From;
	b=es3cKj1yMwLN78ai1pMwSjfA8fZFthPTYRDPkzTOerB1Anhvc8pWT+vuMmKlOwjdQ
	 oQBCTLxXG1e2PkIoq0DLeBn35o55nO1S2aXMniEoJrAt9liKyjRR6bC8iJ8Cw8emI/
	 ovtrK8SGZOFhMc911b0Q0Np0oY4RXpm7ZALoeq6HkVIXe8SSvkRl+xsEwaBeOuxUyD
	 k91Pwp4XICm0DYlpAkguFEAuuND5pm5k446AvPbQunRPmMNdvPGvwYa0sBHm10X9EP
	 THRNyLSadAoZf+YSNp8rAMTEVj6ZqUyXZtoEPL15vmqmquTG99TN2hrIxhDgHBj7AT
	 E3clTxOndJktA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90068C369CB
	for <ddprobe@lists.linux.dev>; Wed, 23 Apr 2025 16:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174542699357.2528.10714206633846359752.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f6a91a66c13a64e0d0fd7f1b9080a1219d73a3dba072bedb3de41dd69c896189
Date: Wed, 23 Apr 2025 16:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745426993
