Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5549B1DA5F
	for <ddprobe@lists.linux.dev>; Fri, 13 Dec 2024 21:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734125154; cv=none; b=J72iBi20n6HJfJXLkFmDUv76r/XtDgE5XSbWyj+gS0TCfMbE1LbNn3huO0EiVEyFit7C5gLEzGz6fn+TegzISRYPIvtW4ELWBuLLjPBjwk5FDQ1tmZHDpFI2RaE8qqzDne8lGztgHIy0ie6C0Yrb2JYKlBpyHkf9Z5r4eosaLOI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734125154; c=relaxed/simple;
	bh=Hgl8TYPchuFgdP5F+kFxMZz8em9gFnuhf4T492YjaGo=;
	h=To:Subject:From:Message-Id:Date; b=Qc+NYYZggNztKyNXYEQ/RCzewHy27/QLYQJ1iTsMUtnY9GmoSLzN1yO5/wI2YAgrfTQOFb3Po+PsyRzG3PTe4OWv1SD+Jmt4K3/rVIoZt99EPBNGUpHCWIeEBt/Mybfe9+AoWy5PRtWp6pBPAJQ7B6DyY2MJrwMhjX0tytpFRJ8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FfbIkEc9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FfbIkEc9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B73F2C4CED0
	for <ddprobe@lists.linux.dev>; Fri, 13 Dec 2024 21:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734125153;
	bh=Hgl8TYPchuFgdP5F+kFxMZz8em9gFnuhf4T492YjaGo=;
	h=To:Subject:From:Date:From;
	b=FfbIkEc9FytzHSZ31+M2/KQkn1yq5f+g3qZaoLILPuDIjY4GEvZFdcL/xIyUBBC8W
	 sJPnZa6zG/FBEL21p59K0nFkWR7DFWZUCfd4/rjQxniSM+KSgdQVu0rTc7bMnx8lqP
	 oPFALE5p7scCuxT6IjwOtHHo8O4X/awwZBk2LhHCS7JN3OUGotp/yhaP9l6Disbwle
	 5uW3RCYK8P1OimzER7RvGXKo5w/HJfjN15vf+cStiEcoPWqybf8cAqpgVcfQsw6tgD
	 xZyzoZ+c1vFZQz3htVHBZd55MikZWUqGu9NPL5RnyaOdGMnG385FzWK6BwiDI/XKRV
	 sDlw9FpAqLvSQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BA6CE7717F
	for <ddprobe@lists.linux.dev>; Fri, 13 Dec 2024 21:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173412515362.6934.8861583771646967928.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 68ca6fe02b4fedf49cf43b0a1e4170a749eaf176d71b73ced180e7a37d9cb9a8
Date: Fri, 13 Dec 2024 21:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734125153
