Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5426F1FBE8D
	for <ddprobe@lists.linux.dev>; Fri,  3 Jan 2025 16:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735920954; cv=none; b=D2VByU3ijVm72/5Uijl1tR4AMDUppjZ5iFWXHLefd1vyeB+H3mQvG0pHKBkvxE6kP31yE8HU5xOoC56SZ1Z9oY2ejr7ezblAcInNXk2q8QeHhfp2djlCzTS32BNSTarEXR8TbTYBlvZQ3A3ka7smSebmE72bQrr8mivU+sHyncE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735920954; c=relaxed/simple;
	bh=7ZsoW2kmbQd3RFfqlMvigBa9vXgtt6F+wIz84QkT6dk=;
	h=To:Subject:From:Message-Id:Date; b=KQfReEhGqnFfofhe+2u4IAKMsutpXVQNg6Fi8zE8iLDOs5vIFtxt1JdTW7MHDug1/y7eH/G1Yee5joAFGLTAIofFKSg/hy0/AWtzIUC06fzksSU9hIjBezddT5XFdPWZ/olEH6Ag+m1yRLvR7ewk8f2uKDhLrgUu+RCM2TDrlKA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fXee70Zz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fXee70Zz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B59D5C4CED6
	for <ddprobe@lists.linux.dev>; Fri,  3 Jan 2025 16:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735920953;
	bh=7ZsoW2kmbQd3RFfqlMvigBa9vXgtt6F+wIz84QkT6dk=;
	h=To:Subject:From:Date:From;
	b=fXee70Zz+YyUpOKUTQFM1ZiHSoXKAKHQPL2t2IXGgSElBmtL7hmue8qSPyfCxzzAP
	 VJzIn/JSI3BGn59Mp0KWPATxR9+uWcQEgn58NCkA29besE5ePkg5uW4kwyt4XNM6nD
	 BJy7OY5nbxf1vuRCh+Jt6V3EZYZG/XPGgDnbRhtoHCp40ymXP5B67Sw3tjZMvvw/hD
	 snxclL6whPDJUyVTN1zqsd2ZD3WT9GcS0QzMk088Tncws0fAM4Tpra4niQXyUyVZVG
	 u33mASsymoy5HtlBNu93gHTbiONRReFQC40tJAX4JwnLUkihtJYrYGm2/068ylQbEf
	 3MdKbcDzVsE2w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A081E77188
	for <ddprobe@lists.linux.dev>; Fri,  3 Jan 2025 16:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173592095361.10545.15047710661804417950.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6911035aaa8e37660e4323eea7182681de5686bb1f316eac0b1eb10a4a1d989c
Date: Fri, 03 Jan 2025 16:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735920953
