Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B130343D8F
	for <ddprobe@lists.linux.dev>; Mon, 12 Oct 2026 05:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791783634; cv=none; b=UKizSI+A7RmBG5a/73JOH6C7S0zgGxyY0Gp6RT5CLWxSevGIn7EGDj+hSEfzIZCnGZj1iX2f5sBq6BhQ7cyTcqFdNv2pEYz+2wTyu4x9STZYosKPzIy0+A/hp1ysDd5c/5Q1y/xkRh0xrUzX5aWHsvAW6l5OI4NEiPYqEl3JB0E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791783634; c=relaxed/simple;
	bh=6urC2vbQC98H9iggPO6J+I7D+zi/RQ3TQqzyjEXdhGk=;
	h=To:Subject:From:Message-Id:Date; b=f9FkY1Q0MmG3pJfzJEhv0Qty7EtkwxekmK0d0NdpVcMpwTJ0cqkaK2smQS0kcjQvchBWzSZpESFKehYdVZf9XyAUzGx9penrmZZEoKwq7QafPM9Jcg2IJinjbv5cVa7hbjbFLm0w9g1KTTRfdAYKPvGiLblm55OCOgmK22fl1hM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sPuInWVm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sPuInWVm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4A09C2BCF4
	for <ddprobe@lists.linux.dev>; Mon, 12 Oct 2026 05:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791783633;
	bh=6urC2vbQC98H9iggPO6J+I7D+zi/RQ3TQqzyjEXdhGk=;
	h=To:Subject:From:Date:From;
	b=sPuInWVmDEEhUTb4SLbBRZfFs+nawMVIuTx2YRMe16ody/UMaVeEtGmxMesDkiQ9f
	 rDmB0fCV7IXy9c8y0ASe60T10tPluWmKE3a9to4CjByPSAqYqjIEUhxozkrrIZYl1l
	 3oFTjhPWuDKAFdP6Tr3D0Uma0TZ2ShzLBiTSctoA8gHuDW2hZnJFuutrY/DTWiluup
	 f6odDTHEXI6/Fxj9GQKwK2qalfoCWelBOunq1/O8fvzmGp+iMmaCGUfQUgMuMms6vu
	 5cm5K97d+JbaFUL9upskkHLqVeOAika64c2PODKMu/6h3ZH+uyzA/HUdJSP1XH2e7/
	 /vxkrPJcYJOWQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B02C3CA9ED1
	for <ddprobe@lists.linux.dev>; Mon, 12 Oct 2026 05:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179178363370.14903.9987305554606423498.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 016818b8aba9608b0cd60d0c973f9e91dcfa527656fff81d1b57b5ea037553ef
Date: Mon, 12 Oct 2026 05:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791783633
