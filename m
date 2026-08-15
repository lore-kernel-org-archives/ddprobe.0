Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 507A039A7EF
	for <ddprobe@lists.linux.dev>; Sat, 15 Aug 2026 11:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786793434; cv=none; b=ABM38CE2IyuynLwdzV0AOhAO65pysPz2ajTPBqv3Ry4kjSoOF0VdDrh8aVvSUWc0O1TH8iQQiWfppm1JrOGNCA6IWQ7Iq0EfKSMOq9HwWdaw5MBBfJLfsalgPFnf/576MnzHHY29DeI/XMGnxW+asZSVg4L1ddxuoPlgPnnBPxI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786793434; c=relaxed/simple;
	bh=PkiR1hoJRTq+ZsBjDNEaGBqQmkvWNO/OiFifenTfuE4=;
	h=To:Subject:From:Message-Id:Date; b=RPAql1s7h+UXBri4+3UGehojKtemh2UL5tkcAieSs/pWISFCDlGglBWb8rtHbOQMOdhsoSDTNNTLZJC/DkAWXyb84AvB7arkk0A9ZD905XBFRtyUD6L+5gsV8DcFLYg5zYwtx7EzS5dwd+h/WGYFiemXQ7xEbdMu+GUpO49L5dA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=N3em0k/f; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="N3em0k/f"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3E7FC19425
	for <ddprobe@lists.linux.dev>; Sat, 15 Aug 2026 11:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786793433;
	bh=PkiR1hoJRTq+ZsBjDNEaGBqQmkvWNO/OiFifenTfuE4=;
	h=To:Subject:From:Date:From;
	b=N3em0k/foH7O75a5Y5q4+tnpKG784oyPQUzqXZneS93mWZT0ZG4WeUNlSLg12CeWy
	 i771obBt7W18/a9I0sYhS1ArNaOBPlxJfw68hcgezzuxQR3+Erazdp5cFPWqmGxCXt
	 S39fWwTWmxjWJNzBAIm0QVOSGU50dXuv/euNxFJzYd7et/Jmk+6KjmzPIjPv0GTTWs
	 H9+vqUBVPL/JTXdZtK4s8kaW20XT5QU3nxc7/T7CMmrUXJaMU50WpveaHhLDkFqQQV
	 X+nPYE+mbWNlzODqFW4fxwblu1AZ2rUP1RwPe3j64bKAKeEwxm2Rwoy6Z8SmZ7atFB
	 vW5xE2UroKuAQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B082DC5AD5A
	for <ddprobe@lists.linux.dev>; Sat, 15 Aug 2026 11:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178679343368.27424.17535789464189655273.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 250d02a68c9f2f4c15588447b467f1afdad0d05718b4399d5353e0e9a32e3e8e
Date: Sat, 15 Aug 2026 11:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786793433
