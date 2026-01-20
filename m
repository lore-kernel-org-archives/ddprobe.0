Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28E7D3AE703
	for <ddprobe@lists.linux.dev>; Tue, 20 Jan 2026 08:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768896234; cv=none; b=go2fX6zLI1wwgwacxgDTwgMlBHo3/GBdXme2ot00FHwFl/2XA4u074Is7IDlwS58X4C9PqmJYotO7hc0w/jvbCH9COQHQSQPywaci0kyLX3oOYMS3OmnGtWTA862G7PnmJM2yen5G5Uf2wvOQbjn3y47isgd/CRBrygXRUUapSM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768896234; c=relaxed/simple;
	bh=w/59ATVNsZfAl88mi2hhf38uPAnVBPs1t7LwmVdkGjk=;
	h=To:Subject:From:Message-Id:Date; b=XaUrHEzl0vuGcRm0H/UzRcHSZRjhiiCOzOFYSF98uzNAV9AhZvIE/TnAQAPIPuRuivr9KwpqQf0tusElYsvZ6TVhVulM0B5xRZ3l6Y23VUaDJSCiH7rY1CutrSjt+4epxtMt8oGdWrKgU4rfeJlrSfba/uCXGPrIhr/pAxWJOiA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iitqDe0/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iitqDe0/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7F6DC16AAE
	for <ddprobe@lists.linux.dev>; Tue, 20 Jan 2026 08:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768896233;
	bh=w/59ATVNsZfAl88mi2hhf38uPAnVBPs1t7LwmVdkGjk=;
	h=To:Subject:From:Date:From;
	b=iitqDe0/rnrlAiM4fEAofDALHBnXWHXL3LBtXRwNsq87B5kbQQOXEJVyiNwcisbwA
	 BNua+b5WStHjf9w+4E/vYA76q+NfgqedXnIjTZi2bT/jMAs63+5hgeXfYmGJbLJpb3
	 u1hFFYB42gPZWKnIAmppkhcigWvmFNR/6Zu5iBDRpLg3pAncgFW6HSITiorarqItDb
	 3faE7mfEgdV8WZZeOSldj+ych7RPfM60fBH/Kgx0dB4gW/HPtwfFbCOIVZP5Aclcxd
	 tzeXG0JzMc1Hy13fksI92/nMnUNyCUAZ2aXZuQ9/8IFFWD+0PiBSaMYP9hGOY2VTKv
	 GeQYelCcDDC6w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94F24D2ED0F
	for <ddprobe@lists.linux.dev>; Tue, 20 Jan 2026 08:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176889623359.2540.15977422056480054314.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f0b9657e44b904d85dea9dde399fafe6d2478811d0edaea8470ab5d9d1ca3f4d
Date: Tue, 20 Jan 2026 08:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768896233
