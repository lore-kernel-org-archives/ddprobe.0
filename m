Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3590A1E519
	for <ddprobe@lists.linux.dev>; Mon, 23 Jun 2025 03:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750648794; cv=none; b=TXz7RpsD7WUJyZAWYyYGBkROn0KCqVqr0yZH+wlM08FESFIcO9Lob1/x+9tmAi0ETPQ6QzQ1g+qWCgRf1D/KBe7bzbGqEYxLrEHDAc5YYz93ts+NJ6R26nnBb5I0hnyVXkDsGsTCwCNrrsnaDZRzaCHMMjepp/Swt49g4cAftpo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750648794; c=relaxed/simple;
	bh=Bs5tzmv7I0bWz+RO/yarMp1x6AE1J9SvMHsFlv/DpTM=;
	h=To:Subject:From:Message-Id:Date; b=lwledoHWWb29jPQQNaWDwjhfCI13u72Wvr20i+yT+Qy8voTLHIs8bz7Khy45Jt+NnPsVoxJvIkgmRILx87m7sCAggtcfc2e2IITOXLC41pivJ3xNgW2HoogemmeErcof+vM6P1Hy7vXIzTKhDuIfj2eEmM3l9LmfSz7GTMfahEw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LOPLaPke; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LOPLaPke"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB344C4CEEF
	for <ddprobe@lists.linux.dev>; Mon, 23 Jun 2025 03:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750648793;
	bh=Bs5tzmv7I0bWz+RO/yarMp1x6AE1J9SvMHsFlv/DpTM=;
	h=To:Subject:From:Date:From;
	b=LOPLaPkekQgMj2XwuMzEiB4ndIntNENZxye4Myjy84zA/xcOs++y2/TigXThUdUh7
	 pZnjqJP0wQu9sAUjZNiKXqnn20no8zq3UCTpQYOESE/4WV1/rM6l8D62UMZGGJGZbB
	 GU8TJ/piqjBUl/U8EaLnuIMPMAfbF1CXG+h2hIBuifVCXu7AsvVJJngvUWScbC9SGc
	 oTA9o7L9qH58uZC4ZWI72k55ErM924eQoyUMkd/g9LTqlVB71T1yrb9/0BuZde9Ofs
	 BjyBydxYALU8gdHSaHlM8FVReCfXJFvi+8JM7CT+t+tA645BH/RolWcp4SQ35pZTkJ
	 v6+seKNkKejzw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 989D0C7115C
	for <ddprobe@lists.linux.dev>; Mon, 23 Jun 2025 03:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175064879361.17600.12574213916906937342.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6d2d14935e8c2522de115fc22c1f5aa53ce469849c89055e2115ff488887ba89
Date: Mon, 23 Jun 2025 03:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750648793
