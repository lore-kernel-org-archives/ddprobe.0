Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F8A538384
	for <ddprobe@lists.linux.dev>; Wed, 27 Nov 2024 15:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732722354; cv=none; b=ayX9Mr+PeJQJaGM/t5q7FnjNGlvOpmPMxiOUnC9hnyfKrx3yUlQYazDCbJJeiGuNtNjSHRTBBaU2lktsgpG70sRbsrIOsocVKtMF/B0Q+Xfd80Mfl86AkNY4n2j/Qo2mz4p1UbSjP/jqBd4AK3LBAZSdIPKrANvctNB9jDo+yNA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732722354; c=relaxed/simple;
	bh=CyXSuHfn2DwQdJ1b6QNm3THl0bLMSWuq7ler4Os6Qbg=;
	h=To:Subject:From:Message-Id:Date; b=BjiB4lycw5pytuAtXckdRTXH9ta8Hh7cEV6VjkIjRZ/RAsCFgt1YaLr4UQJVdtR8aWP6l8JosAPHWytWbLWYzQR4KaNyl1BDazMzSIKxj4lTyYRubkuSgIs1X8rhZu+aVEQFZTiRGKLFmGX/h/SS/OJcRNvXAJw5RXqEXRtubWU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lNUPdNFi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lNUPdNFi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB3C4C4CECC
	for <ddprobe@lists.linux.dev>; Wed, 27 Nov 2024 15:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732722353;
	bh=CyXSuHfn2DwQdJ1b6QNm3THl0bLMSWuq7ler4Os6Qbg=;
	h=To:Subject:From:Date:From;
	b=lNUPdNFiXnfWmrI5fNLkgX//NsL5E5ngzz93gUfbSsT2Q/8XycZ+E+FePfKhnMRfQ
	 VkbZUZqxl1Om3VsSBRTrf30CykoYk82D8qp8ItgyFEH0fjpT/Ujsd19TRlW4IRVnpJ
	 TbUqFifpIqhc26EfhDQWRfTsNWCRkIx++Tf3Ke9XMSO1JR05oJX1BHgUcWCkxAceVS
	 OPwePfJyNBmKqjY99teAuqgIhv+r9/eGYjKu+Ly4pblUv5e24ShZnPFYXHgPotF5Q3
	 R4j+TZH9nv+mXjx/fmTt40X2kkYHJtNlCTHoKSpn79jqtBllvVEsJ8KGKP13LtGbfV
	 IU46h/FEQvVIw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99625D6ACEF
	for <ddprobe@lists.linux.dev>; Wed, 27 Nov 2024 15:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173272235361.6039.4144436036969954020.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 049fbab471ae418edb590862987eb9ecfb141a2c5cfea16f36aa8e53cbe81ba3
Date: Wed, 27 Nov 2024 15:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732722353
