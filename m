Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ED806BE4C
	for <ddprobe@lists.linux.dev>; Mon,  4 Mar 2024 06:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709533097; cv=none; b=iHKnH4kkE6l3a9gdZa9BKNTQqVeAqk9diOYpcHiZaMxrYoq/uByjqX0M07kDBvXy08hcOxw36vpHJQFozyOjsA/Pv16c50/H75wb55r/K0YMk5fwF4SsiJzaS768GbntiCUOzBGhpu7+Yk24iKGAZcoLBHsR0QHC92e7e3ZQKok=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709533097; c=relaxed/simple;
	bh=hFeBwEFs9mfPzaRk+mIHGORusfXzcuPb5oy9vDl2ul8=;
	h=To:Subject:From:Message-Id:Date; b=f36hE7iwk/GIZkzhajCGBa7KowlmvaQUeAZBNlg6KFjMoCYFcdqWlf+abWyY1b6pETuw7aNM9jv4IXOHpfDuDWkgMcb13Xzr4Y5dF+wnpPFv1z0L/+T5C+j5dA6mMGYUDAJe3ic++z9iCcfYv7ZXPuGnbZzfg5OGdw485om3pXY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lmlWu9En; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lmlWu9En"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7EAC0C433F1
	for <ddprobe@lists.linux.dev>; Mon,  4 Mar 2024 06:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1709533096;
	bh=hFeBwEFs9mfPzaRk+mIHGORusfXzcuPb5oy9vDl2ul8=;
	h=To:Subject:From:Date:From;
	b=lmlWu9Enq1rwjZtb9Z6rElDeHeup7yehNDzE986tTdFvBopT9maXdJJv52EyFevcX
	 8SHJAW8tpYlVZ7C0yWLws9NhvGZdFIyVJkmlAbFburuUhACGPiOp2ezcfNFmPIR0Up
	 2Q43X94FBpBSOMFErV126UaQ4tRCM7qowXf1YNKGEGH6Vawz8licuhOOQTSfElxArZ
	 WGb5NneBDdBb3bPPTsOuFp/xI8oNZutAaLWqMPqfrwBZ1SEAdaVK4Nzavb73MMSm/c
	 gWAULgIiTA6QX1V3PkH5Q4aoGMVU2EhMvcRjk2MxuZtK98n7UWqNblpjofUo2R7xu3
	 cRfLG2mxNhosg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 62846C48BF6
	for <ddprobe@lists.linux.dev>; Mon,  4 Mar 2024 06:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170953309637.30509.5136429689304479997.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4e0b846a722c7806d3a202907e9f3c5eb42c95f9aebb36d4a01e9bf45b332aa7
Date: Mon, 04 Mar 2024 06:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1709533096
