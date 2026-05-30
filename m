Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B4883769E4
	for <ddprobe@lists.linux.dev>; Sat, 30 May 2026 22:14:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780179274; cv=none; b=vCtSWIhiSqjuPBOFd9ZaBC0Cbm1fiDsf38/J+hdKtPCypZYHc74Tc3UGDHSm8YC+eaZJWZpxxlAHHmIuihe8BBQ15qHHpKmaTaG7A/r/CAWVCc+H4W1QzJIc0VTPFQ2FyfUh5/KBZcqMgO1jKoLkH0Ziyr8ez73JrmfuWM/kY1U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780179274; c=relaxed/simple;
	bh=uT4Iylo/p+lEaO72htmA8+A5VIefz8E423afHu7YiQw=;
	h=To:Subject:From:Message-Id:Date; b=hXKluCY1py3qQPxrr7Pjbw93a2lkZBJL+dwJDwr/jIR7xQI+QyGRVcVO9QGwuTdzCwJvwbQKkLnZjqWLYqpcCOwk6QbSytf8E160bS5jTYoEKiXOYcx+4SRKw1KOMqyKbx6itoa9fQmfjYTRctjGMrqNSNYBMB8CdFDGfT6mfRQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GJPfKJXN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GJPfKJXN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA89BC19425
	for <ddprobe@lists.linux.dev>; Sat, 30 May 2026 22:14:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780179273;
	bh=uT4Iylo/p+lEaO72htmA8+A5VIefz8E423afHu7YiQw=;
	h=To:Subject:From:Date:From;
	b=GJPfKJXNBKGQxX+DebphRPTlJ2zHaAe8SvoRoML2biddBG5Sk2lDxlfNaDV8nT0r5
	 wwAHrzdKTdscEf5lkNv/al81tVm8cwWu9DJyQbBrkbsvnri2Dy9KObMB9vyZbZkg7d
	 yBT9YnNSVjpcYqahKFnlAe+f2Mvl5l8hE41ZLH758w4IkObskIL5pWai0qYPOd8bsP
	 2IslPQaINXqOsu2Nc2ERT3p3ySRWWgEwvLbpZ6/gaHUueMdSllVMuBP4skMTJbxOUU
	 39MY8lYi654esxrWGXC6YDkPk6184Bvs6JKwggG6uEoL5HIVZVe1IDdxXZHP+J50ky
	 d1CuaV52C3IVA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B10C1CD5BD0
	for <ddprobe@lists.linux.dev>; Sat, 30 May 2026 22:14:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178017927369.14444.8410351219698066178.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 14c000065e1e2552724208be3225340509fe2ee6a544d83184ed57e7270e39d4
Date: Sat, 30 May 2026 22:14:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780179273
