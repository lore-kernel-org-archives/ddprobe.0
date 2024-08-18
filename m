Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 373A78BF0
	for <ddprobe@lists.linux.dev>; Sun, 18 Aug 2024 21:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724015754; cv=none; b=AvEymgmND06KZo1Ttv6ok/+zg42mVUiVAE0TgMD7O+gZN7fZSDyW9qQol6LnmEUGzQItG95XsVA6JFoFpyhkACxZndQIKzxkxjihy977TUy2OekNpKdSt1o7Q3rYkcHULPUtxFWUaT7QO1Wwn1qunBQdPS8x+sD+6lVF9pojRVg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724015754; c=relaxed/simple;
	bh=Ya2OWxFEqHqVru+w1/0zY00u1KIX9Pq2A6TNzD3tpWU=;
	h=To:Subject:From:Message-Id:Date; b=Qngsgxn6o0JB/J4SQfTEQIz6fbvywbPTGYiZwve3Mq0+pWrBNiFBOc4GV7exk1vpOcJJb6xbsCmMcz76nVR4UMTn4yIRy/eBPuODWbVVeFCP/Uy3N7l2V4jfePFkvCbAmODYaGFr3w8Vahh3JjRBEzxItbQxIZiqI/OGD3xWAaQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KgtEA6pO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KgtEA6pO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1C22C32786
	for <ddprobe@lists.linux.dev>; Sun, 18 Aug 2024 21:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724015753;
	bh=Ya2OWxFEqHqVru+w1/0zY00u1KIX9Pq2A6TNzD3tpWU=;
	h=To:Subject:From:Date:From;
	b=KgtEA6pOoLZoO3G35T5D0H7FLkGzKDq0BpuqjVtpIfb1PdCtVbpSF/cXyfsushtvp
	 zNhfFp+6g6wfAe1m8oXgJC+duG8Us6xyBhBoIFn1gUt+2gV0OiwFnz+q85QDuq8CAI
	 WvfwtxTKVCd/F1PbVN0Ogi6sZ1NlIpsgSRx8TCtJuY2Quch76xBMEQam4WMBtdpOsB
	 byd9F72dYUjYE7ATKW03UIthLhAdwb85yQNBchY0RbzXiaLM3H8yAVr+8hTjcfi0D4
	 9bxQT5Stfv79hAJWR1QsNJpGorEpYfzoW9vEKJ1VQOwXhE9pYZhC/L/5uyycpriD8j
	 iwO1OFi+OvRXg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A85BEC52D7C
	for <ddprobe@lists.linux.dev>; Sun, 18 Aug 2024 21:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172401575366.7073.15812285908981763814.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3c5b9f057f399d2f6858067e280bdaaacfb74e9c352b857f3aa40973bb6a0d8d
Date: Sun, 18 Aug 2024 21:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724015753
