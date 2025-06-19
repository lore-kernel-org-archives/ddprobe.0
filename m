Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E0512111
	for <ddprobe@lists.linux.dev>; Thu, 19 Jun 2025 23:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750374595; cv=none; b=knITobuSUy9yTWn1hFGKr/UNMbmHGdjdsQn8L3ZzT7qCM4og6Gy496O9Q9aj/2HHmd7/9W0kb51lxGDtIrAuBPKSHxLxsSDvyccp8MyPElMcg8qMBEMf8R1Z0dBPMi2/Ml56RQN9BtjXj8mSFfqxgSsu3vJni+F3LQ99LvXBRM4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750374595; c=relaxed/simple;
	bh=Cfsnp3CKbPNli1Aru5uNi9e+eNLAOniHMLinYnbGvhk=;
	h=To:Subject:From:Message-Id:Date; b=qQ/xnH4CDQd8dP3/C5HIJxMqJaUnaZFMQ5mOh6TgQQxbmB1CE9H3vM/cBkF7pjd3HdHCbYdamKcTM4hHOMS7Av8KJQIKoVTrKHUBxAVHxsgQoMpyMv6T3V0bICV0fVqzH0ztwBCAYCAQ0Dtu6DgHfgng2rUCwc+NUKkykXBcRUc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pEi6DpZB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pEi6DpZB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0B2FC4CEEA
	for <ddprobe@lists.linux.dev>; Thu, 19 Jun 2025 23:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750374593;
	bh=Cfsnp3CKbPNli1Aru5uNi9e+eNLAOniHMLinYnbGvhk=;
	h=To:Subject:From:Date:From;
	b=pEi6DpZBGKQJ8hqH8YcuFfpufJnhwz903jjd8Ep1G9g44v/FPoNU19p4apWz7hgr3
	 dQA/aN6rcSo2Asjl8g+f1jGu50r5jnzBMqMhIMQ9i89a5+BZ4+Q5NVDOnccTd+8qDL
	 yqmhOdperxhHOp5sDY9hVCXg8GUMeM4rgeeGAf5exVws7rV9GktFsoxkYOhHaY30E2
	 wZPqXUaSjLh5bJI8TqUAuohOyr8vakKOfEB7EkAL+8LoLyj+WYeB54DxIZAtrpYAJP
	 SUNFOB5ei/y3+4sPzj4iQVRD6Dr8nZgaK3AdWt4bQ7QC36kSN32CCd2CU5bja0YcJb
	 mvQ9B9l05VWpA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 918C6C7115B
	for <ddprobe@lists.linux.dev>; Thu, 19 Jun 2025 23:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175037459357.16880.3292480912142380940.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bbfb9e3c7d89a3647e85eefa78dc0129a7a3baf727eda8f72ac7cdfad4ea2bba
Date: Thu, 19 Jun 2025 23:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750374593
