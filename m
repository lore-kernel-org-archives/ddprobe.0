Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FAFD81720
	for <ddprobe@lists.linux.dev>; Mon,  8 Jul 2024 12:06:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720440383; cv=none; b=ccuh4XJxEA4glNkV7Y7bQlXzF2I0o+3LzlS8xtSOr3hnTKYQLu0388tjbfEDr11lWTp02ZC3cmeJTHKG9Im700KzhuxfwHLHYiC24suGW6qqgecgmwYv0/mlzD28h/f0N6sr7NXS0LTKXRPebLkIJM33NJkqG0u4rlPiqNDhI4M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720440383; c=relaxed/simple;
	bh=/C2BcFfv+ZjfCg6WTE/sZ+h/gxL2TeSUp0ZTauI+ZvI=;
	h=To:Subject:From:Message-Id:Date; b=nZGTCUK2gjuOzRJUcWmfTsKIuakmvy1mMYLh4GQHsh8wIzX2BGzWNLlj62BodZZrG5kMelMy9D/ptsJd86kH0q0DgJS6ACFRcyhnWm/PhxEPDpEaeS6wskx5aHCKHkTt07l9sAHx9KY9IWp7bCBKQmHu4Qd54LLTrOYl2miF6BQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BF89Pn2V; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BF89Pn2V"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF56BC116B1
	for <ddprobe@lists.linux.dev>; Mon,  8 Jul 2024 12:06:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720440382;
	bh=/C2BcFfv+ZjfCg6WTE/sZ+h/gxL2TeSUp0ZTauI+ZvI=;
	h=To:Subject:From:Date:From;
	b=BF89Pn2VmtOV9epoLRnROy+d3riuM06eNX/GzCOcyzWgeBWt8wP/Pk81aItK+w+bJ
	 uJECSuZxcspe8UpqHUuHPGmkI9zsbBOvC2cL5yyzlnN1ruuuP6PBpGwG9gKC0Eb/0V
	 QuZ7rJjXPazFlfXbJFAPPRW+FxthXcLK1vRV57Vaky7TsAxhQgXwivKmWJe6ncm917
	 Ivl02k+0+S0i5K8jtlNzRUdPKsoj5FaTKZd5j0i1ZPRNPdiMuZGPouBN/0vsKw6wwb
	 DK+pMPSMRMU6XKI/zabn/Z0Ey0D5xbwAVu1mBxiwxILB+QApIjL/JaAZL7eKLA3cfV
	 dMXHJ3ZaCBThQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BBFACC3DA42
	for <ddprobe@lists.linux.dev>; Mon,  8 Jul 2024 12:06:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172044038276.15062.9017178956702057169.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bfc7eb69f16b1a7e421590bef9f9cee4de0ad33bd77ff28bd5235c1d1911ce69
Date: Mon, 08 Jul 2024 12:06:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720440382
