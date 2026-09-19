Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3350E30C35F
	for <ddprobe@lists.linux.dev>; Sat, 19 Sep 2026 21:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789854634; cv=none; b=XNxroGRx+RNPXNzBs8NddLbQizsScbg38Fw0A/8TwdBYQ1gYUuP2SbdKhNg6Ad7utK9Mx/yUVlfn/vY8LRdXVGtgKTt6UUGt+9iUSy9ykxQxPKBYNE+OHeMTUCLkrhVMedMgZp6KiqkiS0KgjFf06RqZu6IROrFHpRIYy3iplpE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789854634; c=relaxed/simple;
	bh=vTeoMwodwUawpPWBUq34sKH0IjzEs1nmM3i9gXaOTIc=;
	h=To:Subject:From:Message-Id:Date; b=eqCF6VH9H863cQgPKyU8qadWZNblnlGb9cJtwyOYyrsWoO0OyM704RVj7g8+ipIyicld1PF1L6eL/7zrc+TNu5rxMu6xIU8UVLhnT2ZNW0RuVHw6xJBlIYh6HUFbFMfRk1SA8TwayQtEf8SI8kPjRmkgHdbK5QMbNWe/zi1tmGQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RBs8gobK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RBs8gobK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2F00C2BCB9
	for <ddprobe@lists.linux.dev>; Sat, 19 Sep 2026 21:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789854633;
	bh=vTeoMwodwUawpPWBUq34sKH0IjzEs1nmM3i9gXaOTIc=;
	h=To:Subject:From:Date:From;
	b=RBs8gobKNl8Pl6RSe03DRGNKMvnutceprIJlVItaYye6lDuWs1Aa4qHmTdu1h5vXJ
	 43DnIs6bqmxG+ATwhDuWsgYA0gb87XbPsoaWvN3vWepgchc11IKyTT9sn94NL8yhf+
	 knw+3bs7eaCJCH8tC3rEvtnfm0Oo9z1zhbKRpPLNRCWAF3ZcBGsLr8PZsvnuIcVioG
	 gXT505iQFlT9kE3AOu49Xxhm26NLQZBcOFV9EBdW8RWdM5FfLzjgJVTISBYcUf4xE8
	 OfnhGmCr5UixDxdacYEIn+QPuvjj//Y6fJgGyjt+ckDqjnrzEL7q6pvLkrUc1CTuAa
	 +WIBcOM77JmoQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A965EC982D7
	for <ddprobe@lists.linux.dev>; Sat, 19 Sep 2026 21:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178985463368.23911.6150819279863978222.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7bf8fb0414890e41fb9652a358e600f2c131e14b5fe963f8a151ae760729831c
Date: Sat, 19 Sep 2026 21:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789854633
