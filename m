Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24E7E431A5D
	for <ddprobe@lists.linux.dev>; Fri, 31 Jul 2026 23:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785541234; cv=none; b=ArH55qoHjJRM54Vmqk2HrjbUvePyMseWSmQFZH4cb+yT7vab40XvW6JktajtitKu2o28ONstNqJ2u59KpK8YpZuSdGz+SRA3021KIqL3v4ZaXnbcRBIyU57iJLKiqgfM1bx2Xv6yLuwC3FJRHAZ2pDUUY+2T8a1qhiXeYwX0O9k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785541234; c=relaxed/simple;
	bh=RIkdS6FqxFANGcqMiUWGVy0XpcSDJZmOy7m7g5Y7MKM=;
	h=To:Subject:From:Message-Id:Date; b=mxE9PTB6gWnhR/Xvohl0s7dzw8gjw1zzqiu88uwGUfhIvxB67yP5M407MlTSyrYdawn95LpYDbahsKtjm0SUx8JmiCGPbI2VdWxUuRcNz9Wp4dQBjJck3ZOuE5ruVlZl+jQE0iEpmoYF30+XID5f85+p0JvOVblwTOEoAQFOmSc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IkAhVq5Z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IkAhVq5Z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB927C2BCB9
	for <ddprobe@lists.linux.dev>; Fri, 31 Jul 2026 23:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785541233;
	bh=RIkdS6FqxFANGcqMiUWGVy0XpcSDJZmOy7m7g5Y7MKM=;
	h=To:Subject:From:Date:From;
	b=IkAhVq5Z2VTNtne+zKUHjUbpQEhrVxyTFYwCqLIuuHajmX6023tmadT8VEtOVkB82
	 k89U2odXqdIe3sih2V/OMpVlGpe21dBAu9XD8jfmv6FVuGZmv4c939NOae6iYp3G4W
	 Q/sa/cx47A23Z6k7VI9NvM7mg3eqPjaA4hbLhts7nxVy+3uheMoS3Hb7tQBPF+gS9/
	 5r186JEUtxct075e65W43KhEF1QmBMEkq07k4FWdrhwMgJkM43CqEHOe3hbHu2n0bm
	 kiT5vT8Nf9EK4IGluec+wB9STzaS3MqzRH8FaoHgpv9v+ZFjkHNMqJ39ltd/uLC7LL
	 vjyb6LD8R/wgQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A883FC5516F
	for <ddprobe@lists.linux.dev>; Fri, 31 Jul 2026 23:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178554123368.16248.2812600434716521929.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aa492fbeef3815913a9df8af9edf8f1c0bfa1438d1a5bd02580b8c30b6a816b5
Date: Fri, 31 Jul 2026 23:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785541233
