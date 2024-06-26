Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 54516175AA
	for <ddprobe@lists.linux.dev>; Wed, 26 Jun 2024 10:13:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719396803; cv=none; b=ESZCiKQh4Uli2kKhrP7srp2g7BRdH8NG2adzrSxLveJTFfYCFD8YZDL3jOkHn99hsFf92RHHNy64Me1U73KFOuo0qLfcvDZeQRyfa4wFYeFj5NCPgVMRG176qOx/PiGI/0orexPyCp4FDRw8vHwUTCxx9dNNzDJ7t7Ib9Wu2xso=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719396803; c=relaxed/simple;
	bh=5dVrIBkZ9UtrNyd5Pl8oMvOZzrk3K+G2Qjb+2tFokuQ=;
	h=To:Subject:From:Message-Id:Date; b=ayBCCv+QEmxnmut7/WpB/NOSVZmGH5vTMZGtd2ziyhH8VFi8nTpNWFkNH4sIMr6bnkQiKgmYMGuOMGWbc8HypTdPkGqhJEMo4mQkBe0j1UDN0AKbnVpEfn/VpR5VNTSHY9ud96zz/wct2zYjScLVVF5aZn3R5WOV8TIN59N3kkk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lon+MJ+2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lon+MJ+2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E32E3C2BD10
	for <ddprobe@lists.linux.dev>; Wed, 26 Jun 2024 10:13:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719396802;
	bh=5dVrIBkZ9UtrNyd5Pl8oMvOZzrk3K+G2Qjb+2tFokuQ=;
	h=To:Subject:From:Date:From;
	b=lon+MJ+2gIgSVbUbx530DrAPlp3Jjm8q7dnsx6WytP/Cee+JwaJaH6SeeuQjcVmv2
	 XaHNlm1gDGCCmNaAQMzPqQSlEOZlIPoOfvxDP0K/dcHgD3es7geoJOTuy815qDwfmr
	 io5XRQbLNC91XK09WHf+azI4JgexPm8mabvv2UzLk5ObdGwkUyJmTU6IPRAmJ+/PBy
	 W63lj+fS3N7vO9VzNBwHSohXByJGhFJ3Vsbfgzv0UXM5uKHVQYE8WFg7Fu19/CbMCo
	 UIbVkdv8zDbmm1ss1rKkFFGWdfDZUGMORGrn3RL16JOMIwopneLyrxUmJI3pzU4xPj
	 xXVaAEpcPYOWg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D1C8EC27C4F
	for <ddprobe@lists.linux.dev>; Wed, 26 Jun 2024 10:13:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171939680280.30333.9190663528224067669.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e80043b21a9e63fcbeea2f5eee432e09caa61dc21bca043f27241cb1502da40d
Date: Wed, 26 Jun 2024 10:13:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719396802
