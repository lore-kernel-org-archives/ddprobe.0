Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32E9835A397
	for <ddprobe@lists.linux.dev>; Tue, 18 Aug 2026 16:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787070634; cv=none; b=llzSh33F5+SNaho/johJBMkhvoE0qmzuHH3tVCftIRTY9dBtarWPPvTTGTh0eSpwbkg2tzpyR/+DP+aYpVn6SHYa8uzhokLHBDTPrNTnC4aIFYSSn/v85aTc6Xg9IBBbJmvg7H+Du13gEoUwkUDju87OfDmsO//rhJE7VBwfZeU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787070634; c=relaxed/simple;
	bh=trms+T3nE68WUVxDXF6C9BLl+EHOA2vqO8ztHVQ0ELg=;
	h=To:Subject:From:Message-Id:Date; b=ITNjdVlhcmzLzbIXF4NiT+2U8/VISxObvCT6kwCLm++q5WXc3EYbwKqDZx2U2PO4taGTP2UwYpGX7RmDXTcHEkEVJ1a4MgZKpkoWZA/4AyFurcMD56MbtyjC1LNw4wE8hRu0euiVXkSOpbFAm6a7R0BWbGSFtxEtdgxxpc+JxMc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ch+I8LBd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ch+I8LBd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD0DBC19425
	for <ddprobe@lists.linux.dev>; Tue, 18 Aug 2026 16:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787070633;
	bh=trms+T3nE68WUVxDXF6C9BLl+EHOA2vqO8ztHVQ0ELg=;
	h=To:Subject:From:Date:From;
	b=Ch+I8LBdoz+DNfq+HHfnovIbyrE62Y6MhYkyrybrXKklFFJH+1sAy2/RmaE/A4asQ
	 9AXrJrh+LaTmd2CAHbBuYD/cRWaECmh7jLidz3vZAWGIb70dvG9IdVF58zyIQygdXh
	 1cTbLzOlNOb7I3dIdoDh7UbpE8N/K8F8AjjXJDmmpeNT1RkwxY2HFUwYvtcJ4f2YDo
	 r0XdfJABOSfeuAZ1O7NGWZdOyZgZfFK0rNvbTclKQzusM0eqtTN5c2TZe3VpASShGS
	 ruggirbN8KD2+LFfXdb/Up8abIYgs5T7l2NNk8xaO9YmCH+3dnq1D2vJ5731RrB/gf
	 kmDpKRuv2te0w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA423C5DF7D
	for <ddprobe@lists.linux.dev>; Tue, 18 Aug 2026 16:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178707063368.10225.15844287127784622507.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 93f0c141e992e68ca9f9d20ea22dd305f39fe3852140f98dec01785d38984a38
Date: Tue, 18 Aug 2026 16:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787070633
