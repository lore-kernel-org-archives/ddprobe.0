Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6B326EEDD
	for <ddprobe@lists.linux.dev>; Fri,  3 May 2024 05:02:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714712543; cv=none; b=ZoeVAlhPOL3UgIvL5R1HuU0+5Yqze4vUFaXq+JcQA/KvEouIhluoY6BD2gCwdLuBBMqdgAK3rqjQoGhev6c0SkxU6DSVrq37B+dhI/AcO4Xz88SKPm+xyUP9KTYydNESYhLz34beJr6FnPsIf9wL3wHXlJ0S165OGnBVkJhLWx0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714712543; c=relaxed/simple;
	bh=03ddnikwzvDKXFF/zhK+y7nzDHRdzouphZ8HLMZnGt4=;
	h=To:Subject:From:Message-Id:Date; b=qNYqJas4GDj956+bIeha+CQuw8xn0Aw0N+2/2GwleIGgYp4FwYMjIetZxvRSzrab2hMIXa1GpjvLdWXjWzwOZSDZuf3V/dzGMwa4mWkMtdGCrhqDcUkP1o/Ngp7dgU6fvGGzJ+TYRt07ernN+G8WnutNRZgORax1N3RiVc4cXMY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EaP4uxQ8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EaP4uxQ8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E4611C116B1
	for <ddprobe@lists.linux.dev>; Fri,  3 May 2024 05:02:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714712542;
	bh=03ddnikwzvDKXFF/zhK+y7nzDHRdzouphZ8HLMZnGt4=;
	h=To:Subject:From:Date:From;
	b=EaP4uxQ8CygQQmMwrUpMn2qxgS3OwEBvzQULO/ZMdA5YRBG2AC7lLuhanFi0D4/pw
	 Cxtx/dSGV4aTK9TMIQF41j/026/qjlIjq88wo8yv8HIePtnzCp+ENxBTZq/0/MbLkc
	 4Ux2ZVjDSxd060w1LzV9/99ARGh28bonD4KJ8Fjck2fvK724BY/PKP1rCA0pKAmoZ0
	 t2AmkWs4EeYI2SUmTGVD4lQTF6JSNA1haIqLxIhbObemu0V2TEuZuGUUNHYl5Tk9wi
	 EU6eigd4bPSlTDdF2XxK/6gmDc10WwN6bJ/z2Z1VXzhbO2m5rDGAmL9H1ou5xOJsXT
	 ofTuILgVMRRgA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CF91BC10F16
	for <ddprobe@lists.linux.dev>; Fri,  3 May 2024 05:02:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171471254278.17424.1042148274229596318.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 69ab94ef32c10c7de82593c0c2c6e293427358b8901a43b72c1037da59ec18e5
Date: Fri, 03 May 2024 05:02:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714712542
