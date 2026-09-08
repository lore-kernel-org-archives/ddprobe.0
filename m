Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 554F735C6BE
	for <ddprobe@lists.linux.dev>; Tue,  8 Sep 2026 17:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788888034; cv=none; b=bey3S+Gd7OyG2vjUSPU14S7FPQZzdFoVb25oyE20KacFx135EfOGXJlm4FeuZAQKgP4Wgz96vFoNkchdeiBsuWnh5LEmQdcD4SINmnajmb93HYK7UnwM2pW2E7vgJBZYFTabH1xOEVBmVF4c5k5FgyDouqTtrzK6mqaXmroAaLU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788888034; c=relaxed/simple;
	bh=E0so/vAUdSjB3PMCoUtpV1lT5SIT+zZLJL1/J3EwQUA=;
	h=To:Subject:From:Message-Id:Date; b=BpnF5y3xTKmCiTRIVwuffp51JfeJOzQKtzmWYiepHbaGRdqyingd8to4unoSbVwF/Uqo5HfVMhHOqRQwUAT1ST98akn1qAZLHxzuSP8oxGHWAnaR8LTjksBtrjjJVLYopSe4/p/8bNIwk12+Ye4o3HU5iP+T7zEDmWdlmikwvVU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KGsgPC2B; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KGsgPC2B"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6DB4C2BCF5
	for <ddprobe@lists.linux.dev>; Tue,  8 Sep 2026 17:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788888033;
	bh=E0so/vAUdSjB3PMCoUtpV1lT5SIT+zZLJL1/J3EwQUA=;
	h=To:Subject:From:Date:From;
	b=KGsgPC2BcFFcvBO6jI46FmjR5+xat8AEkmhKqQvI8jtZ9t2CKEXDHeeG97sXpGR5D
	 qHNmUC9+5kzR7H7MDR4jnQB49jEGaEwejKDQBGDgMtWhk2nY1tPgyRCC1gGmXBNb8+
	 GrWKJk+FG4WdHgWg24fOnjFOw2wt8PbX6cYAwEOZyEE2QsBd0bsR3cYDO0SsmxUAZy
	 37ZK28+iON0cGc6RXL/xLbsSDKjyoaL9N5p3yxMtz0hQ4Ixoztodb/+fP5ISnlzLTF
	 ZDj9nLsuUhQNzKMpOQy1wLW1n4copcgwPeWiV8Yw58C5/tN8ZA/YvruWWfeWwQ0kxY
	 NOrJBLLMdmDOA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1C66C79F82
	for <ddprobe@lists.linux.dev>; Tue,  8 Sep 2026 17:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178888803371.11338.9383374361690491738.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fd94248e81281a4a08bb8de33936426a5e593b040c3a4627732264f2250d1d6e
Date: Tue, 08 Sep 2026 17:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788888033
