Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 271F5143895
	for <ddprobe@lists.linux.dev>; Fri, 20 Dec 2024 07:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734678354; cv=none; b=mXC3ZZfq4c6MbRYoPJxvTT6HuWRR1U3zA+q0ybqFUOaqrjbe6nPwpVKjIwOsr3tUywkgg+a4fdzdwVFLTHn4R8L9C0R2Tstz6xp8Vma8gvxh3qqjfRYSAr7tY+k962qwcNano3NH+nd0VKJT4DlQu3Ye75BgWb1H9m2+6GvalNA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734678354; c=relaxed/simple;
	bh=JCybo9nZSv9P+qQKaSL/+9uKAzglewE0Nn7xtwYJEaA=;
	h=To:Subject:From:Message-Id:Date; b=i91X52EzFZ6ch5F5uQv5LGx5BtpMmgVn9ve+hHInd898f/ZYZFnRaVr14f5b/XnZJM9HlQX8B6eS+gtu3ZIlE3+6e1BmK1XoblsOE6lq2gZSiTkgl6nk1PXxUBCSKfRsooSq1UdiO7pmUNvqP5VPWuKs1j6jrLCjDvLWRkENRJg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BVNC7P/r; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BVNC7P/r"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B019AC4CECD
	for <ddprobe@lists.linux.dev>; Fri, 20 Dec 2024 07:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734678353;
	bh=JCybo9nZSv9P+qQKaSL/+9uKAzglewE0Nn7xtwYJEaA=;
	h=To:Subject:From:Date:From;
	b=BVNC7P/rZ+nuF/0ZWMa/a/bbuYjW9DIf0QjAj2nRwesf3pWmXTcpN7GCRkRHI2SPr
	 Qu/BNXSHZExZ2k4AHDK1C6m/wntFX1sk94O+t9+8ECSpTW2dlcjsCgn4EtzRJaMe/j
	 4sz5XSvfjKOPOov1d2ehOKoMZKEghscFXrqqq/45jd7hMV4HTxHGNt3q4H0P4QeJbA
	 wimDS49TU3TdJbs7gSGHY7DrjZLFHkkmAbUZEZTkuDt00Xv/l6MGuc/aiZW/dSHebr
	 kcLeI2akdc+LEilaHqb9WiG0joPpkqlQuKMPlPGJ/lKVbf7gabDO9fR8CaQDsyMESk
	 FTLsdYmyOnjNg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9785AE77188
	for <ddprobe@lists.linux.dev>; Fri, 20 Dec 2024 07:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173467835360.5931.8822992066697669861.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 58cd4ba2d5d8b97dd4c22db5fc9401afb72bb0fa217f0f0f2da2c5b6bed6c957
Date: Fri, 20 Dec 2024 07:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734678353
