Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1AFAFAD5A
	for <ddprobe@lists.linux.dev>; Sat, 28 Mar 2026 03:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774668294; cv=none; b=BSxyRY1E/te4LW/0H653brby1VGIZryZyssIzAC69G/s5F897h47ATzBkFBraCk6p8fEKJEzmUKbcbiopyonqVVUpWTTj3hIw8X3nfaTCqZxOl7lDFiDVoOXiFDzkwTuOvqnaB598AaTLSI0hdoY05YvwuBQJMLVb7HeLQ/yVjc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774668294; c=relaxed/simple;
	bh=P9SvgwBG9QUgwoO8oxWZ2toUt0BZwtmrrm75to9XrvQ=;
	h=To:Subject:From:Message-Id:Date; b=FQibAq+v4NU+QLFod2L5lacmBXzdXkAijP+NsJJ/BoH+P4pa55bLhrTeso/+NJJwA8Ka0EQZtSVv6BzzFWJCyCwlOpSWbpadlJkg6NYbU/38ORE1/A7JmX3TUExteYYUuhepBYYaVaZNvBYnW4mhwEoR43SDFpFkudAoQU3qkFU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HiEHhVJG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HiEHhVJG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9921C19423
	for <ddprobe@lists.linux.dev>; Sat, 28 Mar 2026 03:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774668293;
	bh=P9SvgwBG9QUgwoO8oxWZ2toUt0BZwtmrrm75to9XrvQ=;
	h=To:Subject:From:Date:From;
	b=HiEHhVJGUxlcGewNCiGH5gt+sFj9rmC6DbGnf+yRHl6VmxCL/nk6xEvRozxghk304
	 QVV+hMmhzlahS3Fs9en9rytkcoAPjyE4fdCCJSGWISJfBf3ww8lVqf3xevfaERIRZH
	 VvTDoCZq7UgMgjVe508sGMmSc57RIaaScooYBZSPTafjSwVRpvRye6+uXTZUPmzx48
	 UMdxTK8prdM6ziKbpPjd0u+ib3iLMuRddPmet9tehcvD+X3By7g0d8a6xq1i4gm/EK
	 ZV0SkxMN8lvO884MAE4c6ILHsOUkY/nQJeLx2KR+bu11KOigfA4OHc8QWUiQ0Icv/y
	 Nw61jrCam7kEQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 947E810F3DCA
	for <ddprobe@lists.linux.dev>; Sat, 28 Mar 2026 03:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177466829358.7718.4126152306408403101.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3246dfe6e64eeac054b9fdc1b3ad48d7a9e4eab004c2ae416d2e4beb2fd552f1
Date: Sat, 28 Mar 2026 03:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774668293
