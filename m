Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C184166F16
	for <ddprobe@lists.linux.dev>; Sat,  5 Oct 2024 21:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728164154; cv=none; b=PaWZzmuI5TLyZ12ewnzQaTZ15IeAHNWVOa6a0hgdP7mtT3H7gB2MN2V/qp7LKSGFHJn2+Hcbgb0HqfU6eoxH81oQ+iUWStf+1LhL8AGofjm8LGJRGq3WvS0La7ztNfNm7ikO98rbxZ1oNE6yMXSTUi2mw+RJhVGZpoSKQKk8gqw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728164154; c=relaxed/simple;
	bh=Y48T6KJLtecVPPwBCVBJ2AAdL1EgrH6PIZcMNj8ExKc=;
	h=To:Subject:From:Message-Id:Date; b=W3cPs+in5LJVeXIDGAp6+axZWntDJZElTHomu+WChADA33KCtrPtaiUAqlzShBxHofL3Jc4WIX4UO9xydRjiqzUW+pfOXaH5nCsrDnzVS5nkvc49JEofB9tjoNS6xHIWO8VILr0zkQptKD2f5SFllq9VgA6rCNLpmEz5Qdk4Pfg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KpuGXrJh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KpuGXrJh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A776DC4CECC
	for <ddprobe@lists.linux.dev>; Sat,  5 Oct 2024 21:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728164153;
	bh=Y48T6KJLtecVPPwBCVBJ2AAdL1EgrH6PIZcMNj8ExKc=;
	h=To:Subject:From:Date:From;
	b=KpuGXrJhu+78C6lTchLU/wLGtHqySFzhuo+CLPRyXvJBpkT9LKXAzXxP/hUVoyY+Q
	 jqwp1APpespF6NXZPUVlYAWc/PYxf5N07wDSnI2fbQ+qOl5WiGSRyIaZa+EMwQz4eZ
	 /9ZSAkTl6+6VSuV9+VYtv68ygeW70X4HK3c4R+RX5wxGzlnyASd4WWGchCqs8IM73v
	 WetF5hGDELxs2RENeltsPpvu6uCiNii7Y06/9espSVmGlhqbDfPqArimDy1jCRlQpm
	 PjNuTFOSjnh7VS1G+Z6p+iK11EU4ic0DvghkZyKB2ekmgxutt0xSAjp6LnVh+arfSB
	 Tp0FKtddun5eQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9503CCFB43F
	for <ddprobe@lists.linux.dev>; Sat,  5 Oct 2024 21:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172816415358.16025.3653808555242491045.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9eb58f58cc122296485b37a2e08e5326733999585d818eae6a4994c42603fd1c
Date: Sat, 05 Oct 2024 21:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728164153
