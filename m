Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D6E318A6B6
	for <ddprobe@lists.linux.dev>; Wed, 18 Sep 2024 22:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726699554; cv=none; b=eVXofn4qtuxN8B66jmTr8dLMlvDguGLNDJ16bkIDDNBwAxbm0EN6YMne7iu2tCs6/olqX8kFKOTLUGTeCziqUhfe7CbGSz6hUj+U/7FKK3SYxwEpIMFge3dwXDbjRDlvpR2+oquEkLE0VkPzSYsQSm25mK4bXeTDygvXXuk1r+k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726699554; c=relaxed/simple;
	bh=Kg18rTleTarvXCom4Q5MhIq17EUyDjIsbbI7f+06CJM=;
	h=To:Subject:From:Message-Id:Date; b=t8ZKPM2JncjEcc3IP/a/saMgR/yB1C8KOd8Hps4QdCykBOKdQ+sKaoFxOILCyx4GkZYsccJRyiKXDVNWzyjBvf2M+WCZxbdNhu2JYMsSG78TI6q+ISvtGW68yS3cz/f11dmAghqyGTrIcgHXl72X92k2UKPp3IBZfGr6JBp5xWM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gr0qIgu7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gr0qIgu7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B529EC4CEC2
	for <ddprobe@lists.linux.dev>; Wed, 18 Sep 2024 22:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726699553;
	bh=Kg18rTleTarvXCom4Q5MhIq17EUyDjIsbbI7f+06CJM=;
	h=To:Subject:From:Date:From;
	b=gr0qIgu7jjGfbkllv/Nb9bNOVh9e44J52KtVcun5OwhmzO19ttdhTEoRl5S1toNRJ
	 r3bL8E3hfiFu6gF1h4+TZcpqTIdaDT2dDNJGGqfwF0jD1ekqensBvQLsgOo79UxqTo
	 j2DSYGG9Iej21ZkNgr/9OGLBWZr403hYJ6GVo4+7wZAlx9rpSr5xTGCxBN7s2ulV1w
	 gDYEXBVZfGXxyPa5KeCN7mIU5lzcll5273w1DcZ1ZaOSkZqAmU7iAyCFO2/fIKmGUr
	 PebFvyQf8ozL7+ayOON2DThyl0PDS8DeH68giTVdAtBdNfz9spaR6RAYywL8zjNdD9
	 oJmGbC2L+GUTQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A257ECDD55D
	for <ddprobe@lists.linux.dev>; Wed, 18 Sep 2024 22:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172669955365.7280.8854995814197828410.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f64aad0ec9f7919f8b5792292a31d2048e072a4512f814da626569927aa04de6
Date: Wed, 18 Sep 2024 22:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726699553
