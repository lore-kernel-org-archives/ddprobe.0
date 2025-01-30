Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5AB561E8823
	for <ddprobe@lists.linux.dev>; Thu, 30 Jan 2025 19:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738265754; cv=none; b=JOn7xUgLvkbZBU5oezYI2Gdzhyax2/aFCqVjKf4BQpuCf8fwq1nWvniK1NErdBXZJrbtMmS4N3wcQ8E1Y8B7I8mOfE4ZivKtaA8P9Ezyq6sdw27IA0GLUNFCCojdacVxAZNpDtYX9SalaKE69jbbNRuAVZN+IeEX40IM41My8B8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738265754; c=relaxed/simple;
	bh=ESL2vn7q+sd/KVyUh5hFKuTyK3nzmnxjdVTbh7D5wy8=;
	h=To:Subject:From:Message-Id:Date; b=Z8/kdglUcY07i+hErRmcQL5t0WCQJW61KAnvzO5KgKCEIwWpf149a2cpq9QWVtDBDvt2IvvTmia1FLyLt/fw0GeyvtnZMO4qtvmKCLAxnMmvDy0iF4SvV3kcFtTV/pYsHa0e6cdOkNS71ncwlauUEvPrQMkTHIdF2N+mDcFpYqg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=d1aLvgr9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="d1aLvgr9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C3784C4CED2
	for <ddprobe@lists.linux.dev>; Thu, 30 Jan 2025 19:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738265753;
	bh=ESL2vn7q+sd/KVyUh5hFKuTyK3nzmnxjdVTbh7D5wy8=;
	h=To:Subject:From:Date:From;
	b=d1aLvgr9D7zmQkkPLLxg39tnJ+G36Qisd5aXo367phj3dd8MfeJT4BsU7/nap3G2B
	 EDPVdmlimBLUbpUZhkJ5XeTAVpLq4dlY7oSMLsFunoNC2ZuUdG1TqDfKpGylR0sn/Q
	 S5b/odsnpoMnTUuKPV2bjK4ZQCKQUU5q6eXXgcZvPjRV/pDN9wV0vM0G0N4arHnR2U
	 uxdUKyyrkSGE/INuDWVByns3awu2+UvNCzBskS4CK3CbBow3ecnh10ykS+I/6duQ0r
	 lDP/8s+YJyNBVwQd8izGUgSXVQ311hWYmfAoKuWkb68o0r1JXw2+z9O8fRlPR+wDLV
	 NABbcvLfVwbaQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA906C0218A
	for <ddprobe@lists.linux.dev>; Thu, 30 Jan 2025 19:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173826575368.14350.17981677392656348707.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7738f453e735d69eb69f4f36fb3505a21c48af0c0c76742c9886b9ecf17e5fcc
Date: Thu, 30 Jan 2025 19:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738265753
