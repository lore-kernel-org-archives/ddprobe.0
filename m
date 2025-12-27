Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 412AF266B72
	for <ddprobe@lists.linux.dev>; Sat, 27 Dec 2025 12:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766840034; cv=none; b=uMvPIMa01LQrwyOLN5G5w8ZlzcP3+OjEW2d0+uHO8LOthXjyw4yR+u2ICpSeJWcf2gVMb7DcLmmK2uEdZ7V3FU092DzGZObZHkx9vTECRtzh4U1layVxX+np9Zzvntfl1SVBHABFk48/+K8akA+jzcE2ZAJdrUs4NFMOpc1q12I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766840034; c=relaxed/simple;
	bh=V/WtnSuMzrGgbrc5b/bmok1/jEjXCw/2x7qk80wC1e8=;
	h=To:Subject:From:Message-Id:Date; b=p1cyNCNri99tz3g/i2odtWm0CyYiXyTQt71OMJolBxqNcMrs5RCIt78k/KvUAKy3bsO+CSuYQx9Spu8tTvretB+1C+k6BVcfEPq9Mg+WD5o6Hhj1yJW1YSXUXmI2yzhQnqRRKMJFgbOzKKOa1RqBVa4tU8IzeyvvUQCgTvlcS0A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pV/3uzPc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pV/3uzPc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4E56C4CEF1
	for <ddprobe@lists.linux.dev>; Sat, 27 Dec 2025 12:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766840033;
	bh=V/WtnSuMzrGgbrc5b/bmok1/jEjXCw/2x7qk80wC1e8=;
	h=To:Subject:From:Date:From;
	b=pV/3uzPcptC8r0RqIL2DKDblwJoUWXFdiBLCTyhGB9zKkUsZJ6X5dmF1hPVQv7TRp
	 fT9ZQc9lqXnABfBSMNPZxnLArfaPKvBv9xcAUweF6eSw+sN0mPZYYj8Vp2rtfdNOI8
	 nrJohzT2APQ57Omgtw6dUAhYzM9hOZezzXmfPERecPmueH5N9RD/ob4xEWKIZQC0Vn
	 zykDiZs6yIkgeN/wDtGNtQI4uwa+03cGbskTmVw60oboUbBNoPbwOBtmbhj9VuwGOC
	 NIXf6LnggBP2B8ZnMXGH2/lRJiOYa8PZyHo3iNZ/pRVdilZy0A+dkbUJQvcqhXlh4r
	 DkDqC/HVhNIag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A4517E92704
	for <ddprobe@lists.linux.dev>; Sat, 27 Dec 2025 12:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176684003363.5005.5330400596585548428.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: acd918d1d973105a234bc7ae98a063a2a3a485d13cf3d7202a8a28499e935f33
Date: Sat, 27 Dec 2025 12:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766840033
