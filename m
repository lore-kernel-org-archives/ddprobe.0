Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 417A918FDAF
	for <ddprobe@lists.linux.dev>; Wed, 19 Mar 2025 05:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742362194; cv=none; b=KKM7x0wW0rF+GBxi9JyQQoXX/MJAIpC1V2VSfQmDlgCeedmstwepENuEVpGpwC59HY59RNdhWgO15OTHRfVoRqlnDXHeqeHpwqJ+PMvxyHHSv2QeM73V7pFfqdEf4odg+5xfqXAmom/VXRWjwdjfyczDRlpNC+cJWpxF407JhNQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742362194; c=relaxed/simple;
	bh=PCTHAPHF/QBCEbEbW2Gu4ZZ0I+6dmBt63HzDe/ebaC4=;
	h=To:Subject:From:Message-Id:Date; b=e8qPcgy1gti4TOrLKm4a1Sv2zR6DxWmJFj33WTffDGZXWj9q3sYjcUr5UVFq49SpApr5mDfqdGFPEYRPr120Od9h33+yMS/mYnvJSnI8GCMMCxiNGhmyrQHgy971UpGR827M6G59fm9hSAVINnoqUVMixJHMe1fXkA9NWm0DKRI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BrbLVarQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BrbLVarQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B07D0C4CEEA
	for <ddprobe@lists.linux.dev>; Wed, 19 Mar 2025 05:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742362193;
	bh=PCTHAPHF/QBCEbEbW2Gu4ZZ0I+6dmBt63HzDe/ebaC4=;
	h=To:Subject:From:Date:From;
	b=BrbLVarQIqWeWN/5NAWHJ4498uhFXdrAuJIcnwjk07UgQ47nABhtqjeIzMAaiWBjB
	 RMsi2EnH8iM7vRfTqaNFpdWjYtzR3ZqFpk5wD6EBg73TRh57Ucnj8mfCdWsDNC/Zio
	 mNO6ktXCWfDBjwHhbyl7qG+Ip3L7gk0cEbwWp31RXrGDykMAsSeHp4e7twdZ78j+qI
	 XTUgtT2Frb9laHbN/IBjwy+1ELHSRHQNpS/YDMPqS5dCYP5EJn62SJupcrW3WTEGOI
	 XYjQCvhhLafBn5BntbPS4Tn7Yu9oRywc6WJ5Cp2eFGu8wEX2QmJQL8xLMUx3oNUfRb
	 LfxTgKD0u60ww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 921C5C35FF1
	for <ddprobe@lists.linux.dev>; Wed, 19 Mar 2025 05:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174236219359.30255.1833012509612999669.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c9c7bd5227065e86cac4568b66974c80e32f0a8614fc69b740f7cc035c6af44a
Date: Wed, 19 Mar 2025 05:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742362193
