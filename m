Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 669261FB3
	for <ddprobe@lists.linux.dev>; Wed,  6 Aug 2025 01:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754444394; cv=none; b=ipMj7RA5cO913PLHlfhKU3asK1+LO8ckQULHC2veG50jZQ/YgBayqRB4h82RnY5+RffF+QFYyfEQLIxOxSUvONJQcSVuFrt4lRJdqZXbgYEeIk58d4ng4kCBxoYcODqcYN21hsOccCVD0K98HEzadrZU0oOrroPbkp04diGCzM4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754444394; c=relaxed/simple;
	bh=qC7rR8HQ0Ipc0twmkgRgbjdwzPo24UJd5SVU308uMAY=;
	h=To:Subject:From:Message-Id:Date; b=OhpEBlzLVcegB9hwFAeHz5OsQpSkZgicWReMpVFIhF6VGQHnqtLkONfFfc4epAc96TOl+zXDi8QR9+QN3Bf2Yunw2gvlzRbuwYpoCYSVSq06IrBhsd0cZjwn4CN+ZyFZaf4eIJe2DETG2UG2+qE7uyroqnCI0TQJJP72lZrjAv0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=n6wwFm0c; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="n6wwFm0c"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5B00C4CEF0
	for <ddprobe@lists.linux.dev>; Wed,  6 Aug 2025 01:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754444393;
	bh=qC7rR8HQ0Ipc0twmkgRgbjdwzPo24UJd5SVU308uMAY=;
	h=To:Subject:From:Date:From;
	b=n6wwFm0cm7ShssuNpDUQ0j67hOICl1Xq7noqRoAYNOehMiUdow27bQXpMDtgKV29t
	 jVRs+erzb6jHnbyn/hdvII83qIigy1CB4THHY/X9leoyBGSqq43KcGcK6shfTXFqsP
	 zC9ZhM4f8FdSMCkq77JLGIPpq/iG/h1YC/19C9qy65+6MLkjWieNawTe6oEjzs/LvX
	 QXqHa17Wsekr/n6HTCE2CpJcgwzTrxMQvTaQ6ICHK0kVnlRf4lPOyytPmuwKyS1SCE
	 LfKeohbCXLyP6ydnV8yYbxmFsZY3r8B1kO/4SnJTQ2gth/2BAmcfUWIkHMMLyQDdLF
	 IGzGlx/9NnFSg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98656C87FD1
	for <ddprobe@lists.linux.dev>; Wed,  6 Aug 2025 01:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175444439361.14096.13635991689763144671.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fc2d533c3a199e5e8294e210aeed43635383b306272ebf696ffc55aa265b8175
Date: Wed, 06 Aug 2025 01:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754444393
