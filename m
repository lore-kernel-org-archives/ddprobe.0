Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 142BB1CD2C
	for <ddprobe@lists.linux.dev>; Wed, 11 Mar 2026 12:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773233694; cv=none; b=qfSUwIWpcnAwqYXa0tAFaMc0/ZT0W5GE9YVGpsMMYiGw2VZkXcLLIAfF0AqF5wWRR11rY5cRTfAMKTPtga5jk5c4e0JF6RU/O+AKd6+uxUS+/7aEfOCkt3qLgfdCgKjIDCHNq7IPEy/fpd9QvXoFXpSpNeB/n2MxTizidLM/1Os=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773233694; c=relaxed/simple;
	bh=xLkaLbiDpA/6U26NQyIN+hCPFAWT6Ttfc9QAcqK4dwA=;
	h=To:Subject:From:Message-Id:Date; b=b2CQMkYzO+6JT6mS01L2y4bJz1oyYI6ebHNFYL7pqDmkUYVR1DnKBmwb5wzAwDXuNyAgiYL4WRqT93pKsv08sxQzH6M/mignSrjDcgv9VxY6xUa7o1Wg2Bvjd9YsDBFEb/JsGyVxdcL2I2kYyQKDfe2Mu1wfu/lnG1bcgFEctrY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=V4xn17wQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="V4xn17wQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9ED1BC4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 11 Mar 2026 12:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773233693;
	bh=xLkaLbiDpA/6U26NQyIN+hCPFAWT6Ttfc9QAcqK4dwA=;
	h=To:Subject:From:Date:From;
	b=V4xn17wQCnQr2wQdFHbmVsZWqGNbKiq4ZEZ2XESYR4E2Opse/jvWXP93qvdLVcA6B
	 icOQL/bjseDU0NXerrjiXWjG2q45SXHG1NLOSbONPJhcZy9WTzUoAUoTZ7/EaXZV3b
	 IduUciwyTxR0ZndXhG7aRlw3W4l0LJSr+p8MOdyZWpe5MsXfCnGK+h35LhrBg/cAsQ
	 I//AFOZrQRIirQV/L162mtY/5wji/mflxgq2Rc91eRw191dhXpnEkvOAkQUduppnT1
	 IgTrVJE334cnYdm6j3g7ld3GSL0SrqvtEVNJftoqZOU3sR6IOk3uRn49y0aZ4B2hPw
	 9lMvxa8Xvps7A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9128A1062896
	for <ddprobe@lists.linux.dev>; Wed, 11 Mar 2026 12:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177323369358.15464.6470686588175905445.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fffbc31cdfe7d93ac5e47d3793ce6836f19c349a4457a6f3b3f89fa203e9a5de
Date: Wed, 11 Mar 2026 12:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773233693
