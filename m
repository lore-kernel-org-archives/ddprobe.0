Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 63A3C1AEFF9
	for <ddprobe@lists.linux.dev>; Thu,  4 Jul 2024 14:25:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720103123; cv=none; b=Nj6jh6Hr/IzxAkbbnrWOsZ7XcsueyCKgJ87vZbupWAWmexiQUOEgaYSYvTtABpTynTz9ilBTJ0J9bKbkxIA2snGEgdIvewgmkj2LNN/69ICHJC3dGqV6GGqItjz9kl1lejUBXGGkTyPE/Fc25mBT0N5Bnqy1s5YtVwVVuRgtKtQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720103123; c=relaxed/simple;
	bh=BCaK3/wBMnAe01CNIs8ifdpRygA4DuC1Wu52uHSpEos=;
	h=To:Subject:From:Message-Id:Date; b=lm8VZ7fJf+IRvoU5yOBl7AXqkUIreJmYijbcnxa+oGLXb2rS0nlWBnDbi4oZ/UIrfvKfzj9LKZdkSMDjUluwC0EejDOYU+XoSep0PGL4kJCLwMBBJdh0ebRSMUaPR0Z2Bzq0p6bvobEiGKnFrQn3mx0jLDt7yLkgJeymv2nbQYo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tYZt2hQY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tYZt2hQY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0A57C3277B
	for <ddprobe@lists.linux.dev>; Thu,  4 Jul 2024 14:25:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720103122;
	bh=BCaK3/wBMnAe01CNIs8ifdpRygA4DuC1Wu52uHSpEos=;
	h=To:Subject:From:Date:From;
	b=tYZt2hQYwHq8ay+qSoNI2imzk6LQxNKX2u+dguT7PM9OHdZk0bdaskGB08PPHP3eh
	 NK9sQWCrp28mt5XCijM+pRUVL2zmRt3g3PchxM8O/0DQ9vfVUHG0VT74nxLqU4eJAB
	 +EhC1A+0j2ugdz8Iz7V9HvrwMDJWmLpYQ5pmqp9gh38pWvl7wrHcinGSxfdGGZUs/x
	 XWdBpk8TZfXD5CT5m1PkXhu8qTXkdG0D/oDg4LBSHdXupLkGaf8bQJiXvVhNra79Zf
	 m/Nbl/R+Cn+NukaN0WYFfOJmMli/M/7BjHmhgggZlUNr+zToFPPkRAckuK7UrhtyYv
	 7gCPDJcUdsyLQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0420C30653
	for <ddprobe@lists.linux.dev>; Thu,  4 Jul 2024 14:25:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172010312277.2135.13823398541932434808.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 18d8059848217b5f5a87eeb6ef42721066233dba7254db3ca42ffc53078b1867
Date: Thu, 04 Jul 2024 14:25:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720103122
