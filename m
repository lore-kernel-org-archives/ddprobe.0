Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 60E892F37
	for <ddprobe@lists.linux.dev>; Sat, 13 Jul 2024 06:40:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720852823; cv=none; b=UzVsO4h0WEL6ZkXa5MQPf86qh/+EqPHTQcRgTV7fm5OWUp89uMfBAe2GTv1fPP3PA1hAqvTjRILfskJ9CpXyVK3WTIf+3CXsaAtTXvflKRmivyOIygEu5ExBNQW5uU0PukJl7w6P4Ujnq7sjhMPqo3Y5NcUSVH7jMHcr7tpQAd8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720852823; c=relaxed/simple;
	bh=4W16zfdOMDLv08j0enGEvOVcEPBPfX6d51Z5WponrtI=;
	h=To:Subject:From:Message-Id:Date; b=F1+9lcwJ7GPerPqTuXdRKV37iPtTWCeSNHo1KTEJns8nI57+qOF9WZJUXBvujEnlCpEtZwA8KS2ZcxSDa4bA+1mkrUInrfMVyG8uOqL3klvx/krnWNG0EXlEjVibfgkcBHPff0q6dpWvbCMe97dnWs26T9fLeZJ/kfUU8ZaoZKM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bN0Hzgit; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bN0Hzgit"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E7B86C32781
	for <ddprobe@lists.linux.dev>; Sat, 13 Jul 2024 06:40:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720852822;
	bh=4W16zfdOMDLv08j0enGEvOVcEPBPfX6d51Z5WponrtI=;
	h=To:Subject:From:Date:From;
	b=bN0Hzgitoo1Jrr+Yd8TDC9B8adQQdmcDp6WEqz3GL0ShpxeksOfI5u0vzGtiUoRK4
	 dXwgg74RUKg8UL2flxAvG6JhSII9dRYY2VbnHNycobtBRLobnltQSv0Ij/6T5CjBaU
	 +ydA+7efr1XmVrZgO42yg/ddssevC2h7OdHoq4wkbiE+G7r+sHuD4v5oqaYUGWywJt
	 PFGi+nvdvBenjacX1ncIySlRRoTRShcVYPGONKrF5mReK663lIJBrK2wiz+dkg+Z5e
	 9WXqTc+pscwvsMCL8zIzDbhbk0gVB0x8ZZ+jIRf3/v/09xZPxbOpIhoS/MsE5mft4b
	 I6WD6TV646kjQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CE474C3DA45
	for <ddprobe@lists.linux.dev>; Sat, 13 Jul 2024 06:40:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172085282279.19132.9972244394673804534.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b9d09567175a18a58ad05410b2899b41fff1c0a5dfe2d0c3603e3bf690cade37
Date: Sat, 13 Jul 2024 06:40:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720852822
