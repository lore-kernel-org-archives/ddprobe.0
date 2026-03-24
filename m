Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 12BF5396566
	for <ddprobe@lists.linux.dev>; Tue, 24 Mar 2026 18:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774376694; cv=none; b=sJgdEimncWIOijs8HGS41jtcCxzoyu11W8dVLa79IpJQC3s6+WH4OaWr5uKTMlVdI5SPVpvBTOmYxErDk0inE1mT450ILu7Ei0KeohnwhUWld0GrWa9KAad12zlW86wbBvkzsGEf3xUyJiszV/hEleAslNQWTJC3cnHc93KuvNc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774376694; c=relaxed/simple;
	bh=42I/5z0i+6jeT2+Y65t+NHVvFxttBwsLxXVFJevxp4Y=;
	h=To:Subject:From:Message-Id:Date; b=oArQY5yIX94xfFHg8j09d9JP3xdzfjrA9WNOSMELOoqur54u8p54bI+Zd90gXKgg8obwRS45WSUBkdSJdq0eRhzwq/FMHvoprH4x75VCPGRuev4doWhZyCT5En/xiS+SrGatOuDxn9o3KlfQA3TfvmJ6W51wC0ae5q3ng6gktCw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=E2+6r8pw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="E2+6r8pw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7572C19424
	for <ddprobe@lists.linux.dev>; Tue, 24 Mar 2026 18:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774376693;
	bh=42I/5z0i+6jeT2+Y65t+NHVvFxttBwsLxXVFJevxp4Y=;
	h=To:Subject:From:Date:From;
	b=E2+6r8pwNK5I2/NchLEHNEdCs9OcUfKCmKOQHy2Gz6Lxx2o+AWovQZcHuIBgpghZx
	 y0i7m1xlbjRKOK292f/FSkdpotN+hAhKODedLUoSqp3G2WnfLQeMt6NcuP/BnILd88
	 SFpWHntjQoUqmLe6Idul0BuOn4H78Eudn1fH3WzG79WCu39eSw7NH1DmuNCAOODQvi
	 J4PoaXvGd2iHsc/BRjh/BsAbfmHZHX4xRQNqs3Y346U+gdXbN1H+Mb74FJeupz1W4x
	 eaylXqCY3x4rH2TB/4WUz4fPDRI5JEJUsmUBQAWpvKnWHJ7PHiKhusxL9sNPraWXqn
	 1Xb0xw5pq1ifg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 942ECFEC0F1
	for <ddprobe@lists.linux.dev>; Tue, 24 Mar 2026 18:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177437669358.9959.13261302139287826724.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 85f9f7ccff6d1f66b406f63cceb22debc9388e11b7eda846ded3c3d28cd639fd
Date: Tue, 24 Mar 2026 18:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774376693
