Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E594F2AD35
	for <ddprobe@lists.linux.dev>; Mon, 30 Mar 2026 21:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774906494; cv=none; b=aSnO41EoStcUURiKQsKa0bze0KH7VgPRfCw71XwE0nQquULWSdseK+rO/Od7Rtth52rp9M8HZ5ibKiXXEG3YO17bbcGBhFSnbZjZjGCwX/kWNICiSreMgKhQHUp/yzb2Ui32NKZDAM+PBTsRS+wfQ+TprCKHYGpQlBdYTdXjVLM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774906494; c=relaxed/simple;
	bh=6BaIzCGXkHeDzmS880qj0hVU/mFmImgKNI8wdKGWFPs=;
	h=To:Subject:From:Message-Id:Date; b=doI8OnLJQcbcxZtTNzPQ9Jdh64niGatY7R+USypeN70qrsUti7VDtZlGH9Ko4Hp0tKVHXCMkvxmNXGf5SuRCNk5jsYGT/kytDSA+wzzIkBJx+o5u8QzKurpHX888GRVgMy40U59aGpUGzdYMmpVh9ZsLGofA8SOFlMKjj2kNxds=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sBoL23eH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sBoL23eH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A621BC4CEF7
	for <ddprobe@lists.linux.dev>; Mon, 30 Mar 2026 21:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774906493;
	bh=6BaIzCGXkHeDzmS880qj0hVU/mFmImgKNI8wdKGWFPs=;
	h=To:Subject:From:Date:From;
	b=sBoL23eH7Tt6aSWDaWKO5D3Tg+oUdtLrae+btvCJf2dIO07PVcA+088t4EGFNUgz3
	 4QaUZFb/pe5PdVApDzxk9mXqKBHWQrULV8y1fWz1pnGLp5dOJ6Dt1ca79/KN02thYw
	 uiGQJT6dQhu0lnt25OoqkG+Y5aBZN9oM8mPX/JtQYDrMNDnkEVAdOST3I/oBANlQxp
	 IJPmDHHX96NiIRK9t0zM3Rd5mSYC1x9otzB9zohDMgn328N8/n8Ze2vrzXizAic6QV
	 qtytICAgXX7XS5S7gOntEfel5f9We2HPTI4uPMfYxsh1VVNgxaGqIWa0kOvR+ADUWr
	 m+R8lB69TwakQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 930091061B24
	for <ddprobe@lists.linux.dev>; Mon, 30 Mar 2026 21:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177490649359.23584.14975160268218651443.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d95e0b4ca0f39e4b5dd9297c88e85935e1ee93350791d566faf7bcc13d8bb372
Date: Mon, 30 Mar 2026 21:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774906493
