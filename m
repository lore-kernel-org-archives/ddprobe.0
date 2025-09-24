Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21F5CC8CE
	for <ddprobe@lists.linux.dev>; Wed, 24 Sep 2025 04:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758688794; cv=none; b=CDaPkFMTf/Sq7EUYzObBL24A7LwC1XE6XrroydDzxWrvqRqAswC2wYOEpgkli0vw3pen7ZK0D+iSe2yh6OZeP0uIX59uc8ay+c2Ih1jMcefJAMlamC2LqPI9idRvSG1laNTJBCBeP+FV1qqLSiVcDJQ+jQX75eUCpvidPK77vVw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758688794; c=relaxed/simple;
	bh=2Xr0E7T1yZEryyGV1d+2c1aKilV50wRXL/lplHde5jo=;
	h=To:Subject:From:Message-Id:Date; b=Zj9Ky/lnIs/PFHWDdDuU4VAWrQ63CKbsHaRu3/v27vLAZS6C1dm+ZX+z7C83U0dvyu6wRd+rReS2J+AaDuMLhaO5JAxQYJI6S8wLyLNyNqakJD/gO9U3xb/uQjBEJweb8CgKc7xSH72H7JlBoO7g4lRUpJ2TolcbT6vtCRSoDTE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=O42YCm/L; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="O42YCm/L"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9257C4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 24 Sep 2025 04:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758688793;
	bh=2Xr0E7T1yZEryyGV1d+2c1aKilV50wRXL/lplHde5jo=;
	h=To:Subject:From:Date:From;
	b=O42YCm/LwoZixlyW1oEBn1c9qlEgadt9Nm2SpMggzs7t+qQgm/XW00YnNIPNPx8k0
	 NBUx9TfUGLzgtdc7Wn6iRlUEASTsRGZ40SZgKGglipDiuDtfcRaWHnZq6Aj/S8ORkf
	 myLhvG/ZNn2nfZgIKV4yfDhe5jQgjvSmXkVhI1+/X5dl6maC2PJ+ASfDV2+1wwzUMW
	 x0D/NaHwsFul/GLlQxxJlW2s6CVbyUKdD/2bEmtPrH0vMFdtkB9hpj9r5dxh0txk3A
	 GTS+jro4d0vKXD8qM3s56Uo0DM8NotivOW4SIrBdPYIO2HJvEVsXapiSWyde36c7fb
	 XIHndmsZwsJTQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91FCFCAC5A5
	for <ddprobe@lists.linux.dev>; Wed, 24 Sep 2025 04:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175868879358.6446.12411300578327854615.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 05c5f67a361c15e37b8af37d00d598ca03e03dff5b52abfa4f8534b2f8e75c2c
Date: Wed, 24 Sep 2025 04:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758688793
