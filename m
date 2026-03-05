Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0108E20B22
	for <ddprobe@lists.linux.dev>; Thu,  5 Mar 2026 13:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772718294; cv=none; b=luksaBllDkIx93udeblzBHhH1we/XgJqvjkl8MCnD5per5gkMFu9UU65tEMXqnAEENiVxpVDFG6PeCZaYBT/1rOHLMyyrlFmspCH+kh7io2eyeoVdKjZ6lf4zOMyS3FidpE0fIxLHAhMI+NUFt+iCYaxhtt42MpgoNK4FBMIVj0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772718294; c=relaxed/simple;
	bh=hchkQ32vpnIYk2LzNeSI4+SaoHua250erTfc+dav+hM=;
	h=To:Subject:From:Message-Id:Date; b=TflAYi+gHzR3Y0ikxq/d9851RY9j8JyDiLa17+4TZxaGuDL12MKye3npHO+Zagpkaf2rf6mvKuxt8T/FfnchlYAX8jqOr4a9kpsNlf6m+BT63BX4pKF4WRinPCqS2GcUFPwlw7TgcPCqAR1OLeFgzK+MRevsnobRrfFlLXxj11U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HIlDTbfQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HIlDTbfQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE110C116C6
	for <ddprobe@lists.linux.dev>; Thu,  5 Mar 2026 13:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772718293;
	bh=hchkQ32vpnIYk2LzNeSI4+SaoHua250erTfc+dav+hM=;
	h=To:Subject:From:Date:From;
	b=HIlDTbfQAynfcrV2euLEInKPPG3RyLHoHjvA7xJzk1Vy0PP2GCDu+dZPb3mKfmUru
	 VJnqyS46SHb3l904BXSVtHKYufnC7j950/V3nvRoeUgDyyo0rx6+pcEfGhzZ7Q+bc9
	 WxChzorITS9DVVBM3rSLA81A5ekgqRaw84KeAhdqiqUBzKg/YLmU80e75jN/S8HrKW
	 h/lMx8MdYo88OmfjNqQQ65tT4ikUi8tIfxjQYn3jWJ6e8qH5eetjffjNoGLkRSQenZ
	 waROOUN37ZNImh5ePASQYt3l+8+VrTHVTCL+c7uYOjIjQgEu+I+wLojlx4NwtVJSNK
	 3pWd93nrvo3Wg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BA45EF8FE4
	for <ddprobe@lists.linux.dev>; Thu,  5 Mar 2026 13:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177271829362.14996.5135823405917301278.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 33f3ff83da2bf00a8ca8af8551bc78a1a2b2b04dbffbfcdb2b2ba1c362645bc9
Date: Thu, 05 Mar 2026 13:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772718293
