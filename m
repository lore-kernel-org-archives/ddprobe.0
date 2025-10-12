Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2979C2571DD
	for <ddprobe@lists.linux.dev>; Sun, 12 Oct 2025 23:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760312994; cv=none; b=rg4r+mDoZyldr4SoPrcz01oIK6qzoUbUsFc2gD6mvRdYmOGo4DTrTKi/70nM3yv6fRWNkGgdVlObjtrMrygaI4vfIz9kKyHjje6jezWsBabJUDpVkaCh9LEXwy7qQ3ASoMERt9x0dxoa3J280CUE7kYx1OtkvXnmx9CMgAmRB8k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760312994; c=relaxed/simple;
	bh=MNVasXmGUN8jRu+ej4XnTJ5++EyS9111MOOshtatCoo=;
	h=To:Subject:From:Message-Id:Date; b=abVfNQIXpz2O/ocoqr5x7Lh3Xama3WY2mI3uKuevHrudwSHPVOTGFvyeXTAitB6vegUvHbkFY/18H/0e7BAViO3JOI6rGBfZfTwBGSct96I+4mZh1jyFOhc95xos8QDwAAstCKEIskrRci/gMBPsa77/4wLIPf5G45jK/KwJYuM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JjZjKo4m; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JjZjKo4m"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6DF5C4CEFE
	for <ddprobe@lists.linux.dev>; Sun, 12 Oct 2025 23:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760312993;
	bh=MNVasXmGUN8jRu+ej4XnTJ5++EyS9111MOOshtatCoo=;
	h=To:Subject:From:Date:From;
	b=JjZjKo4mojRBvlXVh59LN+A6EGBcbxzkGhWHsRrm+sA1ERYxENcOllzsS5deB8mn1
	 RSTem1OhRhtHPa8L3gPxwR8m6jMYtCACymV3pC6fv2Ikwg8osO39VoQ0WoMV3HNxW0
	 ObtfuXElQqLOq6+2FsVQBpqP+E4DWl5izAoZF5RuwXeU4e+qLE66GefRx3iJ37DgDU
	 LO5x6inWFRkEUKKhJEASOu8cPSsXwh0cvJ7ODAZz6GZCn5SKQakTo1yvz2Iz8qc1nb
	 5kGiA61AFLC1TZVneOlvRD2sBKQbYdr6FPlUm1bI7mqFT0KflJ+NG+4wGZcNSe9dhX
	 UR/EeR2h76QNg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91ED8CCD184
	for <ddprobe@lists.linux.dev>; Sun, 12 Oct 2025 23:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176031299357.13490.5260339182941750758.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7c305d0c711c5418ff447ee0d1faac1d07b2d82ada8de7751b068c057d4238ae
Date: Sun, 12 Oct 2025 23:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760312993
