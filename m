Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 297F232A3C5
	for <ddprobe@lists.linux.dev>; Mon,  5 Jan 2026 05:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767590634; cv=none; b=SX0wrYV6n/EpdYwubz6dDoPOe4PllNngO9zmc5iSugRtACpAwXrgLZ/263j07Y0Nzgr1aXm8Yq1Wmz8obeWvbA/p2qFDXDyVNgwgtzRQpTQtWBNSaDR85bm3Kv6R8hB0IfU/MQOpdNbIR5kWpgawRHfC3ko3q+XotyeTleKa1M8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767590634; c=relaxed/simple;
	bh=lrT0uA1cd7Mw2zH2HOuIpLwa+BX7Ff7cnoVkWK9eXRw=;
	h=To:Subject:From:Message-Id:Date; b=QNGJCK3i6bKJlgrz9fd1MH3tK8Yjqbee2MI3k6TOLrNhX/7Lq6YLg72ZUwCZvB8Ltq1wy+TXZPsY5KxWy0G/qcyjppIKAHmtDMQy6DNzqjQ6twwHYThboWSwttZuI+wHEBSzkzbiC2ljR+KG46/233fDBoekbcKP491WGk/T+hA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=H7IvNJ+6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="H7IvNJ+6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A74F1C116D0
	for <ddprobe@lists.linux.dev>; Mon,  5 Jan 2026 05:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767590633;
	bh=lrT0uA1cd7Mw2zH2HOuIpLwa+BX7Ff7cnoVkWK9eXRw=;
	h=To:Subject:From:Date:From;
	b=H7IvNJ+6MeWtLriIIkPkEl731t8FJRLVlo6gE4BI4hh2+HEqdULBb8+mt223dV0bV
	 5CDXIo/HdEuiNCYQT1DN9cA+J3LGzHfwJDUf+HGO9qCzjDk9vrkri9A+Sf9rnHZksG
	 6UKRGaxr8zm4WRpRZQ3yf/sEluXCIprjdtix7o7pG4Av4B5y2bewew4jc4srcMwirJ
	 2VNxdAgIeq/ZLKowAXSQXuO6fcs5M5pnYsSFHVCV3ITu7DxZ5zH4h5DvnDWeUEsf2G
	 2WYe79/nOfuelEGsRlK5yR6MTppNMx+03UhW5PFdLnsB2OvLprBn6LcjZq+lHW6oAH
	 mC1LVcuMbQTvg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95DA6C2A062
	for <ddprobe@lists.linux.dev>; Mon,  5 Jan 2026 05:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176759063358.19084.4355949705886887657.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8708c0728c1d5bf356c222dcca7faaff2bf1ffb3d238be4996d8d0e277fb5691
Date: Mon, 05 Jan 2026 05:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767590633
