Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C72A72618
	for <ddprobe@lists.linux.dev>; Sun, 11 Jan 2026 20:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768162434; cv=none; b=KZ/cTen492CcbF3VyKDxC4iTSaL7trb7QXA5AS2iRDPJl0fOlqPts8FUIps7Xp357VOBia05XXHbTJOKUnjDKCWliQJ8ybwGRMgX7rsoggUV+Jqy5ysTazJdwqAaX12TxP0Gk+imKTm4rPx/t7wpgbGHV0j+kKglct/WThEFFjs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768162434; c=relaxed/simple;
	bh=fnJ8IBirL4K0wsN+wt8Hw/Cb7PPRhMZiiafr2apnVOs=;
	h=To:Subject:From:Message-Id:Date; b=DgVht6WpKMxgy1cCcM6sNfArH0LjzvCl/WiY2VbEem9g0SS2zXzVID4BnpIvu0Ue8FXJkBli2zGPaa11XUEp9fA45l4JWf1ARq4PauJM9N+7r9njSgN7jREytvqEBI6twQIyshT4Hu/hIowcMGJMKLeG90LGkLCXjCLQVONp0nE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=K1CfHq1u; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="K1CfHq1u"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A44DAC4CEF7
	for <ddprobe@lists.linux.dev>; Sun, 11 Jan 2026 20:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768162433;
	bh=fnJ8IBirL4K0wsN+wt8Hw/Cb7PPRhMZiiafr2apnVOs=;
	h=To:Subject:From:Date:From;
	b=K1CfHq1uKHBGGCevqy5/XiWSBohqhcvywq9xoQFdIA8SDtJJn5MnoqAuMBgWVhanh
	 Spj1DxHf+Ww7P22eLOlNXz64wBforEWTLG6V3kL37y12+HQJjqN/CBNOdehukviL5F
	 HW3qtEpqffpfxYLGPXF7uO5k0RH8nrFSVmT11arkynLr0z617lswAwwfPKNfYXCAVX
	 x1SASU/xODpDmlFO5e971F/tikYDXnK62VdF9QIKDSHx/WoHBI7GM2PJSfApiWSlyT
	 621ADESe5hzEswapvd49hVz1hEVnd694FuhUlph1mtHUm09yCtzvJ27v931YiCEO+w
	 quHTJI/OjznEA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92F1FD2502E
	for <ddprobe@lists.linux.dev>; Sun, 11 Jan 2026 20:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176816243358.8708.2145833992086171914.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 20b3c0ed6bf4e8cbd312e7b11418b0da7e5205f96e83833b7f93ff4769d7ded8
Date: Sun, 11 Jan 2026 20:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768162433
