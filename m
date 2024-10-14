Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EAB031AC45F
	for <ddprobe@lists.linux.dev>; Mon, 14 Oct 2024 18:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728932154; cv=none; b=Vyil/64fmhwrgiaYSC03TAonbM9OQQc8n7Ii9jhasO8L374120LcF1OGmet+f7bVpsTQh3RhLwAwnLvHOZc3o66B1Rrp869i6pIgmvC+tHRUCjvP9dEIZix4iAp80+7i30Tgikh5ZXARA+ZDbJeiQx/5QMTUSv0z/0oXYC+wyo0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728932154; c=relaxed/simple;
	bh=5H96tkbj0PJBqUf649fI24JoEL2RgN/MZYIoRCfKk5s=;
	h=To:Subject:From:Message-Id:Date; b=G8RgiW/5BZI6/BcJs1oNPEltbSmHfs3itByd81Lnj8mTGL+pyUk4fkOoeVb/q11iKSLfNDWEBkZKSm22z/EH219KDyZutiVB18UUfMRI7qrD1rzDs/4s/xwXySl6+2AR9GRD7vBW67oH0FWPv4D7wJ6/kr2qadU7hek/OzTjwhA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ttz4Ack/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ttz4Ack/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C7D8CC4CEC3
	for <ddprobe@lists.linux.dev>; Mon, 14 Oct 2024 18:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728932153;
	bh=5H96tkbj0PJBqUf649fI24JoEL2RgN/MZYIoRCfKk5s=;
	h=To:Subject:From:Date:From;
	b=ttz4Ack/bhi30wWUs7VBDLOrUM5o3aAw7/Y92GMeqFrcnDyYAv17nKe/d8qWsqEBa
	 kYpI+rp3TPLiixX1Cpqy2q0rlIPKQzkUNUqSRvjen8ZFSLYCQnH1l1GpAfknWYh8qb
	 snhQNWFid0oZ5IUONtNd60NFZhSVvaGUdSgXLsAXScHuxVN/FPqno0JcE1bvCEPRA0
	 xwTI8F/KW9dE64msVOoMqgOxfk+U5k3En54E06w8Z7cHgTJPTViWkJfgA8WSqrRlxo
	 9IKOwoE8cSG7KKLI0qIxUVR8dGJcxQ0Ugfri5O4CncDyDHOtfYxCJTawcQJjofsbgW
	 DCHts62GHYvgw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB2FCD1813A
	for <ddprobe@lists.linux.dev>; Mon, 14 Oct 2024 18:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172893215366.21226.6228703550794070825.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9e13bec2a4c0a95e2cfdcf0119c9435dfb629dc751dd4b8338f27ee7e3cedccf
Date: Mon, 14 Oct 2024 18:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728932153
