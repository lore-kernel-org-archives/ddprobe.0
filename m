Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 206E23D544
	for <ddprobe@lists.linux.dev>; Fri, 12 Sep 2025 05:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757653794; cv=none; b=OJo/TURz1SKRFbBxw2HfsTblVIJxR4RBVIWmpeX+UzXGNjxSpwe4oYysKORPn3JQg34LBPL6G/C6Jwr+FrmWu6dCuuGjj+FrJpQl/w4om5Jdxi1U4gZyAVMY05d4Yira51WGUfsNL+Hful6njqDVillEG6tq0x4tpLPPD8dumxA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757653794; c=relaxed/simple;
	bh=BPiS2j37PBWo50QQyem5tKXu0t5vL03rjdtnTPHjENE=;
	h=To:Subject:From:Message-Id:Date; b=cEe2vBTc99pEzkPC5GGSzGW3/HCOBLhJWwR7YKjFNQoA53Z02Rrrqnzs8pGhgFUlizK0J3TG93kExuLNkldbcS/3fIy4Uq5SSB9MpokRqz1thHhsL2l4obOiSof8Ekx3KtXdJEGAYE5s0aXLQr25VsjKQW19k/HkinUZNahCtxk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pdLExyjP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pdLExyjP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2504C4CEF4
	for <ddprobe@lists.linux.dev>; Fri, 12 Sep 2025 05:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757653793;
	bh=BPiS2j37PBWo50QQyem5tKXu0t5vL03rjdtnTPHjENE=;
	h=To:Subject:From:Date:From;
	b=pdLExyjP6fgcN0WVIK5i5Ah21bJw34QPXeekitH8GVVRbWII/8zqUvTmrOj2EGgvp
	 qrK9qOqWD3+2ni1aARWVZSqhmW/SYJLE8h25RU5RgEiZU1zOa3trONH46ziEpye7Qn
	 941ksTdP55wRTl0WktLfwE5SQcIGcdB3KmOcvUkpcvsv77YVXqUjPlNJo10b9I2Wiv
	 W9EtyywngL7AZIy3kXo51GgFgeEThtBIiVzMyRdlnaM/bAmVB6znow2mIovfEFm8Dn
	 rccrldvK5ch18PqNTWHoV1GejcYQko34/eehBq7iMesOPcrg1MEfEfPDSOk7W5vjjl
	 8iGp/4FLtsQzQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9048ACAC582
	for <ddprobe@lists.linux.dev>; Fri, 12 Sep 2025 05:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175765379358.31337.18067486317264535540.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4f1ad90908b4d2ca44564e1abab8046de1bda32f016a864a995a440fe2dfe587
Date: Fri, 12 Sep 2025 05:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757653793
