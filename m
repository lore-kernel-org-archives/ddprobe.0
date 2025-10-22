Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A8E03126DF
	for <ddprobe@lists.linux.dev>; Wed, 22 Oct 2025 10:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761127794; cv=none; b=K9YtK3dKuj5hOy4vH26MK22nkkvdY9DwbHlc995ErkAD780omi0fEJLOboJoPRtRg/RT0cWQMvt9t1R/U5yUk891EN5v+e57WsjYk09cJqleFytFuBZqP8F8vqbjLoY+1Y3B3TNkcXg8vCDO8ipty7gMsDuazhdeanUVwBSFZJQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761127794; c=relaxed/simple;
	bh=MYHoLzwIt3n5kVppP1Klvn6H+D7nyZmAq/wp6M+Oj38=;
	h=To:Subject:From:Message-Id:Date; b=gLjyafUyvl8C0duxqXsJQnF4JOsp6XzypMRwxT/T3+0jd0mpPtVe92mofVb6fHbBCOJMTezrNbuiEo9gZp5HhqoyBe8oYr8rNTInsVPOIZasSxl6Z/WEA61mkVWUQi4e2tTJ/JEDcsFFn88PVQf+x+BPX+8eKsCsAeFfKFpvOfk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vDIHtHvW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vDIHtHvW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2FD1C4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 22 Oct 2025 10:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761127793;
	bh=MYHoLzwIt3n5kVppP1Klvn6H+D7nyZmAq/wp6M+Oj38=;
	h=To:Subject:From:Date:From;
	b=vDIHtHvWYcBfWzMzXXeJbx+02DYCiOmQezh4ySmSa6plPYJPwNS8g6BlEw6rbsFSF
	 HYEzaFgaj7stp11tAvUVMqEKPS2Y1MaxDVYTCkuvWymK4OvgM9+AisFah1MYaQhuVW
	 kvJ+O624+Udul2GtuyxgIEvC00jElCCclBJQpSB+OOcD6aVTuY89YSOnTXjmuOXEM1
	 Bc5JrR1jKhXLTA+1J5oVWQjtajHSsLNBnLEcDr6v04+qM8NQxA7TeqQlK70fI4dgat
	 ZBoYaG9nhoIdyzXeH0RORAEDsK2wmc/2GbjvIR+zLKgFjcIZYlFNx7nr7kH05aFRBl
	 BwXAxcTSX1fJQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92C54CCD195
	for <ddprobe@lists.linux.dev>; Wed, 22 Oct 2025 10:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176112779359.26535.4108417591835324528.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8dac78fff2922118a603edbbcc0331f7e5717fc7b3bb84c2cf1cd097e89fff02
Date: Wed, 22 Oct 2025 10:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761127793
