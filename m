Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DAC91DF258
	for <ddprobe@lists.linux.dev>; Fri, 13 Jun 2025 11:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749813594; cv=none; b=bD08P6+n7P2LkM8JBnGjQdhzNuIl7uV0+E9wmdOGx3AyBbQs0ajqEldrzy+HqeG66nkB0vkDhxPMhyNbakk+6m0Bh5JdpFz9mm7ZNOqoz58T1ik7sA/tOptdGL5RGY3i2DXQ7lZweJm4pAbUHZouAvlO+EKBjan2iskbnBSL4io=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749813594; c=relaxed/simple;
	bh=iET3l2YyMv7VK1nujJ63DzP+kDfe4DfUDUDARUgF4BA=;
	h=To:Subject:From:Message-Id:Date; b=rCZ0uIVZlq1ApSxilacP2B7Ybf2dvNToFF+jMW1syoLMGQuo3Bv8zD/VQAcDcY9CXarLK0Zn+jIYW+A5ae1t64HC0TTgu0B5aquxqEv4GJVdEe/Ful9DJaQbsJkNI+AzZTRwvcwtyxiauOB6fY2JKLQEw3+4gjKB6xx8rSXfXAs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JXi0MGr+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JXi0MGr+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7532C4CEE3
	for <ddprobe@lists.linux.dev>; Fri, 13 Jun 2025 11:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749813593;
	bh=iET3l2YyMv7VK1nujJ63DzP+kDfe4DfUDUDARUgF4BA=;
	h=To:Subject:From:Date:From;
	b=JXi0MGr+oZUz+p2PlJr62vTpqDeJw5c1FBFC+zjwd5StU3FTDONsOz3bHAL/LwMUs
	 dwMf6fUPf9bhLyBB55QxlFqEdZvYSbVgNxfr5kGhXTIdZMEuVkicGBxoh+Is5WmlCT
	 6fhmH+gU9UWmrhN4h7iQ0ICBvXOpFhjjVKgXbbmI89uwfLOnA4DC+yg3DgOOIn5VL5
	 lyWAK7MigYRfVKgmXkvKR/VDRcY/ZbAH0qk/6T0BqV6G9gqE1rnzOA+Tpm2lcGe7eM
	 Uom+kidjeh+0AAWnFncjiQzmGgB1sOqU7pBXl7FFuOo234ivO/d64ROXykNFkIyz29
	 O5scjM6FltkSw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 913C9C71135
	for <ddprobe@lists.linux.dev>; Fri, 13 Jun 2025 11:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174981359358.20018.15619640351365490939.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f0caa16391cf1bcc73450ce23a7672e2d8e97021bc7c57ef5129f7531afe868a
Date: Fri, 13 Jun 2025 11:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749813593
