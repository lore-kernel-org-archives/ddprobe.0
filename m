Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EC9C11957F8
	for <ddprobe@lists.linux.dev>; Sat,  9 Nov 2024 15:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731164754; cv=none; b=HCbBgA6qi4qkGy84oS0hkPWqv1TMxrAozWI9vVmgnMywDHvp4PzJKFjJR0I3La7D3fpjI9hrFdps/d0QM/cr8Oim+4YudvNTU9PGLwrYXN4RL45htF6asezQAIV5TrB7M9xhvj41CjQToZIHaNZP5J5kBFePK1SiX7B9QLxDjfM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731164754; c=relaxed/simple;
	bh=3QtptfQPHXkonlt95AFoaos80ejSL6xEBry95525guA=;
	h=To:Subject:From:Message-Id:Date; b=IWqG6tYR+D9pKO1c2T/MDzXVFYYlzCfmfWIJ3FZ2ve4xWguYrlQqau173+bGXAVcxEgpbeLgdmcZJdSogWONEhIXDXxuz09p/tQWlviUiXXoLOX4c9spl+MiRiU+aM7cP4UVm9XTM+nGchN395Vo0yTQpgMpl/KueygpMJFKhhk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PiWzfhAz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PiWzfhAz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7C46C4CECE
	for <ddprobe@lists.linux.dev>; Sat,  9 Nov 2024 15:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1731164753;
	bh=3QtptfQPHXkonlt95AFoaos80ejSL6xEBry95525guA=;
	h=To:Subject:From:Date:From;
	b=PiWzfhAzg+mdYquNlp8xZzBKaD7p9pXBnulyGApbG+cnRv8u+bkDC4C/p7aAE0vy8
	 hY3sEheJJLCxStMsqe99yWTVnzNUXqOE4h0njmAaqbAWodF8OyW4xK8o7erxk2bAwi
	 uB/0i+7dUVHkdhqdp4vI2ZkipQLEsV3hzEjVWSAait4Zvqa2ZI7009gcqejmMCl4sg
	 KJ9dbWDjNVhD9BL2/NbcXJwVu0WB3yFKV9aGkMh0Fm+PIxo7jp/9UVhBnSRdvBMq/T
	 auDNOtMvew9mqc6j5WFvWlvGEkOIfshvIZRd92k5SAIQNui84l184t4Gax6/zD5m9g
	 5W+k8TQN1mQhA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A523CD5E375
	for <ddprobe@lists.linux.dev>; Sat,  9 Nov 2024 15:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173116475364.19033.5084579295951245570.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 96e0c48a422a9ce9b47dfc576e3d1c7232660ca0b1fb544957fb3da180d3c4dc
Date: Sat, 09 Nov 2024 15:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1731164753
