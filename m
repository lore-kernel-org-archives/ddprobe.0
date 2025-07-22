Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32DD63C47B
	for <ddprobe@lists.linux.dev>; Tue, 22 Jul 2025 21:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753220994; cv=none; b=QMpIa9uUyc2Jk/2EP58XMpUNjCRCsMPror8xCVDvXflARBwLWAnQZjdCDDprmfgvTu5FdrOYCgrmzMLXAb6OQo61Nir+qadaN7RaCwDe8mPFDDW/bbwdYnHyAQCHf3eNZYcYUZYe6dR7lVNefXpjGKOO70AaLbTAgKNxuLwEXXY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753220994; c=relaxed/simple;
	bh=XGTDif9O8FeMwfBV1m2G4fNFNy8rL9ztlGMeBaek9kU=;
	h=To:Subject:From:Message-Id:Date; b=Bf3/YmRCbVHSU667Pe/ebT/DdLx19qSzxkDCBDo7sgz+Xrx/ZDzfv1PI3Vq3ZvjnVoEkQx3cPShUPHoIohZhPUCXYG8E6cx26eOM2u5g5dFshSCVQotqAFYklVMACoX9AjIx7qGsd8arOXgphzeC07XkrY7gkTiYXWgj+b8ue18=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=J0ogo2xw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="J0ogo2xw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6B85C4CEEB
	for <ddprobe@lists.linux.dev>; Tue, 22 Jul 2025 21:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753220993;
	bh=XGTDif9O8FeMwfBV1m2G4fNFNy8rL9ztlGMeBaek9kU=;
	h=To:Subject:From:Date:From;
	b=J0ogo2xwTTUsjJv9w4RI4yhM7prxeNtLume4Hhpev+Dh5zXeSVnfGXx6X2xjJ33of
	 UgmKH0CKPEBj4aklXlTrcN2wS6Bf09wOQomASk7MDqAjSxK+bYnoXsFMullmMtkgwX
	 THJXvejlpuKOJB/NeVHKz7gtEmWSYfoTDvpRCv4FAKOgHfSf00yEfiSdphzsZVgbcw
	 no/jxGja8tF2Y36N+nJABAM/C23S8kz22s3/JKf9avNfUFCONAV2TJP2RX/rjAMm6I
	 BcOfttwqu52yYfDCqq6TlEK4u29VBn0dqF+rLiDDFN+e6PSBcugZpdEkYC18y8YaWU
	 0hRakySMrvE+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 942C8C83F1A
	for <ddprobe@lists.linux.dev>; Tue, 22 Jul 2025 21:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175322099359.28551.15208122755690303896.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7f4db6c15a3baa6114b77c56c0d1f4dde9071623d1b5aba122f0827da1ba7bae
Date: Tue, 22 Jul 2025 21:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753220993
