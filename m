Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 281B774E09
	for <ddprobe@lists.linux.dev>; Tue, 26 Nov 2024 07:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732607154; cv=none; b=opyDAb49iDiUDE8YpEIIOs8ZyjCC/ali8biVMMbflWRrKXvu+xE/kggeCpoyOR0w5mud7Ofyr6cVmCEFPd/rgIznzXZWKG5dXYAYy6CXpuqgGfasH3WWBhRXQvNIf1nnOuKyoBobl+Xfa521rzPHS3YxfPzlRr7D8Wj8SBa2L08=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732607154; c=relaxed/simple;
	bh=4yL0NjZrT2Ms9UJN8ki5sF2petyM605rG7XWlMDU/P8=;
	h=To:Subject:From:Message-Id:Date; b=HKzdNc7i93SJivOFJ/Gfy1MNnP7CgnJmAmegx4SedAK7NEuPsVthl23bJ0IHjg63w7GAh5wc7vne8HxcQAHbfpIFJ+bssvHId2cLAL+9GozNFYbzVnEZYAoXX9/FIINswcZ1T9Wjqo2ZKLSN1qJ+tdLNkH3wAfTfSp6VL/bEu1c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OJef/a16; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OJef/a16"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAD54C4CECF
	for <ddprobe@lists.linux.dev>; Tue, 26 Nov 2024 07:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732607153;
	bh=4yL0NjZrT2Ms9UJN8ki5sF2petyM605rG7XWlMDU/P8=;
	h=To:Subject:From:Date:From;
	b=OJef/a16EgMjVaUu8fgYDxFAwCI10YxrEn2XJKZLqAvXdQWYc0exynzhar7xspAZR
	 I0ra3f5D1WR+BTdWV/PTkAtZcFGvv/E5y61mXs0IENX/qjM8kYSb3qElllKF8MJAoS
	 RB0dMA5LHF0uGBjqLaa3sh/GQ0k40CGXMOtKCObWaIpKueQbkCUANkG/7R35k5+5hc
	 rOSf9GlMhYkDQSmR1wla9KyPWwAr/4ssCfcrKa1v5iGGJjQw3rLGcEuxDaaqUF9TWY
	 78/CxLVqk9H1iQmq7FvH7X/BBeJUxe7P+zMNKrhjmeyHGub1uz2iL60u8oPVqE37Ai
	 z15HTfTCJj1tw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 967ABD5A6EC
	for <ddprobe@lists.linux.dev>; Tue, 26 Nov 2024 07:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173260715360.15658.2759300458977875698.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 56d03e417e804e4a9f7286950389c4232650f82f391711fa4e6b07414a74a70e
Date: Tue, 26 Nov 2024 07:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732607153
