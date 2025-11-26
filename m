Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2001F2D8773
	for <ddprobe@lists.linux.dev>; Wed, 26 Nov 2025 11:22:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764156174; cv=none; b=Gd4M+ArmNn4oTy7T5wnrLapGjesCeSLh0sVgSfdGOTS2zHRlV3cQ9toIe/x9s0nyjyu3XxUTY5+MhYCs8MOWMaUrk0M9fX/zToH1AvnCvC2wgP6/eZ443CRujkbXqSnbEanegEhlMLYzuO9vl1B6ZifWx9vom6n1Fu0cfRdcpUU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764156174; c=relaxed/simple;
	bh=sYS0E7CEmgA3wmI7WMGTP+xRl8374lCl2f95HhthqPo=;
	h=To:Subject:From:Message-Id:Date; b=aF4hsOL47i18YqSKXiPbuFOG0yiwEsSt/9Wp5wRAcZWRK/a6JbyPahWW8RRRvRNbwpSz/IlSDBVI2k73ezazCQvISa01JZv5deajOIDzTlAWMsCuyGOcWVCZq1zsB7RfODWzZBVxa8suMQPXs282a1nY+uFq7x9Q3y/U5IK3J4A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MgtjbljQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MgtjbljQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4D3EC113D0
	for <ddprobe@lists.linux.dev>; Wed, 26 Nov 2025 11:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764156173;
	bh=sYS0E7CEmgA3wmI7WMGTP+xRl8374lCl2f95HhthqPo=;
	h=To:Subject:From:Date:From;
	b=MgtjbljQpyVt43y6bTdPNgblqgSdhzFW4D3LN+s54tk7g2YroWKr1r/KYiR6izyy1
	 /wpf7zhk3GOnuwTfBU2iY3ZLDo5GHPZQq4sbJQuasJOEM10ScVoX/sJ8/04vzeV8ic
	 FvRfXsQoxr52UFaaEsqdQgChpDu7KQ7SZEgf0g5Qjw9tmYF3y63JMWXbMgyCk5zDwk
	 nlbwWvKMvaVHauZIwAF1r+aramTHlVqRHX5i+7dgbD8yLUwPal/RUiE3NAwCL2HcSL
	 ehdkuAcSnT/uPTc3NfnAwkMIQOwf0GJW0qI+RxziO+4Mvxk265HhYwMsfF57xoy/WN
	 1J8/G6DvWJ76A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93FAED1039D
	for <ddprobe@lists.linux.dev>; Wed, 26 Nov 2025 11:22:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176415617359.27947.8593518246022780599.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9b7c9215ddd2b642e6cfa32cd0af3c3b878452bc03e736b53ec909a17f97ed1a
Date: Wed, 26 Nov 2025 11:22:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764156173
