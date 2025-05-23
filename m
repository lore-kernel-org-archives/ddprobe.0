Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3076A204F8C
	for <ddprobe@lists.linux.dev>; Fri, 23 May 2025 21:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748035795; cv=none; b=h8GOdRMhLm0osmnVTDgrbPOAd52WmnqYVqnHoiqRctozK9Z3JDq6We3duDqGsC1BMsdaHyWN7ROruKdxgeqiU6V/C5spgFUpF2UMCF6gDugt58BEo4ey1hR2HKQ6GAcPQuWfS06ra4TWwxvkyzvKx/yAgrJ8BF1Su6BbtmL+ol8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748035795; c=relaxed/simple;
	bh=Xc/09lCDFeUr3wMFMwvoFhPmflDNBaYWXj08WcYaw18=;
	h=To:Subject:From:Message-Id:Date; b=D5aHffVB9n0yY1Ubkxlll840cmi4n4QQlDfbH4uqjpZf5pshTxh4C5hih5Za00n5JRjpLbvv9QmrJ256cIVU9KRQ4x/s06cT3pS6HmfmFcwdq2v6DVOF+aecJE7UVypVvIkmvnXTNL3cvqIbnYNx6tor15fCRPzKhVEfFW6GeZs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PcvWJzsu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PcvWJzsu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F948C4CEE9
	for <ddprobe@lists.linux.dev>; Fri, 23 May 2025 21:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748035793;
	bh=Xc/09lCDFeUr3wMFMwvoFhPmflDNBaYWXj08WcYaw18=;
	h=To:Subject:From:Date:From;
	b=PcvWJzsupAIlw6pr0nZvBP84gY3viYOwSWeGQw1QqUlOkAhKKDcURdGAj89Yy5qWB
	 0ptwcSFh+V8N+mvlusHCzbUMAxTrh5T+T/eIPKC5bptlkap6hX4gvVhWhLWsKTWkYJ
	 TXaiiJ86SJglW7B7oOi4jOh1Ltrad1HfX1TQhaalagNrzggzqkd3asJ3VAPEA/XxUQ
	 spavf37kU5nwU7obteYzNviRAOhdmzlwLMdytB6LzwOQ44Cw6RH9J4diWxDO39lHLk
	 W++oZ6oxZtDuZewOm3RdEK//L+ix1vU0aaWeGQ6JVtsdbVC9AaDkgiQ6i2Oa6Jn0pD
	 igIpGVGWN+fbQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F7E7C54ED1
	for <ddprobe@lists.linux.dev>; Fri, 23 May 2025 21:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174803579357.2940.6353029488554132332.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8dbda805305d655e1b0cfc6e9e20f33f13294e89d312b96952040f3e98c1ae5a
Date: Fri, 23 May 2025 21:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748035793
