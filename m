Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2470A2236EE
	for <ddprobe@lists.linux.dev>; Fri, 23 May 2025 06:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747981794; cv=none; b=ASTcTwIHQD/6iebfzSjo8+4cAZJ93uoxqvHIj1sPyC7weuD5G7LPPS24i3EYSmOkvk5Jkjp5/TFd9Yq6T6kcOVp/yF9pZ2BztnDdtuMlEP3uBB3WrXGAaxLdSss5EQaTgFWSTEDfykMaqwtdWDVqKe6exefYW9vGlG7+WOI2ai4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747981794; c=relaxed/simple;
	bh=GFq/Vrtga/eIYXee28YCRloxEcPTpVFbFnMiowxp7Dk=;
	h=To:Subject:From:Message-Id:Date; b=bot131lHCF6OT/hNtp6MFdDKS4JUuQcrAnkji/VI/g1rMxiyiOIzyYu5g7otXZbEO77io+z7x2sRM5RSAnrvT4uxcJJa69KAH8nJZ0g4b93dpF5KUm4ECCXq8pTnZNNhNS4QXsmGE8gBcOel0Zyq8FzZzV2z0eBWs+dkYMHT0S4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=t3cUmYjj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="t3cUmYjj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DE60C4CEE9
	for <ddprobe@lists.linux.dev>; Fri, 23 May 2025 06:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747981793;
	bh=GFq/Vrtga/eIYXee28YCRloxEcPTpVFbFnMiowxp7Dk=;
	h=To:Subject:From:Date:From;
	b=t3cUmYjjxDDGhj1mr6Hxpg4PZYoPJf7EJ0P7iRsfqAgeI2U1imoY5XVvj6KlP/bcb
	 nfmWVP7D5egPSZT+K/HWWCsU8LhJW1pSA9+fztK3r/fVkMHKQEOfeVcBhHmnW6Uv2X
	 hEuZmWQ9ntHdemZ0lk66GjCOuMPRu9HAFQ6hgakApxv8O8hf1jCFJJyXdSMG5Jxckj
	 Sl/FBSkRMaIhWtPpilzxaJbWjI4hwB36/XGpzyaYZkmX7okO/N3oXbghCRW+62Rvoe
	 JPNdGt0pnRY02UBJGA6JZ4SGEMRKB4UmOoPBq2zGYuKdlMHw/jzAjj4Zayso+XSfsF
	 QGd1FiScqXnjQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E4D8C54ED0
	for <ddprobe@lists.linux.dev>; Fri, 23 May 2025 06:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174798179357.18619.8107379647895443375.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 89fb25302a31b48b36ba17ce09c9996afc0ef4137e7d7f517bd4d656611433a9
Date: Fri, 23 May 2025 06:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747981793
