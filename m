Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 65A17471418
	for <ddprobe@lists.linux.dev>; Wed, 19 Aug 2026 11:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787140234; cv=none; b=IMp8Rk/iA0vTE7wacsPlTbPqPy+iHYYoPamHRVYWty7oTgyZUV+k3Y/5dSROnf73s8XM3ESfZduHy27hnEAGuYaBVNawT5y2aaNafQNc0ArwlCfXWL2zV+QckP/RW0J2MHB5i2bRstEMzEYkYNfvJ82LcQIEiBtGWD7Z5i/2UUo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787140234; c=relaxed/simple;
	bh=xiZfEeo5ppb+KvxLvTIUkUV9LzWkauqBhSYVjFXg/hc=;
	h=To:Subject:From:Message-Id:Date; b=Q7HaHRpGp57L1XAvOO8TmV1liVqPWu2y735rlGycCZfePUJKlHp44PWhqSljMRT2UaGkEkL7dRm4sfkloz8f0nU5txAPycQHPruS5o/JI9DcUYNy0Z3oHz9GiOXwUyw70Vnpjj0fqwl4B4DzkYouw1jpHMLEiL+CfgadU/J7rqo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lOihezZr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lOihezZr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D640DC2BCB3
	for <ddprobe@lists.linux.dev>; Wed, 19 Aug 2026 11:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787140233;
	bh=xiZfEeo5ppb+KvxLvTIUkUV9LzWkauqBhSYVjFXg/hc=;
	h=To:Subject:From:Date:From;
	b=lOihezZrrQN7JwxS3vyZFp+5MLhPOLLVIlgYGP+ZzT+SVLoqwA55g0fVR5y++YDX3
	 zd+GVPJL/bPwkmpgQpRCl5sxcQfAyg781rS6K0bzZUhdkHKtRszsTjnS8zZ+gk6RNe
	 R/gQf6B6fCSp8I9Vd/QEbOIGAB98Lq92QbxYvZUz6cSTZ+uAlFnEO0wso9kKRxOcm7
	 0XvF3aDIyiqIdQwZ8pYFihg01qE0l/EXLQ+r+lK1LAwBeDSHp9ofvU+uR/9P1quvDO
	 KgsG9Xfq+fP7+OSUmMXoMHZ7ZYueVcw5S/eaxntMZW3uYlj3ttE6zMKe0aZlJAIwsA
	 +ma/IVID0GpuQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF352C5DF86
	for <ddprobe@lists.linux.dev>; Wed, 19 Aug 2026 11:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178714023370.6060.14264746176332596350.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bc0c4cd608eda94057f919583d95d58d02fcb04a76761a4062d2b82ee15a9f71
Date: Wed, 19 Aug 2026 11:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787140233
