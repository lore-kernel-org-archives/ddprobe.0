Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F6EA336892
	for <ddprobe@lists.linux.dev>; Sun,  8 Mar 2026 23:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773014094; cv=none; b=QZ2HXCvjvfy5UqfTthTXoINNAeNkC07fH6EWk7GvRfKRRQo9/QyATwEWXCWSpS3j1q7Cl1TVo94I0nxL6o36ntPxv0pLvBbqcqx4IwbFNjz8OnfWYvVUdZGxweH+FphJJZVidchxeeR7RPT5YK+gH/D3jkwrQt+pP4yN6w+/b2o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773014094; c=relaxed/simple;
	bh=5VinYodTd17W/93FDU7jzSjyzcL7iFSjeajmfolmwQU=;
	h=To:Subject:From:Message-Id:Date; b=s4hBk0xQMo/d32BoGuc90jI3zGxDy8LlrShdkphXYCUAOnTtzbobVoXlsNCXApcB9L5UjTP/+IWs4ypauAvPptoSqNcQSy9ZyKpLAWvo7dnkwGapdk7pbVZvUBYjO8jBfPWozUiQVtcpgOT5GvXZn4PPR23RL6itxH9SVUnoT6E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NP9Lpo3S; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NP9Lpo3S"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F496C116C6
	for <ddprobe@lists.linux.dev>; Sun,  8 Mar 2026 23:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773014093;
	bh=5VinYodTd17W/93FDU7jzSjyzcL7iFSjeajmfolmwQU=;
	h=To:Subject:From:Date:From;
	b=NP9Lpo3SMrGgJhQDE0C50M8HTXO59kMF1ycFd2DrBinuVQ57xOzxihIn0B43OH8L7
	 LC55CjOte92u2ijLAXoU2wdogaY3tEcPbOBGnFaXyYBnkt9UMy1zEav5ECsTDOosac
	 4SX0s45gNFSs1B/H9efos1VPed+LwBYtGyi9r1YltQxrufo5qWzBegwE+NqDC6NSLk
	 wgq4rKPz+vSm21OxCsxwsDUsB+EalTdlKWznwzOnx5SZzGTTWMpokTwwp6f/SO/4vf
	 veDTPLTuQTyvx7FyXrx7n/OkArjCegxk0A90D4+xLHUsELrygYv8PxiNvjoj9OaRyE
	 hUkJCGiBoEPNA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 900B0EA852F
	for <ddprobe@lists.linux.dev>; Sun,  8 Mar 2026 23:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177301409358.21733.14733022906822963199.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8c539c8f24de2faf50818c4a27629a18b2be100642e62ef808125f64d13f4226
Date: Sun, 08 Mar 2026 23:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773014093
