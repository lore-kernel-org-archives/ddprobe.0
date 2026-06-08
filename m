Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33F3B2DAFDE
	for <ddprobe@lists.linux.dev>; Mon,  8 Jun 2026 01:24:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780881874; cv=none; b=D65CWFG1Pzd8leR/Gk/34vDXMPcf7TTGOxMZv464Fw+jRKFCaNnruSC9tOnBYDiODfsdU6ibNYJsgM7fiW0CtSu6igWz+uRFCG2CjsZwh9kBiHPPmPOpeVNaYtFEeXTVC2xa9C6AOxJ5B6RZKje/Fzl5dneuq1tCPJteOl06j4s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780881874; c=relaxed/simple;
	bh=pm9D0xzVqwb+wn37QxLYvxtHFNiZ4UCnDB/Hhdw7nvg=;
	h=To:Subject:From:Message-Id:Date; b=AGvIkvOw1H1zKrxbZUMlzNGWFhSElX+1WUmBZoI5SaiN/zWaU/RbbEnf6MN+L3tbCMW9Tbbdw+tHFzZ57blOICaz7tA3GTl3ctZAOe09qD65FD85iYWOmSDTuczTtzIB/ndKM62tjFwwGwwuRAu6Cji7BzZQnlK/W3dhsBNuhZo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BntTMPQA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BntTMPQA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0F2FC2BCB4
	for <ddprobe@lists.linux.dev>; Mon,  8 Jun 2026 01:24:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780881873;
	bh=pm9D0xzVqwb+wn37QxLYvxtHFNiZ4UCnDB/Hhdw7nvg=;
	h=To:Subject:From:Date:From;
	b=BntTMPQALwwkWYbI7Ji9NnozzJ4nuRzoERfW2umjiCfNie7+4sCim5xx9eWc1ZFvG
	 2nLZjk71C0AV3Pi9l3nXZUrCGNl34+p1GgzajWG/qdzW/W9SQBfxDL7Lhls4x7sXoT
	 mpCfRtzyY9+Rev3KsYVHdWnOiVOAGTpF3Zbq9uJWEtf2noes71yln7DT01cy4Xoh+U
	 /ZU0b+q9ngdpvACqtrgITBFGZXzNryKBH5MctN/Kpr9YRliVlKj4a9zxXVekTBjk6x
	 UTBe2kvmbB6Bmu+DxyZ8Hxt8EwKJG7kUJ60XRJbOkdoT9++YyHz4BK8DVy7Dxt+Wsf
	 jBquu3L+qVN0Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9C2ECD8C90
	for <ddprobe@lists.linux.dev>; Mon,  8 Jun 2026 01:24:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178088187368.27829.6364156512141392612.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5b3642e082628cc9df722b03dacda5dda9825f7bc7d1a2a7734319760b870117
Date: Mon, 08 Jun 2026 01:24:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780881873
