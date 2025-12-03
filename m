Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 445B21A9F88
	for <ddprobe@lists.linux.dev>; Wed,  3 Dec 2025 03:02:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764730974; cv=none; b=eVyP3wqDgOVnTTjKA6JR3f3pvCLC3oc7NFBLcuMaNHalqZBCXq/v1IPrqe0LxygLDkkhCrSyXAENxUfgOEmF/A1/1UKloBa01WLwoT+YKkKi8pFgJbuWwWrIbJVL8D6vxWYsKp/RmSJEdOhmaCp+0pjCDscF3V9spCD0iYWQ/u8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764730974; c=relaxed/simple;
	bh=o8z8TK/gXtlzTan+MxPnu+E3oUWZA2QQeSmwnOVA6/E=;
	h=To:Subject:From:Message-Id:Date; b=l5gmpviJJqPdFYt6KMPqiHHLLHgPz12E2KMZ6t59mhWU5LGOUWNhEyyFP9RkewDZI/t5C1r6852sPiPzmlsHmL3qmkMy/FpJKvdRv2U5SFnFAIj5fYEDnElg1Lzh/9yvtFbA7d9zp3WHbPjCozTl1NiCRQVjj8qD/eW9bkzO9L4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ccjGrgBI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ccjGrgBI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7843C4CEF1
	for <ddprobe@lists.linux.dev>; Wed,  3 Dec 2025 03:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764730973;
	bh=o8z8TK/gXtlzTan+MxPnu+E3oUWZA2QQeSmwnOVA6/E=;
	h=To:Subject:From:Date:From;
	b=ccjGrgBIMklKw+JIXQjxZSoJQLR0La9af633DKQULRghImqx92lO2OOYD9dE7eKt+
	 T1BIW8mzNxmjKJ39pjLRGpnsiTxLxH3V99GRABpgFoMD7H1KYZhnbbPFSUm0XbkWc4
	 PJSRDq5u7DWv3C//ApRV+YxvaL42otFutScSYFg1tT7PT1rml3v3tstXa8KoogeM5w
	 PlmYgIo14Jc8kgu9N9c5G3xHU2B4isar/0s1KElSmAAVG6qBaso+/lsyR8TLdx2W8L
	 9PAx8Oo5Dt2wyub5zvaaR/ICVu/vQBk0peZNzJUz30Q83x9STHkHFVzCwrNSWiQ8sl
	 XYIfuX6RZmyIw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A1C1CD1266D
	for <ddprobe@lists.linux.dev>; Wed,  3 Dec 2025 03:02:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176473097363.9055.12770352205022979380.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 920e7eaaccb1e32c786fdde7f5f38fc67c738b92e0269d10e90c6f33b7e63c35
Date: Wed, 03 Dec 2025 03:02:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764730973
