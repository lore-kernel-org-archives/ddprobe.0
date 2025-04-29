Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CC7D25A2CF
	for <ddprobe@lists.linux.dev>; Tue, 29 Apr 2025 19:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745953794; cv=none; b=OAb8G1HmFBPRhOCAyco+uS/vaclbI4K+Db1dg1kthpmQu3gjZdjCru/Fh5uABSytk/cES0VjM/0X/BL3qwoDLL9fLHEMZTlvSRYA6DCcBcSQB6nSZSImgU+cVIfbNLSUEa7PO34hvTKC4RNlRg7LMsPfIssZDy7HRWWTlV22BoI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745953794; c=relaxed/simple;
	bh=5sJSbTISNB00cs20Hjyj4txUaSeMNnEp8E09thrqqUo=;
	h=To:Subject:From:Message-Id:Date; b=k8CNt+XzF54e3DAmh0aGzcr4ozoca4K2w9vXL59MHtULS7Ig5IgZ6iyZI/jGyRave1TWjBxy0Jw4yXVWtMuwSyH4zyrrFOLqjLFc5Wzpx7nO9AjDxdD+GeFJWfs+ihU9c/i9B8rgGxVuCsPo7WKThqg//2g3mq+A0PZJmVWWv8M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pPcPH+NC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pPcPH+NC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D3FFC4CEE3
	for <ddprobe@lists.linux.dev>; Tue, 29 Apr 2025 19:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745953793;
	bh=5sJSbTISNB00cs20Hjyj4txUaSeMNnEp8E09thrqqUo=;
	h=To:Subject:From:Date:From;
	b=pPcPH+NCJGIkmsxvhH3oYdzXNBZ9GhXPP/dqjBhTOq/betiw5jBTpx16G8aszGSY5
	 fNh2ab78DJNAflaqTS5F+0O5VPKSKvlGyzXAgSNmZgOCak+QorPpv3GmA+fK7pfo9b
	 t/piQrLZ04GkSvQEg1qXXcVxauP3VGPLmPzc6AaT7RBcrD1P06Cgf491Cd9Uy/EK2a
	 W8SlJ+xqTHtw3CRdIZg9pAqmg99pMohbhz/n6JVDFOO3uKfIvZ7hJi9k3lOPhWY3sc
	 Xi7wb+M96v2ZeJ5XAM38eC/YPlCOU9NbxRBIlluQSgm4Mosr56F47OJseP2quzr32g
	 1zg530+aTNraA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EB7AC369DC
	for <ddprobe@lists.linux.dev>; Tue, 29 Apr 2025 19:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174595379357.19641.15549254966543345561.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 62d89806a61b708d9f55651a1d6f738260939798c287d4fed58afb128ce0d794
Date: Tue, 29 Apr 2025 19:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745953793
