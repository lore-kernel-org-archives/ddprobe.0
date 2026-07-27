Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6C0FA3E1CF4
	for <ddprobe@lists.linux.dev>; Mon, 27 Jul 2026 10:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785148234; cv=none; b=NQgFttOfKXwwFfHdGCAQ9f7ZcOCrCGPbBJnjmd32EKpSjkHuu5HKo9jJ+L4wI0B5gzJUtlLif77S3FTXwGXXm/pf4LIbTQzF/VDxD7teAChNb+Y81IH6fI37eBCjTitQhp3Wypeg7PX5vZ3+uP1RenwSUQJHGBAiqS1rVFohz5Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785148234; c=relaxed/simple;
	bh=6AJjdFyXuk5Nh8tAaYs7/lpbk4soeGMS6L5q5Mks8Bg=;
	h=To:Subject:From:Message-Id:Date; b=DHs/AwiMiO3EKtV3Dq91+0G8ixt48WVjgQn6yVKhGecOiPLpEY6ZzGO5MGQqTZFF7ou5l8ycHu5BYw50KK25MZYOrC4pTX8YO5xs7UaeSkxv0Hw++Ihewi8pF3X18eWGfMdHfJzmgRRVBbsp86TFRaytjWbg3/HBbvojO44RLkQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DNYvknRY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DNYvknRY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB0C7C2BCC9
	for <ddprobe@lists.linux.dev>; Mon, 27 Jul 2026 10:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785148233;
	bh=6AJjdFyXuk5Nh8tAaYs7/lpbk4soeGMS6L5q5Mks8Bg=;
	h=To:Subject:From:Date:From;
	b=DNYvknRYVnah6/y9UVo252IRC9Ld8JzTv3HlEQtV2fmnwDqA/SaPaoOEvDk5AdSJW
	 oUn9ROFEUGPIsf6kDVnTc5wd31uFBEhITrn0yOljSMbrPTY6MM0KWNNKvUCtJ+N1li
	 KniTojZtkUiMcUHUvT0XuCURv3xLcD8O+Z+4eniqjBMUAqLmOzcYwMuu6UUtuRi3+T
	 Bi19DU+IhOhopClsMPxhOBiacaTYSqjzO5XQG7diER/HxthCQYuNdA1ezDxzMpYZCT
	 GAQ8FTlYE218LW2bN5xvzvtkEgQB5KW85W0sUXzZnPe6z+Opw8knKN5T9raGPs5b/S
	 xvsAD7tUTMfRQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8A5EC531D0
	for <ddprobe@lists.linux.dev>; Mon, 27 Jul 2026 10:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178514823368.2481.1350152772265348372.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 44bf741a83556e428304b2e6d71a57e3fef442d0503453f729b4b627666196a5
Date: Mon, 27 Jul 2026 10:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785148233
