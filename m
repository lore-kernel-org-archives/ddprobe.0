Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7903B11711
	for <ddprobe@lists.linux.dev>; Tue, 16 Jul 2024 03:55:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721102123; cv=none; b=MF0TsrDfjejoG9RCp3bvspA/GnG3jZaJmuaGI4bknhC/lSUeBB486yfFspu3QtVciq5ZExeIGV4ad1IlbrDSGt1lAdwZ2UNQ0GJ5DIjOsJbwiCqTqLLUYusnmNhQFtp4PCxrC4dkNi/hWLaSTLHbFx/05Yx/jB/zr/EjHvMx4sU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721102123; c=relaxed/simple;
	bh=2NpBYnUbEfaucuO/aIklHSov7LzdeYnKLD9unix3PfU=;
	h=To:Subject:From:Message-Id:Date; b=hZr11GIDR+QaGW//Yc0/H56EJcHxvjeaKc6GTCZTuR+2Zzdr4a72tRRjR+i72h9MyH4h3VLywmLzKnZbieXkNhsK/v8HjkSAqBQvuxdnYf30cqAQtr0j8jWmWjUl3mcJaGIXjnqGk+Cxu7hiVUOwN4WdBfMD+zG7EKoHHtP9rCc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=f43mUCjq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="f43mUCjq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E5D7AC116B1
	for <ddprobe@lists.linux.dev>; Tue, 16 Jul 2024 03:55:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721102122;
	bh=2NpBYnUbEfaucuO/aIklHSov7LzdeYnKLD9unix3PfU=;
	h=To:Subject:From:Date:From;
	b=f43mUCjqvVvpnJ2k8VmL+uBDZbjwm9C7cyn6LnPWbND0npydwrEJD2ox8bDWxStYK
	 gRzqE55ZQBy8ASCPUXqX/Ndjz2x5Zy+70eHsj/GTpVy1ccnISmHg3w1SPgJ9JcXuEv
	 aoRsKXhkHAYQ584gGf7uUSd69p0daPvDjLFi0fqL7tq0+Ni3c+IP0gp7zgN309C4J8
	 abqwyDNM78xV2tYQSN42kUD2pUftUcMT3G+Of/+MnqmNUYmn/M70LAI+hthTJjYzTO
	 leVvNo8u9XGUIy3pVkxwTJ6YKR6BA9c63thJtCiDjsruYeThGjkr2b7+VF+yn01HB7
	 yFJre2n6Ug1vQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CA0EFC3DA49
	for <ddprobe@lists.linux.dev>; Tue, 16 Jul 2024 03:55:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172110212278.28935.584049384865277491.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ebad4da9542f19c8ededd5a25261c9e29be8c6b1c702b741f592300a685bea62
Date: Tue, 16 Jul 2024 03:55:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721102122
