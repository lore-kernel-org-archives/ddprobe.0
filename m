Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F3DD2CCC0
	for <ddprobe@lists.linux.dev>; Thu,  2 Oct 2025 14:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759416594; cv=none; b=QyQSnWloFNumhXH6uD2YpPBFQnLH0HxO9qx+mg2xgQ0e0FGaRwXih81lD4weqvL1+U+jY5YakhtCzKnyij9dWqKjUbMBHhVBH6E/ILN8SM8IADR9cOZBAAKEkOdDWiv1pgOPcdm4O/+E4wViuaQvZ1e6xIlzMeDh1H/Ucp+F7Zk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759416594; c=relaxed/simple;
	bh=CiPCBJOSZizKqaUQcQwFq9vq9OOBVRxKRZquL7wfYlk=;
	h=To:Subject:From:Message-Id:Date; b=myQh0DF0/CbheO5Z/FpL/b5SnF/xIgJB76dj7R0OF0JkLm+6bOXBvdjdi3bskc2qrnHjzeYMpGhoSt9ODItU7FfwauHHtedGs2UAU/FcG7Bgt6EsFG7btSzXKjwSOyqMMN7fTp3c7iq6DGHPbezLT+Hiw+a9Ce4qAecm9SArW3M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BzA4TnFd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BzA4TnFd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A02AAC4CEF4
	for <ddprobe@lists.linux.dev>; Thu,  2 Oct 2025 14:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759416593;
	bh=CiPCBJOSZizKqaUQcQwFq9vq9OOBVRxKRZquL7wfYlk=;
	h=To:Subject:From:Date:From;
	b=BzA4TnFdpbgmBUqMlOob26hUq5oZRtcUyyqdeXQmXmqsxICYjEgxcotaQnnWO0/Oi
	 yzLGG/ZiCI7wqZzHdK5owE1p9T7G+vJC32W3tSzrCSuuMqaswqXu6qMwSbCY85P7ox
	 MkMil1UBth+P2PVUvdko/JqenMHibLBBwTCD3+kJ6Dl2bkEyVvo+tqd3c646S3NAQk
	 1VZX46xeB/6hIx6ulz+v/5Z7H72F/3eWgEiWcCBQmzIyoMDIXD6Y47GU2h1RVweLqh
	 /HfmvUcOunbnkoDMXYC6g0cfQp8yPhjef2Y1b9w7AzwkwURRV1RGWa2lAZjfGKAWeN
	 LbeRlaWaC4coQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EE1DCAC5B8
	for <ddprobe@lists.linux.dev>; Thu,  2 Oct 2025 14:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175941659357.20278.17759422718088073372.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f4ca2618069954a2fb4190a727a065305fb3cfee31c752c846e2628f1cfe78bb
Date: Thu, 02 Oct 2025 14:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759416593
