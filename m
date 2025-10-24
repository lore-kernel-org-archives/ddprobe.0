Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 06D25265606
	for <ddprobe@lists.linux.dev>; Fri, 24 Oct 2025 03:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761278394; cv=none; b=GyBCEzne90uKdRb2iWWdtryHo4yd497I91lVgXI/T1bXlH+Fk2EJFr+mIlwTRBtT94kaw9SHsxsbJYm17KZREAs8bWS1jkDU8RQ7M9VEaGB52rEdraE4j48CH/O2zvTMcpOzEmNK/TUh6lum092oefvSM25Ke0RXxJBpdRC0HLM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761278394; c=relaxed/simple;
	bh=NWCRaUNt7ggG6gffVu11prO7j3vYIYDs0rz48gYIZi0=;
	h=To:Subject:From:Message-Id:Date; b=TqZ3pR7mEbcwm60gmXdrApqFNtgIiCfMv4qLIcYX+UQIu94cNqoyc+RSy+Fsg9lVWkzoqArwb+w9TYOsKGVE+9QdWLSwzP8pGp1P6U20DsGNhz2OeFXczAbrb83XXaC1TTgrNj5WHSOAmP9WaiZnZJVmXGg/GHodJp5XtAnWO98=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=agswCJX3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="agswCJX3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EF04C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 24 Oct 2025 03:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761278393;
	bh=NWCRaUNt7ggG6gffVu11prO7j3vYIYDs0rz48gYIZi0=;
	h=To:Subject:From:Date:From;
	b=agswCJX39/KPDaFr6RCSMA6MV1Zp+E90DDeyP/FABIJIJtg+zAO9rAkX91Z5+J6YE
	 t0Px9Fythg/b/NhVkKWnIkyX/dhJYvZQ3H2gpXVcwXfbIxWWvZTSGvWGQpa6I43aoe
	 Msdktn53GtFVi/M8ynf/dfl/e7JGr2Z7tELZigJ012O5Je0W1+Phn0kxUkopYUCl6g
	 dA1jV1PtyKGzNQzcDO859B76zlMLhFwwQdK+mAoZdukG9PBa6/UkcfxXEpE1kQuyE6
	 e88TzTtbjXm8S/ptyS4O5wFNc5QUqK/GlX7SqSm4bo3Geg63Yjulsj2/qTvF+9m4bs
	 jzuSUkHyK/ymw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E486CCD1AB
	for <ddprobe@lists.linux.dev>; Fri, 24 Oct 2025 03:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176127839357.8103.14960968249289471324.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7257c45277aebd0b204358c54dd7f3b32429835f0c3c7e2f4a42deb8922df2f9
Date: Fri, 24 Oct 2025 03:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761278393
