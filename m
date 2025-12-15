Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D9D634DB74
	for <ddprobe@lists.linux.dev>; Mon, 15 Dec 2025 14:32:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765809174; cv=none; b=jb+8x/fyZF0rTZrdLZt9LWd3CgRu/KIIKMdvh3NZuboH2lAVV/2qiEKiVgshnw1sBbYii11V0hjaRo+LQLCYOtWk8DctiCaBekeXoOKc36O/Hb9QxTBEvF8HLpzqprbkAqGb6W3EKRkYK1CjGfD+Y7Dp8Rgahgy8Tu/9ygAoNO0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765809174; c=relaxed/simple;
	bh=c4Po6V675GRtyaw6+92fBEFIaXXDsjZtwOcbvIL53ac=;
	h=To:Subject:From:Message-Id:Date; b=kZ2MsEX/liLd/mk+vXcFLtNm9ceXyREk0yzBjxmDw/f9hx6Ti8akWnUWXPUUUiRWeYrYfXz7hIVx4HgagR6OvxrJsMf/iBnL5/F3ovq0hhkqMrxiKaUXjW6ydSOA81rH4xXrq+irVlVLVHppaten96gUnoTo6dOLyHGW4J89H5I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kkfjZL35; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kkfjZL35"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3D80C4CEF5
	for <ddprobe@lists.linux.dev>; Mon, 15 Dec 2025 14:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765809173;
	bh=c4Po6V675GRtyaw6+92fBEFIaXXDsjZtwOcbvIL53ac=;
	h=To:Subject:From:Date:From;
	b=kkfjZL35gpYUnp4ODdGG9pe/SW0iJsvQK4nsP6TyXcMFUas2aBt8xvhtlmVQCOgEq
	 vxzvOVp4EIPMusB4FFkR1n7Qk7Qprwaw3eWyEACzoHdUP6HO4+ZYY1u6UcJhw8GlJf
	 JONIevm3fyWAIYMSRF1FyV4UJi7aMDvirmFM0ORBNloe8Oeao/1lSBl1tVMfP1uQ27
	 bZLTTSNBD3aySNw+x9QiT7sS42gONNT8hyrhCsYlIWTeZlfg9lZjQRgzrBye/AaF4t
	 AUMaDxUTXva9Ll2YcNcjCLWloTUG04Wo8KmjT+k2E3HV9B02YGlFau5Arg5GqjdZpE
	 5e/uzekIIaPzg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91F41D5B16E
	for <ddprobe@lists.linux.dev>; Mon, 15 Dec 2025 14:32:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176580917358.483.12346400634520440400.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7c677826c3d4308d7f3d509ebf60eb2a85c105dc048fd2048fed792c6b99c8cc
Date: Mon, 15 Dec 2025 14:32:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765809173
