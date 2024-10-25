Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 230741D3593
	for <ddprobe@lists.linux.dev>; Fri, 25 Oct 2024 08:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729845954; cv=none; b=X2w8QDV9DBEKF1ZIyJHKPEscJbeqyPkTpqET5m08xN5/A6qhkmUkeu8REfX+41A6CvTK/MiFtb9jNl0S3YthvqELWjep3OREm+sy/2T/OH/pmnmHHITEuKoNRNTO8iCg3N66gs2rKrSVgLbHsaPMEhlRAMAQHIslm87HjpPAdj8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729845954; c=relaxed/simple;
	bh=6JPIJU8ZSa2y2LnLmOvH7yRbwtnCONdCRmF7xeVenOE=;
	h=To:Subject:From:Message-Id:Date; b=g9s5A+wS1v8hM/UOJa2Y2Z5wJyEseEcNs9RE8CeT2SEXtbSS2vd4BCoLgq7Qk+Je4IpGRdMMFdOjc2jPWXTXtevOBlIYNBQtXuTDcK9mxklMMOmahLz4L6dceBQaM/LbJt79D9OZ2NdUSAXkm5o8/9OQTWrdW9/gEyEyM+D57z8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XQtTJZMT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XQtTJZMT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A701BC4CEE4
	for <ddprobe@lists.linux.dev>; Fri, 25 Oct 2024 08:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729845953;
	bh=6JPIJU8ZSa2y2LnLmOvH7yRbwtnCONdCRmF7xeVenOE=;
	h=To:Subject:From:Date:From;
	b=XQtTJZMTNEFX+xqSyu6wn70ryhmTeqKLqA+boO8nbR1RnbYNBMtGL7peLq5jRMq1n
	 nNCjjMRmnVlBtgipshrwxDVOeKByJRusgcLCfzVld41nL19shzQdJ6yWdb8otTNhpI
	 7DvQ+5vSwEiH44wg7TSCrms9ShBls92b0e7J8KeG+7CDRHdsqR0/jrpTK0aHGWqxT7
	 gv/g7b+FPoIIu98/x/krUZon9ran+V1ihDWv35UsS0oIaX/HsTSd11W2LIcGZc8glx
	 FuxbTYGwzdPCvHtPW7nlj/nLDSrZJ7kbZ2SEvBOWFmCd103oiICStINvzy0NcCGkMo
	 hVPWoFs7PH7MQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 941F6D0C5E6
	for <ddprobe@lists.linux.dev>; Fri, 25 Oct 2024 08:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172984595359.18852.3032753414523571793.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c369ececba42e500659e3e4696d3560fe169eb33a914d641901f82b25c4676b1
Date: Fri, 25 Oct 2024 08:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729845953
