Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F11A81E231E
	for <ddprobe@lists.linux.dev>; Fri, 10 Oct 2025 22:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760134794; cv=none; b=NyWL5QOMLOFagN/X7EbPUgcTi1j3WNbbatTJfxNr9bELGr32cm6lA/rxSTi8sXd58vushqXQNYfe4Hl3YlNTast7xS++7Lx/emTDeZWvNazab497G53OTRDobmQenysYdQNYUo8uwo2eKaaVZlA1h+IbzNd8TpyjZomYS5njwpo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760134794; c=relaxed/simple;
	bh=r9SiZ9cAbM89riF3nuyOGNZ54aUcGV43YbvgM7e/+cw=;
	h=To:Subject:From:Message-Id:Date; b=jXi3g8l7NmIWyKNhmFqNxbb99V1mIrh+ASyRm4zU6meXdX7wtAYy9ZJArwYmJGOcabdADY5mlh2dKLZk5ZYSEWxxdzrFEGa6R33eehUoWg71z2PR/TgF59uChPgAZOnK9BXyFHabFdbea9TjDqh+cp8sAMGC+vJQ9IC4TuN2Z0w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NgKccRqu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NgKccRqu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A205CC4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 10 Oct 2025 22:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760134793;
	bh=r9SiZ9cAbM89riF3nuyOGNZ54aUcGV43YbvgM7e/+cw=;
	h=To:Subject:From:Date:From;
	b=NgKccRquPSDOW5HE/WYscDk9UwZa4ro4sSh994el4naAWDp5Z1o5MhB/vRPIQKJQ1
	 mt/cYHHf2T8WVqgOz/GFOEmZLEPZpZ0WeXKx0yGoIbQqUKtRlKdcvskzvR8/sAra0O
	 9rY8lA+RtmPFBlpF9C2FEvYImnK4J++cgCalP9FDvMNuqwBwW+LCwdCANJloJ8/LFw
	 W4cHnFIbccsMzwpbc+QQcLngTa10y1LQJCzl079S8UW1xSFo9pwbMerZqPqMg8E4pQ
	 /0yam8UZcvXKh1LE6bP9aw9VNIF3MwTvWLiCJz2+25NOD3ryIiTd3AXVZpJ0zqwyvh
	 W+G9H8i4GFXMA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8ECB6CCD185
	for <ddprobe@lists.linux.dev>; Fri, 10 Oct 2025 22:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176013479357.17576.9760012766852072432.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e14da8a562b7f0b1f516fedfea474662ebadaa7600c2fdfb8917fde814a34fad
Date: Fri, 10 Oct 2025 22:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760134793
