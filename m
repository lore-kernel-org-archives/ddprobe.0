Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D7CF3E8684
	for <ddprobe@lists.linux.dev>; Thu, 23 Jul 2026 09:19:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784798375; cv=none; b=OFui4oYhI13evW9qeeVCymPsybcgynSOTYUD4JDkg+IUqXaP/qsfu/N6aP8fVsFsYTMlABSMabuC+Qtk8cn6jkF891u6dJyKzVJA/fJ9KxpFu7/T64cLJRod5/mGFo9YcVR/63RrqSTCCxAc45/iUhKWA9gzIazHtnCoY1JgE4E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784798375; c=relaxed/simple;
	bh=FfIChRcbhr3WbVBsnPN9aNl10RmCw6xUeoJjkqE/RJE=;
	h=To:Subject:From:Message-Id:Date; b=eN2HNP62OC9oS4vvWhpmZ0bNkvi5v7YeyzF7YTL0MBkVccuozCRhi/tBr66K14m/frLLqnW84tv3YGAvs1TpNA5hdgMF1W/w3rjLkjocgZHGj+Er2chbf0ohaJaKl97Mqzs0iYUZOBpwnclZR0xoO1ZRxyswjTFzXit2iZ/6EKQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fhovf3dT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fhovf3dT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E65D6C2BCC7
	for <ddprobe@lists.linux.dev>; Thu, 23 Jul 2026 09:19:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784798373;
	bh=FfIChRcbhr3WbVBsnPN9aNl10RmCw6xUeoJjkqE/RJE=;
	h=To:Subject:From:Date:From;
	b=fhovf3dTj7udWuAJc0NE1CgvSePWt2RfQDcm4Anj/0peI6comEgIs9Ki63RbMyAod
	 OcG77tSPPsYlhhiNw/xU4N3C2SHgpf9OtmXhK0jobO88o3jVd8iHUi3yNciwihsp09
	 3iWKusGU+iSzdNLSzIC0QdKFNeiQnFTEWD/WR7vjreg2eoXAO5UFm5CPNa8krn9jyU
	 Ob4tfGjH9avs6+90L6v1cneV1JL6Xr5P+l8mllDvsTjbjrTvkKtPcxuKcm/4Jya/4j
	 JU98IIgYIltxoNM5ms1NWpWjRIp8mK7f1Xa3SIFwO1gD8Fvq67xmK150dy8iATh0SR
	 xbA99/RNzQKEA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5D47C531CB
	for <ddprobe@lists.linux.dev>; Thu, 23 Jul 2026 09:19:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178479837373.4446.7631372644684709857.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 63dab926b9453ca2fbfd22c9e51c523d2b2579a34b303a5cce12dfd574421447
Date: Thu, 23 Jul 2026 09:19:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784798373
