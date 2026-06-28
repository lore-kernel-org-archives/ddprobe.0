Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2589034F247
	for <ddprobe@lists.linux.dev>; Sun, 28 Jun 2026 10:08:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782641314; cv=none; b=fHGvxg0TMdDtxQ4gh/y+9Z72qmhYDPi7ssqcZW8kwJI3WfJKomkgnNNkA1i19z2f738m97HnQzVsI7frZcYFkrnhRoCDuC09KUZtOZaud978zt97Kr8Iu9tpdyDH2f/vGDuyKJSNATNp8Cy5dq1Pet4BXaDruXp8m8pDZOo/f4s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782641314; c=relaxed/simple;
	bh=3Kw9jonn2sy0dI7SbwgHd+jOT+UhvAwqPj7MAwBS2PE=;
	h=To:Subject:From:Message-Id:Date; b=U68JJ/YXge+KrPb/lOot+B2dOGc/YQnonJ9+MA61e3fxPuHWZdMZvNAD8ZJ06FAlO6bh3tdguUn5I1WwOXsCFKtD5hn77youxBHtd2Be0ImEI6RKVlBJ+MWHC1uGM+b+b/Zo8dsE31GLNenUJZFaKfUKiTPfQ63jJI2UFJPvvQc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UnXAVevB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UnXAVevB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C3826C2BCB4
	for <ddprobe@lists.linux.dev>; Sun, 28 Jun 2026 10:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782641313;
	bh=3Kw9jonn2sy0dI7SbwgHd+jOT+UhvAwqPj7MAwBS2PE=;
	h=To:Subject:From:Date:From;
	b=UnXAVevB23EUdgtIqQu4NZklOOurzwf6x8cZlPXcgU2PjSBAPsIa+UBuiB1/oeBnp
	 zph4E2fB/kJDlWe+keVw3SOMo5uGOX8esM4oFH750cDXdiU03k9gmxpYXvBT7VdTNQ
	 6jCMdvIvXsDS5EM7d4jsLb92c0hDKxqO2reAH+BsrSbDPoUS3nvLeQaXn6vmaj50sP
	 AD40Re2bmPEVmNZjyw8wiWz95qtPPoBO3g303M2iHiz9QUt+RXzhMHCRMLKV7iLmU6
	 W0YP+78rpKxT5ivdJotyJnXOamMzmFjED2+LK7Yxs4EZcPr9q2rSElIPMhB1HbzO3U
	 Kq3ZuggpaAJ0g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A95EBC43458
	for <ddprobe@lists.linux.dev>; Sun, 28 Jun 2026 10:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178264131368.24029.18287301455351534591.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a55ff6fb9e741a655eeff7706a24b9d65d7fdaf1812d93fdd159abd7d880c468
Date: Sun, 28 Jun 2026 10:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782641313
