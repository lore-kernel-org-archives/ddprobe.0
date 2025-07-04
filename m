Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24E381DE2D8
	for <ddprobe@lists.linux.dev>; Fri,  4 Jul 2025 15:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751642994; cv=none; b=eGR9z9UaSeYlR+jN7W5GFE/5eHve4lhK1BNs+1i0sMyPetzIz80sBVYEFKCe0yZZmtawXlGta14xuHrg5vfptuaBZh3CGKhdjsT622M5G5glfcC0VuBnFHpvRsAIboFBB4+yAA/N9WrH/hJIQO1hs6st6S18gkKNY2NjcJLdbR0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751642994; c=relaxed/simple;
	bh=0ND2/Ef7BqwcBFmLtE1D96/hCDFDaBYQlhPedJJ87so=;
	h=To:Subject:From:Message-Id:Date; b=JGFVUggQK3NyvT9cImXhTfObS9fyARNSrTG5luRn/FBXUGIJWdo9s88ItYbbzpURjrX5sCDPP19EJrkQarT5mkoeEPjcEEGQqbIgDZpebeCBUebicM3e2relsz5rFsCmH9uajjk5pHKyvgrM7rKoG2coG85yoV1R+vHri2Fb9Ik=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eavj0DY5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eavj0DY5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A14BCC4CEE3
	for <ddprobe@lists.linux.dev>; Fri,  4 Jul 2025 15:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751642993;
	bh=0ND2/Ef7BqwcBFmLtE1D96/hCDFDaBYQlhPedJJ87so=;
	h=To:Subject:From:Date:From;
	b=eavj0DY5WWblaNG0fCwD52Nmf7Mz6qx5vQf1Nm9lP3JKTSz/2jAxwQWZFdXrZ0RI8
	 KrYs5aynO2VkolCR4CCfGi2Vag+V/EDymhPFWMdqAPmnhDRPO1asrpiVhcGe2sXSQu
	 wkir1oWWfCT9JXAZuMT3ahGlkXsPDx0GVMSLkvJiiVH2ZrTBSo5EWzeKgGABSPjkjX
	 Hj5wj/jW1JQmAjBqpdZwagW+Er9+G4efBGHpHvxkf0XZKllw/Bnnf7taQSy0VDV9SY
	 W5chUD3ciC4z/ZQUSCiTAfGyJtmPtYMROernK8hXXbFX0Gmin8nQTsnZaWbKmiKzZS
	 qMgkheQAv19Mw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F0E5C83F03
	for <ddprobe@lists.linux.dev>; Fri,  4 Jul 2025 15:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175164299357.4135.16547446117941053715.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0545f0f3913989ac6ee9a26a80a8af8de81f44fed0af096fd399354e16881ff6
Date: Fri, 04 Jul 2025 15:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751642993
