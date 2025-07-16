Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 260D42EE5E7
	for <ddprobe@lists.linux.dev>; Wed, 16 Jul 2025 22:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752704394; cv=none; b=dngmfGUjwMXeEhhYKOhKZFoGZTXqlXXSjvLDcoRf3CIEStVdfmNxN/Vv8uVblijU5Q9GoM+N2QYR7QfHmgaEesoaWDmab8Otd4yFvbtL3s/3FhdLGfnIRev/KsbZ0xztztyEEyAYTFNiYWGXSkpG4JVqA4qS0MkBtJtW8UfgnfQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752704394; c=relaxed/simple;
	bh=xl/FAaIro6f6J3YepdLlHDou2EuaK+08XQ6DJdWnFdk=;
	h=To:Subject:From:Message-Id:Date; b=fUt6JtOy8GnvxMtEcObVckpOGdAv85kZC4cLy11fJIQFvMGLhPeVV+g2sEemlAOhg3aOheUrzWAK0qhB5wLXkyRy46EHdfLBIPHFjqifOfbxv9N3sSh2Y3YsR/FYHWeNSZbRFS9GO9+tpIfNFRC1hHBK/vTUO+ExsH6uE6BvWXw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eZEZINEf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eZEZINEf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1E5FC4CEEB
	for <ddprobe@lists.linux.dev>; Wed, 16 Jul 2025 22:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752704393;
	bh=xl/FAaIro6f6J3YepdLlHDou2EuaK+08XQ6DJdWnFdk=;
	h=To:Subject:From:Date:From;
	b=eZEZINEfjMkkFxhi7ma36nT4TmFdhzNoh5GLIB557AQa7He2i5tNeGckHXUVFZO56
	 VLN+1lbt29JfVEMoJI1W1QFRZmHiQ4r9QSMwc5KzONbMvFkbZ2ht5HkiqE9p6tKQm4
	 o0QTpT6N+DsEHnYMtA8frS04n8e+RXEq2uody6+BqjoVqF0VCqph+nIVH5o4aX8jdF
	 tHgVkI8uASEMxkTgMmIUBQc9Zb4Uoz2MDXfaIItHv6Wq4iBMNVMXNXgdoA0RtzLaUK
	 sVz8YcNN4aA/z8FhZvazTaQSGOLfMp3OT9+9NxY0yFIBgRYzk7tYdnFvz65c2WK0mJ
	 ly7/S+Ym9X07A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 921EFC83F22
	for <ddprobe@lists.linux.dev>; Wed, 16 Jul 2025 22:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175270439358.22877.2509639280049417801.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4b4f45309af9f929ab16b3827aa72f812de0cfe0f165d7d9a2e252cf1c7c112b
Date: Wed, 16 Jul 2025 22:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752704393
