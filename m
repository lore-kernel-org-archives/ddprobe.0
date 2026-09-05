Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9B20B49C4D4
	for <ddprobe@lists.linux.dev>; Sat,  5 Sep 2026 18:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788634234; cv=none; b=dZZeoFYZzgYOo7sfE+ZhNHRzwW6E9aXu5vEp6rqx/yDLvIy5yPlcIjX6hYZFm+2nsvsqLgt2IGneUwl5OWm6cOjWiFBVUvSKL1PNwoglN+4o38LDfrgbjGdturydJkVmqflg93SKEebRs5hk2tVVgzIT/rEOTkFnSqpl0NVrY4U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788634234; c=relaxed/simple;
	bh=hKhMfsNy84d8M9yzOXf4sf1Bj3Ln6nkb+0WgsA+PGxs=;
	h=To:Subject:From:Message-Id:Date; b=ckyNkZrWCgIaYDn7kM/zvtjBga6x9Wmrj6RMIu7iWkSygMF11MS99b8EBI2CxhNaOij+GHAikcloyU09d2vDsZ6NdNwr4PvbNWJuk0Z934++PNXORDK2LiPSRYKXjpE9VrI+LeDYGZ6OpSBHis201S+eXGoTMd58P8DPlZOl2kY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=knHU5RpJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="knHU5RpJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E14C7C2BCF4
	for <ddprobe@lists.linux.dev>; Sat,  5 Sep 2026 18:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788634233;
	bh=hKhMfsNy84d8M9yzOXf4sf1Bj3Ln6nkb+0WgsA+PGxs=;
	h=To:Subject:From:Date:From;
	b=knHU5RpJLu4nJNbPWFLVJO5YSVK5M687hLiSiCB0nD1NwCCM6PPwkX+U18T7Aq+Ku
	 syqHk7mKvNY1TeLg9pUVVTP5JpcLyRnyrB4sdc3pVBzeaZUcpOuSFn0J9FHrC13/O5
	 U8Fa8i98k5mqLy0mVGxJXzcNEKFb/dAQJFEdh3KndrTqfbEWSUod1bpJbcm9hk2d2T
	 HN0EAoeiMvBgYzT1pSH8+LjzyQt7GXZPTH0WrAnkFpxxcPOBose10MI1adrthy4MME
	 +90S1E+vZusgfJZQiUIBzvctfIrxNErkLqZA6cJqYVReioo8Nx/i2ZvI0AxBZw3DlP
	 lif+omyBNorXg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BEF39C79F8B
	for <ddprobe@lists.linux.dev>; Sat,  5 Sep 2026 18:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178863423369.32312.11699577643820163956.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ceea610454b83af726158b881cb25ea446483e967ea7ab27ee7a134f4abdbf72
Date: Sat, 05 Sep 2026 18:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788634233
