Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 69F0D4AA00C
	for <ddprobe@lists.linux.dev>; Wed,  2 Sep 2026 15:40:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788363634; cv=none; b=XDtxg2Tpto8irGxCaPlPSXFx1Po+IrJmW9AgmVWEIjGwOF84MK7MhTcQmgcpcrn/DoRWuAd7fFbBG8BDmZ60u11QhDRMzGKVXEt7VcasRpDuMOAjuwKjQ61LISeXrOpxGvUb28AeegTGjBgsRIbQAYbNXlTPgW3Y4QrFWiHU+Go=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788363634; c=relaxed/simple;
	bh=mRyoysdOr/iGc7lUgBzMCV49o7tYJc/7Q7dO9SMvkQ4=;
	h=To:Subject:From:Message-Id:Date; b=nlk2dV+ShjIY3tgsovjIsLRQ0WtVOT/ya/8DpCDQEr5KwdZz0p4ioindG07kHa74EHEUigCtnqm49PERmwvZGi6ArmGIifEgjXJSbOssHl/OpIxRk7VPIHMvJOWneo2hRF3ehOjzUh6xsi4utin+KvEfBTUfPFIjClXvbDioWy4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WHl3NQiu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WHl3NQiu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BBC69C2BCB3
	for <ddprobe@lists.linux.dev>; Wed,  2 Sep 2026 15:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788363633;
	bh=mRyoysdOr/iGc7lUgBzMCV49o7tYJc/7Q7dO9SMvkQ4=;
	h=To:Subject:From:Date:From;
	b=WHl3NQiuQ5duZk00bR+c1J1GTg9Ap6GLogH5nVznkyAPBeEOtcSRCbq5CbQ0sX54d
	 NKRfb1HPzrqhEBSNFS+gJ3evEJXwziW6NnB7xWNJnN/FQZK5668HGVnQYodyfXbh2K
	 5IM3pdB8xb35nN0tUdovmJ/IoKBvEpj8TYqmEiBfUMMoQnw2OVqHtItXwL7HPOuaGQ
	 Yl5Z2VOlaUPwBiBWKab34+WOWISTCJZVBt/WVfUL+qchmKNJyaw9pQato7Kh2T2WWu
	 2B2/oNnLd3QYIsJPLuGLXrwt6TsrEXdbKpEzxE6n1+bmrZoA8FqkdoyaeIgNfz6zQQ
	 h9vTglU7BRyOA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9CC5C61DD6
	for <ddprobe@lists.linux.dev>; Wed,  2 Sep 2026 15:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178836363368.29037.4768995625155742144.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fc3acd1444c74d6b32cbcd86c85fc42a1e786fa41c6c6e48677a99a8e6e77f6e
Date: Wed, 02 Sep 2026 15:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788363633
