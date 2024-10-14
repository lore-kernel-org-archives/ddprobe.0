Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 527B72E400
	for <ddprobe@lists.linux.dev>; Mon, 14 Oct 2024 05:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728884754; cv=none; b=WQ1F0QJygX3191oW3HseeodxA/qN6EWl1rJRNt+xGb0VSjm/09vp5tNSohMBYdq+y4qwQ/m5pPp+EpuRen+Spw28VWcgwU+t/+rKJzmdCMAgA9+0hGn/imD0NYP6AxINzoLnFl/LXE2NzEy+MWTQQ90nU9a7MNRUmBbORr+ch60=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728884754; c=relaxed/simple;
	bh=5bEYrF9dhBf6WOWFMSpplhNiofwDbatJVp1E/+y1KAQ=;
	h=To:Subject:From:Message-Id:Date; b=Oz234UB+HL0GNWQKiYJ5W35Gg6LHduC7037oOmk0cbPT06ADWDLX+MqNwi1LOfcKQ0Fcld8sx3uxeNFT3MsfMk8hVtV1PN2YCRRPoAjJkrKXrkUCzIp38Dd4Jpq8Ko60HMC7ncNBTOv+xSUQ3x8Thsbq4DFFUHdz+mxtVwfWB+E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lKUlt2VR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lKUlt2VR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACA3EC4CEC3
	for <ddprobe@lists.linux.dev>; Mon, 14 Oct 2024 05:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728884753;
	bh=5bEYrF9dhBf6WOWFMSpplhNiofwDbatJVp1E/+y1KAQ=;
	h=To:Subject:From:Date:From;
	b=lKUlt2VRFsrgL+6x32vWdniyube8PVgi2srAmO9/UYPtxumvcErutogjcf8uAkgmP
	 S8uhH7mheCWzTSVr7uL8iZA6qCcnifG+I2Sjq974tZZucH7691ShPuvqdeOg0kh4jy
	 9H7PrSMmn2x/WCmLpWl7OWcVNlXO+WjWRW5at9Q1VZAd8bu0aR+mSrnGZmPingGVYP
	 cWINYofyMOSezNJKzKtOH0TUKxXi2RFpprmKyP4y5+L6HWAQj7oyuns8U8/IgUrGjo
	 QHOMMFlB8gOI4brvMNjDnEuraQ8JxlJrcExpv6V01mdK2/E4d274SXBOCJ5X5+KCEH
	 +hlA678+a3fmg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 990D6CF2590
	for <ddprobe@lists.linux.dev>; Mon, 14 Oct 2024 05:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172888475359.20855.1801876656734524902.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b5e0db525bcff301d43b87942dac0dc5f07ab84cd6ade4f34e556d4f60095225
Date: Mon, 14 Oct 2024 05:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728884753
