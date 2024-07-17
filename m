Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B6621EB31
	for <ddprobe@lists.linux.dev>; Wed, 17 Jul 2024 17:55:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721238923; cv=none; b=R2Ypi1e41l1T22FNsymaFvk01kyI/bu9NzCHJPEVdT2gRTNW4g2RvXQGWUaI6vvThaxj7F/V4gA6w6hg+01Fdt+OCGSJHlA3DWBn/ZqacuDmvD4Qwp3sfM4cUDsg1zQIyN7gDMNpJ6fykW0dTbmlz+BSueJEYmedP3P7fx9dpho=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721238923; c=relaxed/simple;
	bh=LQ6QzjbOVcI5un1Qk3B2phZGQQe9N/ANYCG/UySzadM=;
	h=To:Subject:From:Message-Id:Date; b=kaTw/Gt0CYErJAb/URLCh2Ce/a66HRzhdJNJOnhoida8xRT75S9NbEegfagE0N4aE4sQaFwFsa4U8fd2n6PM2C2PxQ+x5vZ1NJyll1WaOpgaiMYlTtXRt1b4iS3+2QuEsQEogktnoCWNnvLXL/AMXaySpMkxGCFKqjmhn7my34Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=I9dPzMk5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="I9dPzMk5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8B6EC2BD10
	for <ddprobe@lists.linux.dev>; Wed, 17 Jul 2024 17:55:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721238922;
	bh=LQ6QzjbOVcI5un1Qk3B2phZGQQe9N/ANYCG/UySzadM=;
	h=To:Subject:From:Date:From;
	b=I9dPzMk5KA+uxNO4gvVyKAkf2qMdsMS5Rx0eoHwiP1bVyGoUp4fZUUOib3fM1bIIX
	 /QmVctlVlK7YQwTxMmSBsMYmO9GZGtST3kLG/G0qvBz9fHFBrvEluWqv3TPUyOYhkZ
	 jQRjMnj4b+uC9kMfBb8qlth0ao1+2jnDHF9mZ7WHO2in0pdba1WTwzINZ2CXT6ECuP
	 Mpajk/MYuFB/cWeh7oOqkiqzLHTf20gg/1ZRDrEXozds6VThko6exfrqM4u9PTTdJ/
	 9stZw49nSgVhUKBCNzFR5h1RAU9zImc7HvZXhbU4qYx2zcL66/TSgBUFu6qa13x4jD
	 kiE1i4wunrJUQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C65E4C3DA62
	for <ddprobe@lists.linux.dev>; Wed, 17 Jul 2024 17:55:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172123892279.20416.9767647088965265563.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2d70fff009b0bb72edcbc05f1b783acad26429205de6c283ed613c483cb724c5
Date: Wed, 17 Jul 2024 17:55:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721238922
