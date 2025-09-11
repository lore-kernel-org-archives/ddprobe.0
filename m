Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31B5533F3
	for <ddprobe@lists.linux.dev>; Thu, 11 Sep 2025 04:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757566194; cv=none; b=cbHKy8nkoIU+7fmNOhfxNDjHvxeqgvJhdkMtIxOFBingC0a8mDTBa0fD2YVrGxRSF0SPliuoA+Vuw0cTHL3KGHLF/Pm6Nh/LTMSLWgyXhLhm6qNWohs7vJNdpSrd6Otja6K8IEltuewW2ht1ev3dE0IazouLIRvWh+Wj1j3w1iw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757566194; c=relaxed/simple;
	bh=P/j+4QOhoRUtFbylrIcyje/ZG7SZ3OjMXf9hixk6kj4=;
	h=To:Subject:From:Message-Id:Date; b=VK5ccKubN3bycjbixpmHdffd7eJZJSn0Pu0FEUNqGtPpxte5g6sISzD8ghFoXv7T5U94xERoy7X5uzfHrYN0FMLKhq85ptRpUQxfoQgZ+DTjVBNXAI3WxQRt4T7bw3VEXGR86iHpe79t8durLXVk00AiHFRwBOwDndDrjHIWvfI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HCjFB4Kc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HCjFB4Kc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8F13C4CEF1
	for <ddprobe@lists.linux.dev>; Thu, 11 Sep 2025 04:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757566193;
	bh=P/j+4QOhoRUtFbylrIcyje/ZG7SZ3OjMXf9hixk6kj4=;
	h=To:Subject:From:Date:From;
	b=HCjFB4KcRs4559csTvwvoSjo4STCIaLQ6sPPH6pR/D9etIU6gIwOatunimGigB7UV
	 koZoIVNRZ53eisqy/kbOHuDjeHtIMM/DPXUXnuaNAFGcu0meLs7FHDT+wywDzYHsND
	 l/RVvFgydZpUo2+1cb6ENqQxEhjdJG/cPjKmmJkHXz/E+lt2n5sJEWAvHbCaiD2Afq
	 Y14t3kCLW2aCi/VmdP8v4DxQ6s17kWY5vikMf64AgOW1O2+j8T0c+SuSbxbZ2HODdj
	 up+/HyecG8tbSuPsLjVl9+4zPPnpknJCci9H4RPp//oOoob9bfg86qQTlzp46EEcHI
	 8KscTdys6so1Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96011CA1016
	for <ddprobe@lists.linux.dev>; Thu, 11 Sep 2025 04:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175756619358.522.2130626316322577102.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ea88ce11f262b20a14d347ffcb09563224834a7f9037a67caa0af207ff4a510a
Date: Thu, 11 Sep 2025 04:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757566193
