Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E48B82866
	for <ddprobe@lists.linux.dev>; Fri, 19 Jun 2026 03:26:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781839594; cv=none; b=I14Chw3uSc7geJjDK4jiQdDm2dKWN1vAZtVX01oq24NJDTu0K7XPbNXoBaNA7lzbm4sp/m3C/LTSqOlmsVxUErMDJra78v+MRanUTKxrwe82Qt7VGUyfvhO0pBYR9ptQG2Hxu4UWmUD/8iFy2cJffa2DxyapdRZj3p1j73fqRnc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781839594; c=relaxed/simple;
	bh=dJPFhizYVg/WwUzBZc2yC6hU/V6Sd/l4ZBn68K0WUVc=;
	h=To:Subject:From:Message-Id:Date; b=LMw+4FkXh24htE9SCwWt/TBKD6Ew6MTVL1BSyE6/bU91qPDaiLq3ipkpbIG2jMtgNprSaWeIxFVDQx4wId5lsLeq0rdXHGBE6qjIlNFr3TWd2OgrfQg4bv3uqY/0ZUDzJ5p4NuezyO61apXMkCjcaCrqZ6/Vq24y4GHYKqXwFjo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uqexLcka; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uqexLcka"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C4128C2BCB0
	for <ddprobe@lists.linux.dev>; Fri, 19 Jun 2026 03:26:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781839593;
	bh=dJPFhizYVg/WwUzBZc2yC6hU/V6Sd/l4ZBn68K0WUVc=;
	h=To:Subject:From:Date:From;
	b=uqexLckaSwp/vdGXuT9wR/Fba0qnuDUQz4x6nbg03FBRFyWfEmgymLY0pGmHxUmGE
	 VCXdkYshN/MD5fap5Q+a2706WonCuI6nPDl7gBr5MnSdPRskIGqflfYaopvl461SCK
	 CRNuzjS67he36wBC2yAcQsujrEfUCJIQ2piBOuKIwfQmJOVdNGPNHtmcRao9yJ4i6Q
	 37hLP279kjDE6mdCW6bFYTjVojB+Mh5HJ19LrxEcj4zOyseVcieYsmIR8t+fnkwrn3
	 2XvT4ZAHIOdUKdkfUV+BEZ0hfZwAL5A+LQjIvAf+cIwpjKN5qotQxo6PYbSceelHjR
	 nJyMoQUMm9bYg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABDCACD98E6
	for <ddprobe@lists.linux.dev>; Fri, 19 Jun 2026 03:26:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178183959369.5654.5672767634092732198.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 53244e65e45c501e54f47518784b1d9b0129d5e6b99476690cd7b65673276fd1
Date: Fri, 19 Jun 2026 03:26:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781839593
