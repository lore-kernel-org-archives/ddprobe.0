Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E9473537CE
	for <ddprobe@lists.linux.dev>; Wed,  4 Mar 2026 11:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772624094; cv=none; b=PJGqNWAfngpdfo0pvz0WLQNVwBsC7zSjISHTlU24N9CkzqyZetsIVhQYxFwA7ObmMFVSdtQbn3epSJmymm1GlUgRmx2bC4sr4tTjnUHL5kKxxjNo5vPhfMIfDib+mae00VTRnfAQAQLtEzb24iwC7u3PRm+UZL/YOvF/dLyiLKI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772624094; c=relaxed/simple;
	bh=Th+rOvEWt6nUXY+EfBtsgheF7VoRPriqZrUZ5oiS+fc=;
	h=To:Subject:From:Message-Id:Date; b=cdlinmJwvOuIOT1zBz2GTobjLNdr+pZq6ktvOqrSdCvDB6LboZstZ/+7ashqazROoRJiuukznbrhyDdz6feII1gml4iHEDvGqblY2S0F58qZYeH73Yg+OyAqhWlRSYOeN1A3xV+Uop+dni+2iJpydiogKWqlnkrjG44E5fYvPeQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZN3w64SQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZN3w64SQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C5572C2BCB0
	for <ddprobe@lists.linux.dev>; Wed,  4 Mar 2026 11:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772624093;
	bh=Th+rOvEWt6nUXY+EfBtsgheF7VoRPriqZrUZ5oiS+fc=;
	h=To:Subject:From:Date:From;
	b=ZN3w64SQOw6OjEixac4HHv7+t160sBG24hUQ5LLPNx9JxDA3m41nnbYJyyh6Bu8o2
	 qhT/ICR9Hnl0vVmC9K5C6dVOlAkXnH75AG0/+LL3aa4tSj1QA5bAofGOSRvwn2CrQb
	 h+qwQj9fbvT4Uhl+IUAya8uRybON2wlAawW/YZbYho+eL5B6CRtHGYUSX6o017TNML
	 xxEVOZlyf65h3K/9DkCAHmI6UAt7Fift2akBN3hokLweWwS18IdERA7kKGAGh1+y1M
	 mSXR+dRyAAUewvVo3Yc0Bsx7sdrNLBvnkvv30EgHLcAWvBX8jf085NZa6PixOLkgWb
	 v8RJ1uD6NPS+w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A3B22EB7ED6
	for <ddprobe@lists.linux.dev>; Wed,  4 Mar 2026 11:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177262409364.28662.9217538441018750769.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e4ea54e95e622d48b8e757475e6f9c99cc9625653f916572905a5774a72bd32d
Date: Wed, 04 Mar 2026 11:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772624093
