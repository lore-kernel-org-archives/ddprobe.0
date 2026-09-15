Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BA2AB43F8D7
	for <ddprobe@lists.linux.dev>; Tue, 15 Sep 2026 06:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789452634; cv=none; b=PtcrRzgkV1XQ6nK3f1KBvGaYqOLrBiyGZS3gDmLY0LoBfZuUbyMdjZY6lAMIgdLLcht4ZsXLSjPPHWsKMEutUZC2IPfDddHt5zaHhkxBH8F9aT5VPsaNW+EGfq8a6VJcFGknGP6hnJFExfIRx99VahzezhUQQ/4FY3b8kvmJOIs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789452634; c=relaxed/simple;
	bh=ELZNrMkqMRpEvbF6i214zy00jxhChH/i2nO/H/8ivto=;
	h=To:Subject:From:Message-Id:Date; b=d6vxi42pwjvi5PJ0WKc3kR0QO9buRZ7e2qcq/TplSC+0pRB4J6QSBrrDZliJTKrB/CxRrTv6BppTowcPyYyv6uf0fWvhSlaxxlOACCxch1IRIOQGeGQgG65u2B2QII/XG2SKeRMyddbAtLK0oNH84ruWxF2uOoQMmX9ebkTJjmU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dVaC/qhN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dVaC/qhN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CAB44C2BCF6
	for <ddprobe@lists.linux.dev>; Tue, 15 Sep 2026 06:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789452633;
	bh=ELZNrMkqMRpEvbF6i214zy00jxhChH/i2nO/H/8ivto=;
	h=To:Subject:From:Date:From;
	b=dVaC/qhNaexu8yFbCzqUSUO2+KHEYqI71yjlugjQNREyXYlH0859icVkHdPy9pn4y
	 1RwGxbfhIwM9rw8g3V7BRYqsJhFwtHdW20nFDfYjGURnkgILc/FxCSw2IT2U8kgfc2
	 5PaI7iCqcam8WT+kzyQNvmyh/DubhCd3gjRmLQOpKXh9AvDglRvDY2/8z41jPgjYk9
	 A9nrb4YUZz2iou2jS7P2ycBb4CIkOxzuqFJADKWJIpKP72cZguG93jA/+lPE0774zz
	 cKcwltyAtwryG6y6r3ujtV6pk3gBgsAsunmycUuew0LOCVPEneK5Noxp8Go0XWMIMG
	 mtNd+isqNZHUQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9C15C88E75
	for <ddprobe@lists.linux.dev>; Tue, 15 Sep 2026 06:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178945263368.28342.13322940978158076296.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c0275f41c400e9fca6734d88f9e20ba6270ed83001cac69139934be6823b99a1
Date: Tue, 15 Sep 2026 06:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789452633
