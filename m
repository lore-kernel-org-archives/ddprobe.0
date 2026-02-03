Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C61D1DC985
	for <ddprobe@lists.linux.dev>; Tue,  3 Feb 2026 14:43:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770129834; cv=none; b=LPrrWQ7S4/+5mGzeH+cioSo5Jgb2yy4rDLJ7bwhT7bNAkdIfgAponAT/iyrKeu1MliDG3FXhQYstHVrQoYrdkukdI+Mktsqpy6dALt/umLACD8xs/4ru2o+OSxVOIbBC1G3Jph1P5YOyZAM7UO5BDTu3gCS37GyH/zJv2gbckPo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770129834; c=relaxed/simple;
	bh=rcLgnAZO1f0Qpkk/lpicMgjukIJFJ3DwUAMYs98LfhI=;
	h=To:Subject:From:Message-Id:Date; b=EGdB3cPoAzY7Jh1406RZyyA/y95WmPz3Eg0dIiJlCfmc0JVRDMGRRUvnOGowYsqyTrIFmfcX66BoPXHjyEtiOx8T2/TSv+2JIkNJtABX32CT7pyHPmPcHfX/f1Kf/Q1gslt2PRDe/JiVOZYOyyLNmDZa/HOir1Fw9zpqFHw/y44=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lEgOfutM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lEgOfutM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EE881C116D0
	for <ddprobe@lists.linux.dev>; Tue,  3 Feb 2026 14:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770129834;
	bh=rcLgnAZO1f0Qpkk/lpicMgjukIJFJ3DwUAMYs98LfhI=;
	h=To:Subject:From:Date:From;
	b=lEgOfutMvUZEWnFR7xrIlECvMov/01A+DMHeJn/VUP8GLBHg5aR7mw+4EkHpbSemG
	 NMm+F9UWPi+0389SH+F38G4ZEBHo3b4rmFnxEbKJ6tgLq2voKJ4sLqXdzH7e1k7Ddk
	 tpuglmz5bDuVvSIYC+y7et3tzrceZNTtuDjlWmQK2iVhL0Cm4UX6JgMuG2hbzQ42uN
	 On+LFI93XsQ6GHiJl6LrsWJ3AdGs1Cs4BiRe5z576A64grPjfJxiL4aDLkNdKFY8Xr
	 cSjQwA6q+IAhbF6gRC7BMNVBXt4LO+WyonEMIuzx2UVf11E7crRJ6bOSdX3fvUibuS
	 Mja96t1u5GRRg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C3181E87834
	for <ddprobe@lists.linux.dev>; Tue,  3 Feb 2026 14:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177012983375.24982.14231809595201210698.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: efeb350a4aef4e3eb8d5bffdf504b1e56eab98151e3b6779dd6921749a17d763
Date: Tue, 03 Feb 2026 14:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770129833
