Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A1563368B2
	for <ddprobe@lists.linux.dev>; Sat,  7 Mar 2026 23:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772925894; cv=none; b=CBMyCCB0gHa+9BKS1dTJVR1Mb9/5MNVzOZe8m2M5UJrNDeN9pe6LQwZEurRUyttQMGPI0NMvPcueQkgtyNHQahvWDxKafHq2jdwiuL/Wh11B8ZOAtprS2RPg0Sl2dLbvHmwiqhc8AGSmaUg4Yrm1INamSQCYVhfEmoKZfJUxteY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772925894; c=relaxed/simple;
	bh=l9z+79PK5Z2wvc1mOfzX1AgCyXRPwAX74VKU62oj2pk=;
	h=To:Subject:From:Message-Id:Date; b=jutOHp/a4K50uFUzub2z/vGZZSR8tSh4sVrpLv1oXzTUnGtNoYQvzzc09slkXt0Gc7rOg9C9+MbqhGxhX4BPZauXZG1EumyCN3YdOZp1swEmgwhIk75qNL6vYtzRnIgKtt4YyXZd0mprt/8kgoqxR3Iyl9YxIlnLhf+wIB+sepQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=l1TqkKal; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="l1TqkKal"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5836C19422
	for <ddprobe@lists.linux.dev>; Sat,  7 Mar 2026 23:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772925893;
	bh=l9z+79PK5Z2wvc1mOfzX1AgCyXRPwAX74VKU62oj2pk=;
	h=To:Subject:From:Date:From;
	b=l1TqkKalNEGsoFNDxVbP/ntKD7H8k47PLICzNMwgLLh9MdMz+KKtsNP+j1iMCwFZ5
	 hqUy7x5yDq69Y0uJFncxZuw7L5Hjf3WviVdef8DHZ4ZIMObmS/LFduusa8AseQGb4e
	 gIAhbMxwbIeBGZcxDPHiLOW6vzSgz2xyFTlZ7zLkIyjgO4gdnCtkKwprqOPm+KNev3
	 MlW+mJywmlAej9zRB0/1qCLtmnqp4TPucyLumt4Xq2kUf1QXGQmtbL0a3ypHcd9xIc
	 qoVcF3gzJBXtpiB0i9CL82Fts1f1rdlByKl7/KEcDI4eQyUTuiGSECenzhXXlXQPEc
	 09RVhxXVWgCeA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91A53F55123
	for <ddprobe@lists.linux.dev>; Sat,  7 Mar 2026 23:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177292589357.16048.12356920686188779797.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: db0112250a9240dde2c56b0fd05d84057a800bce62285a4f85c908352b8ce1fc
Date: Sat, 07 Mar 2026 23:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772925893
