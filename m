Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F1B92BCF54
	for <ddprobe@lists.linux.dev>; Tue, 29 Apr 2025 09:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745918994; cv=none; b=kfyBVRveRigCfrJE6uV3/OwWnanyAlsvK1sSUh0wBiogU4V0+YfeMn2fe6tOFC+1TKTlkU/roK8UwQLssu7KUkHySC6StQ/IYsBCO/Ta1HIvqH80hEFk0rWuwL2Ctdu6XL+JCyPyMsk8HDOelgxC1cgGunytnIW5E7QPP/0Lad0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745918994; c=relaxed/simple;
	bh=hNlm0pxGqRJWiKR9Z59+TLlw/LMYJCTgyzRPaDQ5Lmc=;
	h=To:Subject:From:Message-Id:Date; b=Z1xwDMdW8COAAd1YEFsfZSgUqbQI4UM6cYzzRD20P81ywPl4tP5pJ9KKrryfc9oFShZV9UkZj1jvOdhY8LKAGJ2BFp51eDZGnMTMuqhrDWqH7gy4Q/rn37A35/Uf9bOEjZ/qDnrfnwyb9qNFDPPsaGPKypMyJlshJoVX54X7Xs8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Y/nGiX74; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Y/nGiX74"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A627AC4CEE3
	for <ddprobe@lists.linux.dev>; Tue, 29 Apr 2025 09:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745918993;
	bh=hNlm0pxGqRJWiKR9Z59+TLlw/LMYJCTgyzRPaDQ5Lmc=;
	h=To:Subject:From:Date:From;
	b=Y/nGiX74URBZ0YQO1r46OEjZIexiuH9j4v72YaIA4A9Zyl8j72LY3ifnv53OfDQ5D
	 L1k/Sk5IZlcWVeYL3AkhC7kmL5vZCe3bP+Mfqqhjldg1FJHaGE8R3chiNEbktQRzhK
	 WHDWFx4ocVNQQhAAjpSjkRgVuerPADqv5ki2avkJBCsoOAOtl5qcQDjMVDX5sWmb68
	 15/Kjsux6asnfDSILKSJ4K9zLheklulSECQxCNBixArFu2as/3GVzoWnoRzvKGvwWo
	 TidKH52rM0WdnmcE3zB+tsmEpMVC/CHA4uyWDnV2wMnOaniTsNlnz/hHSQcINif0ov
	 j9lLb2ZhYsDdA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F51BC369DC
	for <ddprobe@lists.linux.dev>; Tue, 29 Apr 2025 09:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174591899357.7783.315462698313382958.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 644e7a2c564e1c959fed23b33b76843c7bee20f2e077ba89d62259f98a472a06
Date: Tue, 29 Apr 2025 09:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745918993
