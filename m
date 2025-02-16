Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49C8319ABC2
	for <ddprobe@lists.linux.dev>; Sun, 16 Feb 2025 19:08:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739732934; cv=none; b=PQU/f354Y0dIs6EVrXTPpKetC6gL2XeqP+eUOAyaa1LoSal67zOv7UYe5T5IBu4278YfbaVYy8LV7yahfC9Beuf/u01UHK+LVFQ5lf/Vx8qNzQk+DMP4V7giPf/iTUV9Um7X2X1KxqIweGdqpXlLuvydSgNS+vzQSipilsScvkU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739732934; c=relaxed/simple;
	bh=k9N3ebL4g9n6lDm1+ID0Yrx7frCWKgk25IkcrpWP8q0=;
	h=To:Subject:From:Message-Id:Date; b=QnCx4jBNL9b8X2G1PQaxB+IjEmmB18Dhrl+TIqmx9MELwELO9Bl54Wvdxg9uMCIUlf2fw8Ia4MosMH+JCOTX/z+hoYVYxYxai0/TWW4zQy7BYpMEkJKiS5SQcDEoBQHuIAe7prUXjY1+aWhv1d0gbdyqGZ28rPm0AWv+nFhQ4gI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lUsJl8Nw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lUsJl8Nw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A75E6C4CEDD
	for <ddprobe@lists.linux.dev>; Sun, 16 Feb 2025 19:08:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739732933;
	bh=k9N3ebL4g9n6lDm1+ID0Yrx7frCWKgk25IkcrpWP8q0=;
	h=To:Subject:From:Date:From;
	b=lUsJl8NwDgdnX/CljlHXTSeeGXTWDA+f22wAR1ph5O3yLjxYrvGGEAfXsnrozM4gt
	 FB5wfph9NCj6uQ4ALdJbuD1Z3Y+lhbHTG2as46IGXvoiAaHIhc80utwD1uzmDx0oBK
	 BiVHR8jNRuXlviqav46rAu7fHvD35dynqVdwPHwaMHpegbfSGgI2ghoPi2l/bFrafa
	 y801sBOnarnvXW3Qy6B1HdDWqDk9ZhBg8NvSEJq0Vu/DiyxBP8+PnxWPwWpDNZa64c
	 lKWOHHbyHHSVQBXWcBjIj6mHQW1E9KfJQJRFesWTBmq4bPKrpPEjcl/4IJ0cfUcxan
	 Yj9aFzjUOfoNg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93475C02198
	for <ddprobe@lists.linux.dev>; Sun, 16 Feb 2025 19:08:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173973293358.7691.4904511065172497108.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 97b247aa3e9722c72744f9bdb3bc397c07d9bffc669ef53229f0c55fa54cd4f4
Date: Sun, 16 Feb 2025 19:08:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739732933
