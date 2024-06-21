Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 11DF216C6BE
	for <ddprobe@lists.linux.dev>; Fri, 21 Jun 2024 20:42:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719002543; cv=none; b=LZfBpuOuHAi82y9pSBKinqKqsJdOqSyzKmdYwE1YapCfpH5yqNB4lJUqoDZjKW6Ofb8sMlChwWL6FAKbGhv6ZAaoz02Jqbvm6AovJanOQBHvVU84j69sOH09lzLI3h1DV8hD86JPELgs0EMCG/TlxAqAKWygOY/zVaEvW5aT50I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719002543; c=relaxed/simple;
	bh=70r+66JwINKjOD4Na5cN1CT1PVRl89q6lCVJgturmXM=;
	h=To:Subject:From:Message-Id:Date; b=Jgsgk7QPWSCUyqI+QFLOtTkXO1ZFkUbcOCSLCVvHd1exyRqB12b+L0kLeiXojjecvEwIWxjgkQmy/Uqjq4b3MwnchqkyhlbFaGPYBiuXXOpWEM35LRAHTlGurSgZ668r3/9XATndEfBCel9+kP++JCTwd0pvzC0uJdycjA6UoJA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hwowKUiC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hwowKUiC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA108C2BBFC
	for <ddprobe@lists.linux.dev>; Fri, 21 Jun 2024 20:42:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719002542;
	bh=70r+66JwINKjOD4Na5cN1CT1PVRl89q6lCVJgturmXM=;
	h=To:Subject:From:Date:From;
	b=hwowKUiC7d89ATA6uprJofJlezW8ThRY1j3lrLmTcBPaESu960nnoPw/stuABsrGu
	 oUxXQD3c0fdYMoJpyPLQnNKn1+ChR27apo3p09XsuEvAY7K/YterTIfOdMlCXEhEuc
	 7+skSr6zEEeotC0Kk2MKJA3W+w9E9PnRIIOR5bPwfi0hfhEY3nm5gBfgwOdYB+4BPn
	 HDcz3MdaL9nb6UEdAkXXSC9WQ2DziYv7umzv+F+YPCK24+qRAF6u5iCA+hfLS6vjVw
	 Y8gNUkVJBdb0H5mZmS1l8/HcWAeUGdKMM8/FVwia0pfFnajb/1+4kzDZ3trmW3ovbY
	 i7ZBHk+/dGoRw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C5D86C27C4F
	for <ddprobe@lists.linux.dev>; Fri, 21 Jun 2024 20:42:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171900254279.21633.13013394827417757235.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1dcd8c7269d6526e4366173cd7987f17d2e2af264930a757b3701a5883c95851
Date: Fri, 21 Jun 2024 20:42:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719002542
