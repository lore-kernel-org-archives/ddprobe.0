Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 130DC1925AE
	for <ddprobe@lists.linux.dev>; Fri,  6 Dec 2024 13:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733493354; cv=none; b=GhdeFPyTPnXO8RImBx+JrCg52DPwvky9xoa1opJcN5C6bYkrZGmGi1rGpTHy2b2tNI5Ww612atYtlDdPAe5H5MUbO6qGtEiRJm4hqXRvhTUNa9ZH/1hxQE1Cl2ZOnVMSi1un5h5ZjEKGLBKukakD6uCnQiAQeR2srn29lmQXiiU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733493354; c=relaxed/simple;
	bh=lIt37xaAECS8cCJQ/GAQPgz8GejWF2/dO5ElyaLI5go=;
	h=To:Subject:From:Message-Id:Date; b=CZyD2rFc1aSbuODrtZeaMBrU/DKfyCL3uBkoSBV94STkj5sNCjPrXFrb3kmkVeSWZgd/XxK809EEasz/rPjzLKo+l9rpg9cEGDRrudZVxNvbqfrudE74IpvUicU/x8t8r5fZvoyvt+Rsu2Onul1b27A17ANwtnmZnd+HEF/BP2w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LTmZI96K; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LTmZI96K"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA521C4CED1
	for <ddprobe@lists.linux.dev>; Fri,  6 Dec 2024 13:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733493353;
	bh=lIt37xaAECS8cCJQ/GAQPgz8GejWF2/dO5ElyaLI5go=;
	h=To:Subject:From:Date:From;
	b=LTmZI96K+EwysEnItY5yQvxSD+MryJ3kOde53wuFglLzqNDDBCPAx843g4aLVo4fX
	 IslIDg9/4DSn5AKbgitHeH14mcRZ6ADHu98On60tz4yvCtQ14z3O6Edhicxiqkuepw
	 g0Yc/SmPf9AfIUz7wZvyHMBspk4+x/DbDEzdEelSebY86Kf6RgHIASXHAK3Avec+eT
	 gxE1OOFVksTTZDUJYSrlzixCbd72f8KB4FloF6XRfxSpJ6jpv8us/PdpNT717XVqrn
	 GcJdJc95Y0slCmeVdYTTg7rCPkJFq4w0zV1hjZqeXId4beWaDD/w/e+FX3T90ggj8n
	 t9Xq+YbkmhTiQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98BF6E77173
	for <ddprobe@lists.linux.dev>; Fri,  6 Dec 2024 13:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173349335361.30709.6919032348361717739.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dfd4e9fe377699be2ca566568b9ae70f9dc12c3b2ef627d7ce5aba031d78cb3e
Date: Fri, 06 Dec 2024 13:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733493353
