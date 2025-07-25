Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30D57254877
	for <ddprobe@lists.linux.dev>; Fri, 25 Jul 2025 19:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753470595; cv=none; b=aws1Tr5mp48j1maVKdkVRMUfW0qEGNZhtTsRHtcwBT7IAOWYjge/hQnElm0SH+QwkBFbFX353kXojTnj31eqALwIHdFSghT9rrFLsNYGimpkB6BW6sD3kSNJNBcSVEWDj630+xtsO8UQkMvckTtKF6tBPEjP6yiwKRPrtyZDUaE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753470595; c=relaxed/simple;
	bh=RDAd4d6ScErutmNXo/EVb6H9kSRFWdUgL+L3uwJGe9A=;
	h=To:Subject:From:Message-Id:Date; b=qczqJwxbVjDAvTsfYjwAz7EpVz+KxlmgmVTfnXflejSbNXmstfIRph7TemweBShXKhZbzO6Vm2bx/z8LJgeDeXF+zW59S5UJ7eDqA1SWnNuLKi+VtiNDfKeCltnaSQGR2EbHoZaEw8iMKe1ZO33DNuc2oNpgmWIli4ll/NvwqGU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Tnysa8I7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Tnysa8I7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A117FC4CEEF
	for <ddprobe@lists.linux.dev>; Fri, 25 Jul 2025 19:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753470593;
	bh=RDAd4d6ScErutmNXo/EVb6H9kSRFWdUgL+L3uwJGe9A=;
	h=To:Subject:From:Date:From;
	b=Tnysa8I7Jf4mOVmklpoyoZ5ne4fMnzx8N6k9CvBJ2xjkDyfxMrP6/Wf+ia21dkeqO
	 X3UnK2OtCRVimfOAa8RfCG2WIGWW7osAykQxqky64LdEJk/oSGzyujdnADkVDSWtcp
	 nDu4fJslJbsIxlBl31d6PTGOfRU8YmuJNBtSKkcwphYg/kP6PQGUDudt61mUH38WJt
	 LjM6Ieg6aONp1vcq5JVho7u6ov93m/dAJpYwoUw7eE438D3hrOlT4o7egJG0nMUsFN
	 jgnSSb85wCBMoO+zqF7IAS5RcHgxpz5Ou01j7NFx7dbYY8AZo/J2qRk/gd6WOMsk2+
	 D8digfNgDRJyQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 929F9C87FCE
	for <ddprobe@lists.linux.dev>; Fri, 25 Jul 2025 19:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175347059359.14884.11965367401856651702.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9e14e151deea3a2d3d8c592d7e7e6c6bd494430a5ee8b060a908936575a15cc5
Date: Fri, 25 Jul 2025 19:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753470593
