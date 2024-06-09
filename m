Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 842B124B2A
	for <ddprobe@lists.linux.dev>; Sun,  9 Jun 2024 11:57:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717934243; cv=none; b=DCXy4hVlqXdiDA/kvQDLG/dXG4D84MYgc0q4xl1s9LDDOnWOydXqY+Z7e/3r8/FC3tzutxctWGZN65esEQW+7v5F42HMoXIUt0EKcfwLhaJoFQ528GB7E3Kpbe9fJivuKhLEaMxWfRrDjk+Vl111JDzJ1ga3FrCDU6qDQfqdxe0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717934243; c=relaxed/simple;
	bh=rOLcbJItkxe8GPRJXVMnLBsNpzhQ8YLrDh+lzf/s7bM=;
	h=To:Subject:From:Message-Id:Date; b=sBVhpg9oHxsz2Gn5KfPvWkmK3CNgOOoRI2KAAQeVg3i2730cLCGCdZzTJzvCNp89LvDoYla2EFupM+msCdK/IT3iMeg9YjqW5yQxdm5J2yXelJTQpOpItYGVA22tpwh1dKmDDdM9nfV6jV2B3zreOtcLeg0GsbxuvB04hvmbfo4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MsV9jOwT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MsV9jOwT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E1B5FC2BD10
	for <ddprobe@lists.linux.dev>; Sun,  9 Jun 2024 11:57:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717934242;
	bh=rOLcbJItkxe8GPRJXVMnLBsNpzhQ8YLrDh+lzf/s7bM=;
	h=To:Subject:From:Date:From;
	b=MsV9jOwT7pR2GZa/X2FfruSVQhYf+k4CSbxj7+qSImFpKttcXkB+P067ALyK+YWI/
	 JR1+40vE+b6K7w0e9l4x3Ibtds+G/sLWudDlmNbCSO02ejjfHsXVWf3HBJwVmBWxQw
	 68WnE0thdt91VZSDSn5TepVn5E0PjjlKeAXQxYHwaWfzzkzbQijpidF/IW7Yecqua2
	 w+FOdkHPTjX7/yo48+w238dOz+kFLThkypLJGVHTW1VLulbUsTUAr3hs1QFhXQsbFC
	 rwlvm0a2m4atc0zZJ7P/svXbL2n77xtLR6qkD7EbnLs85cxHZbO/IHpF3BqB7sAl6Q
	 z8zEt1P0PE2zQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CD4F9C27C53
	for <ddprobe@lists.linux.dev>; Sun,  9 Jun 2024 11:57:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171793424282.31889.2705046048133766789.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b0612a22af4b97e860579ea38f72745f86acd4e4f2fb00584c9fe4644b8710a3
Date: Sun, 09 Jun 2024 11:57:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717934242
