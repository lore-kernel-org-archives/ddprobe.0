Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4EC894483BE
	for <ddprobe@lists.linux.dev>; Tue, 28 Jul 2026 15:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785252034; cv=none; b=c+o6s4464kmWdCLe2znvSucnmVEN4V4GyqdNX2bK38wCpjhqy6gvw1gHJs+8CS0iG01VWVyqWsPuIZiVSxwJSK9lPB/wSQthu43dv2SoUKvyhiID2uJKJHwRNguRqJf8kCz2H+lBMpElL9ZWjvcpUgcucIi1nYGRVCmColViol0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785252034; c=relaxed/simple;
	bh=1lFx7M35MkBa4EJzXLIK3d+DGZ3eiMYg5652inZUfCs=;
	h=To:Subject:From:Message-Id:Date; b=PexbaAyP2sp0rABv9cwwfGuVKYhta/lum0zffF3z8zdc50DNTnNYrQmnBvxBTaJY7KkLRWDCXxkAf4RUh6C4Doodc5MnSJw6f5eWZAO2RHRODutl11/VuOfFHBZLVFMBbbDev5pb5/WZxaec3SCCTJWHOgl4tWLIACYRx5G5ros=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Di+qXweW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Di+qXweW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB470C2BCC9
	for <ddprobe@lists.linux.dev>; Tue, 28 Jul 2026 15:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785252033;
	bh=1lFx7M35MkBa4EJzXLIK3d+DGZ3eiMYg5652inZUfCs=;
	h=To:Subject:From:Date:From;
	b=Di+qXweWHJEI4KPZbuF3UmJbRtxDnbvojBOFXbGcU+x5B3EgAVfqJv2pst7LP8sqW
	 6eHCNljDyJCuEblMTIgbd96azJt72VXGE0Z51ud68DL+h8CxX7tdOwuaax1j1Q57wX
	 M+3Ht8MN4xOt3hsKhQDkmPbbmDNFFr5ZuVKlPJQ5iNTrvys2oSEd0DZ+EZJmJwQeh6
	 8j6zBMzR7e+TBxnK18yk3bU4C5gK3tJ3LrRQ403AXcfz5VdTL01btFiurz768NIhqW
	 GOjJX5h8aCnz6meINW3W3Bgic9Wl/KVTmLHt9p5hzA5yKS0bPqnxkFB7q5RAemHbGP
	 iK50DJDrb92Tg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8A47C53219
	for <ddprobe@lists.linux.dev>; Tue, 28 Jul 2026 15:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178525203368.24945.1447692816250757588.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7f295c6c0bd45d9fd3dcf2e0e99661a29943a6468f23a53b916d037785982c9c
Date: Tue, 28 Jul 2026 15:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785252033
