Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13631273FA
	for <ddprobe@lists.linux.dev>; Sun, 21 Jan 2024 12:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705840697; cv=none; b=hddKfmM83m5kL8E4sB42axbTqIESqsqcCwja2x5x1vFZB05mQSagdJMnXS79k6RK9iiAYV4A7uP6s05ORTO52m52VLveB+3Q1h0q1KWbbaOiKa7fTvUDt6yTcz7E4+RUP2pzT2zfFa/W61hgH914iM0QYtfz7VJlPcjlrxtF7cg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705840697; c=relaxed/simple;
	bh=HoOGDA5Yvp/lECMQFhhgXiJL/wzdVWFU7pvdproUHFQ=;
	h=To:Subject:From:Message-Id:Date; b=u6mO6m9xvm3hYWjwahnikN8XIxxqFFyN38m1ZCKzX5BIZr5e3tWXVFdtjDQEKyvgf8gD89pyn24TSc/mBZCmvFXFhFqkZ9QlxL5OnzzhveBpuP9C47TTQGTYrzmRLS7Fhf1/XQFdAf/7wOJT0DIaeBZ0Kf3pYEY/ZKBo98t3wIY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GRFuSvlS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GRFuSvlS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7A064C433C7
	for <ddprobe@lists.linux.dev>; Sun, 21 Jan 2024 12:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705840696;
	bh=HoOGDA5Yvp/lECMQFhhgXiJL/wzdVWFU7pvdproUHFQ=;
	h=To:Subject:From:Date:From;
	b=GRFuSvlS5HZHjAwRC7TDLs8dq61puTve9avN258ATngXMGl3Dh/WA0cN8drWG0NS2
	 +3aI7dLJ8XH6kqGWkfpQQH3TZkRKaSxwceaKndR4W2EsGaEy1bkBgxpgA4k7olNfSu
	 RaC49t4o8xla/C8Xx1GTF0v87NPHjm6b4U17LK181FrSok4Jxgu7WGcUajptLISF8e
	 YTtIokUe/lnhOSEt4VsjeVZs9yzoxSj+uvGwVjcoT1E943lSf07MFQ8T0V4su/uX++
	 Cb1nRLOEf5pmG6I8vOnp6W7oBVW3saXLnxnFlBBMOZFg0hoHTl0fArnaCYjfNx9zqm
	 dD8RgBOrZ5ykw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 613F5C47422
	for <ddprobe@lists.linux.dev>; Sun, 21 Jan 2024 12:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170584069637.13463.12082044174224510243.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 85fa6c1e4897e10e2591e9379bd3105b2936c32d6c7ea1bb72694c845d742b89
Date: Sun, 21 Jan 2024 12:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1705840696
