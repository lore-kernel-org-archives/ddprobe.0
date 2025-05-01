Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4329A261589
	for <ddprobe@lists.linux.dev>; Thu,  1 May 2025 06:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746082195; cv=none; b=gXrlFgYYgi3kF7CD7V/0cpGYdCcFhYX/g9D9kkZKyB3yo6knL02BF9QvrnChItoYfVDw/2NPw2tP34NdWTFeLbVpznF8XbzvxeihrWYIVkAvEOKvENiAEfLC412HeokbzLjWB/+KsQDnnv1rQdq1cAvyhcTVS2sWaPnKqFe8ODM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746082195; c=relaxed/simple;
	bh=CIl/w2VEzfNE2iAReYeNch6t+8pfMYvKgeeWlD6SmWk=;
	h=To:Subject:From:Message-Id:Date; b=ic5xeYFw5t8Fj44rNqchiHsOcxTiNUMcC7dvZQAHrfyycU0FwGSO/V7drT6LFetvnbj0PEI1DEs3b9+FAFNl2axeFWtcTbehwFnd9/JIAssorrmwSz+5D85IzRvqLjkb9N4tLS8eWEjWJd/plPwOKMqdUOWpuXlw5CgJDlWgMVc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tCSfK/lw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tCSfK/lw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5B08C4CEE3
	for <ddprobe@lists.linux.dev>; Thu,  1 May 2025 06:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746082193;
	bh=CIl/w2VEzfNE2iAReYeNch6t+8pfMYvKgeeWlD6SmWk=;
	h=To:Subject:From:Date:From;
	b=tCSfK/lwY642Q/0YHiO3EgKo1zP8D7AJDuK+tpJ94RyFIifp8WOwGt0sSGbXtaSyS
	 p6A7vKsXXvY1axSR1bmgl7kCnDKIoHh+oVp0WxUTupAkzFEIu/GUvqdzMGO0prxkRT
	 XTFn3iUfJJUrrNmc10K0YJYPgcAYaK7/oZubFvjAuvbV2l7g1cYMayTEuMdPMEmcOG
	 qcW0Ofp0W3kzsmACt8oIUElDtXS+GrGdda4Ep3TnYe/YxJET4xUwzgBTGDToBavX/F
	 3D/GhuNEn0rno0N4dDL8nLi3myh6XPwmEOMjeNIlbLlyVQVyirO4f2kHdCWRIkb01o
	 8sHjZCoZ43DzQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90C09C3ABA3
	for <ddprobe@lists.linux.dev>; Thu,  1 May 2025 06:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174608219357.32245.11530340248026136864.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: db62f3efaf0c165726939df0335e3c7b8ee7734d8c62b75ebcb04b0cab17b091
Date: Thu, 01 May 2025 06:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746082193
