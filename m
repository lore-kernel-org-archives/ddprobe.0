Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20A753FE55
	for <ddprobe@lists.linux.dev>; Sat,  4 May 2024 16:52:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714841543; cv=none; b=d5ab63OI9g9f4FITHzb5rnSyvTa4djOjVsNeLGvWPSk9gfdiuf9ELCikhG4WTT1maxLubsyt2D5zTimUWZAd7DvI+qJ7x2YNw/Lapdf8J3UhLeRqmESOUC5PY+wRUcOGZ228vo4R+3djmC2ZKFriWh11LX5U0pYgly67UCPGOqc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714841543; c=relaxed/simple;
	bh=idzJmqGz4hYRfYQxDBzmQz0HcGS4rYSx4CciAAiWT7o=;
	h=To:Subject:From:Message-Id:Date; b=JV0QK3VSkUG2PQKgxztHuYP4KGSXn7/lYSyitVuRKCSSmtPhCBEMye+FbIYu+Whv7KibWevDv3J2YrZb6c2DfjIuw039YYCDm7LRA/uW+zHEBsPX+vN98Tdz591KaYCkQ4K9kpYYaCeZzxZ8zlXkr0nrwm0bnEJFaNKXWaSYJmE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=K6PK6dYz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="K6PK6dYz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DBEB7C072AA
	for <ddprobe@lists.linux.dev>; Sat,  4 May 2024 16:52:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714841542;
	bh=idzJmqGz4hYRfYQxDBzmQz0HcGS4rYSx4CciAAiWT7o=;
	h=To:Subject:From:Date:From;
	b=K6PK6dYz03G/nMhwd3uWfarr5+niYzUr3371alfabIXRqk682VtGAnSxr8TR2OzKG
	 jM3H5wtKT1Q1ucaBSNRGYfqzdlCSBB3h1kb+kQDq5Rv2+CRq5TiAeYcEVH9T2F2/xM
	 Y1pEWRDMH6okNuE8DNvOCj8SvkT6Ty2CRt1igkny6u9t7awas43bw9JMmWRmFstxsE
	 5l2Sq+o9WDEY3WtN2JJCfBv6StnYUPrpCvv2fdEer2uz93QNTH1ntwdqxx2ztgJBnb
	 3bhIsPr1DeFatBXXUsl0yY6pB6TOrnpuAdn3kYZv71Nh5d08jtUtmz5VLptxBuxv5U
	 MUD7Bi/AeSWuA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C4882C10F1A
	for <ddprobe@lists.linux.dev>; Sat,  4 May 2024 16:52:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171484154276.22789.12327628710812214505.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 60b3ffcb8769803e01740abb283d5d8aa176c0c6ffd1c464ae2c235aa904a0d3
Date: Sat, 04 May 2024 16:52:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714841542
