Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 224B3192D87
	for <ddprobe@lists.linux.dev>; Sun, 20 Oct 2024 13:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729429554; cv=none; b=VHOe1nzOcYLxfoMa+Vcy0U1JfclS63oh12afbQRcEzkJ05sJ0SUiMDX+6vwupIupaKwdOCbMmRMU7yER+vRvPdD67Y6uyRPXtvn62ZrjJZqv+uEV6eyyFHCO63pHohdCKUridwlSTsEDOUAMFnLXmMdtMtD8g1xcsfuXHc3LGW0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729429554; c=relaxed/simple;
	bh=VhnAwhArthe1dXZlC/0M+67r2eopcOhMIWGuQrka644=;
	h=To:Subject:From:Message-Id:Date; b=TDWwGX6+GBd01ZBnoW2H6y7SgRiL3ipqrja8v5TVn/9ZtDySpQhka1xN4HesgEdP4IN7DTpKt/gI4Gpg3AZpArWhB79gY+5ok9Brm/vOlmRveQE77C4HMbYqIIRg9df3wjYJbfca++3ij0szjZr+fuAlEB3syjHahSNARfKf2Ao=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kas73Shs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kas73Shs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B075BC4CEE8
	for <ddprobe@lists.linux.dev>; Sun, 20 Oct 2024 13:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729429553;
	bh=VhnAwhArthe1dXZlC/0M+67r2eopcOhMIWGuQrka644=;
	h=To:Subject:From:Date:From;
	b=kas73ShsFlkYSdVBgxIS22/UZEASQgIWhzGRXJCJfHAWd9ijjVqKN86PrrP1dtCAI
	 7WenMboGo1T7MUoB8BUha82Eqjry/kdAjLDdtMVsvswsAyG0C3aZdCsOVUWYtmZ9eB
	 C2FCsLBVkmbsKtVqmH43YO54CmTafYrzFZiBsPJxrVAw3fvDs1MDpCvSFdEdm7RuUJ
	 1o/LZfYM4Icee6ctag4dipwb2kMi6UiZXlzSbeGbsuOUd7keal/4hD/rSgiFYMMP8o
	 1WDFLHDRGUXkwkedZwe6lL6sxmCXT1Ti/B9Tlsn9T006jq5trGg8tsoryD3QB6nytg
	 NNhXfrOGlVfEw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9AC0DD3C92D
	for <ddprobe@lists.linux.dev>; Sun, 20 Oct 2024 13:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172942955361.27277.4580530189164383173.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0dbede036b942143016ec9c7e91168553f9cfeeadef92abef0de5675690769c9
Date: Sun, 20 Oct 2024 13:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729429553
