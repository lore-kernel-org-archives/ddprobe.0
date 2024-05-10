Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8A9AB7D3E6
	for <ddprobe@lists.linux.dev>; Fri, 10 May 2024 08:32:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715329943; cv=none; b=L5dSVlxVQzxZhq7DmWzy+sEnpCmuUcnjagcNtnO4otUifDigZKaDArvqDp//1/Pj19Xrt22UxIIxqnTHY86FN01ZeyQcpyrqkFKQwE9yfb3gyhmT9q8MOYbKVpV2tHhuAiOYIgLq6gVyyJ5VoFmbdtQTVoC8i2sXOwJoNS5DtBc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715329943; c=relaxed/simple;
	bh=F6sGjf+o354zAdMPL3HAHhX3lzt2PQQT35bgvK07CSw=;
	h=To:Subject:From:Message-Id:Date; b=NHaLZi6N92VuDwOlbRBVmhGmVaTYmsAm8spy2074Ra6gb3tQuN2GS8H5bOE9mLoBeDD61RNBZA2o0DHep8QToXg8pkFcikEubWMUBLNJ213oSWraDjJBcJ5HQJY4x6CMZQ3laCn1NGcPDklnMTYy+hf9z2FFd8u9gd3K0Dw7FEc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lCImOjM/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lCImOjM/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 03EAFC32781
	for <ddprobe@lists.linux.dev>; Fri, 10 May 2024 08:32:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715329943;
	bh=F6sGjf+o354zAdMPL3HAHhX3lzt2PQQT35bgvK07CSw=;
	h=To:Subject:From:Date:From;
	b=lCImOjM/zCztxXx3hHJBsPAPUySqbQpY66eOxluX1xk64duESDQGIR4yMKxzgcm8d
	 Hjj0q0EEyfRfZjhi5349E2/BGQg/RSx6Im723kt0qdp12vsz7PP7TkPVap/FnzoLD/
	 yWlzFb5H4sK/bJ3gJRzLEv7IU/aCzt6THYipVoNFIvlQ6UKS5HsKJcu+jSD6fKJpwu
	 B3hsJn+nWveVVjdE9mjWK+BHnwfEU49XgUWxcPUaPM8OlaYz3MTzlN44skY2cm54eR
	 7Y3XeehvTcps4b9/wmqCQS0bERgnp/xrMKUSTwM3UtpTrnfmf1iDPZ0eq0xMottF+M
	 Z6Bc/fOVgFbZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D893DC25B10
	for <ddprobe@lists.linux.dev>; Fri, 10 May 2024 08:32:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171532994287.31494.16042207859758136284.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1f6ccd29863be16c0d2469da0d5428d41f10434a14b2e1883b881ef52b4f9eae
Date: Fri, 10 May 2024 08:32:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715329942
